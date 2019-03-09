using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tutor_Website;
public partial class AddTutor : System.Web.UI.Page
{
    static ITutor t = new Tutor();
    DBOperations db = new DBOperations();
    AdminDBOperations adb = new AdminDBOperations();
    List<ITutor> tl = new List<ITutor>();
    static int count = 0;
    static string newloc = "Not Available", newsub = "Not Available", newstd = "Not Available", newlm = "Not Available",newtype="Not Available";
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (!IsPostBack)
        {
            DDFill();
            DDsub.Items.Add(new ListItem("Not Available"));
            DDLoc.Items.Add(new ListItem("Not Available"));
            DDstd.Items.Add(new ListItem("Not Available"));
            DDType.Items.Add(new ListItem("Not Available"));
            DDType.Items.Insert(0, new ListItem("--Select--"));
            DDsub.Items.Insert(0, new ListItem("--SELECT--"));
            DDstd.Items.Insert(0, new ListItem("--SELECT--"));
            DDLoc.Items.Insert(0, new ListItem("--SELECT--"));          
            filldatalist();
        }
       
    }

    protected void DDFill()
    {
        DataTable dt1, dt2, dt3, dt4;
        SqlConnection con = new SqlConnection("DATA SOURCE=GOVINDSUPERCOMP;INITIAL CATALOG=Tutor;Integrated Security=True;");
        SqlCommand com = new SqlCommand();
        try
        {
            con.Open();
            string sqlStatement;
            sqlStatement = "SELECT DISTINCT [typename] FROM [typeofTutor]";
            SqlCommand sqlCmd = new SqlCommand(sqlStatement, con);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
            dt1 = new DataTable();
            sqlDa.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                DDType.DataSource = dt1;
                DDType.DataBind();
            }

            sqlStatement = "SELECT DISTINCT [subname] FROM [subject]";
            sqlCmd = new SqlCommand(sqlStatement, con);
            sqlDa = new SqlDataAdapter(sqlCmd);
            dt3 = new DataTable();
            sqlDa.Fill(dt3);
            if (dt3.Rows.Count > 0)
            {
                DDsub.DataSource = dt3;
                DDsub.DataBind();
            }

            sqlStatement = "SELECT DISTINCT [stdname] FROM [standard]";
            sqlCmd = new SqlCommand(sqlStatement, con);
            sqlDa = new SqlDataAdapter(sqlCmd);
            dt2 = new DataTable();
            sqlDa.Fill(dt2);
            if (dt2.Rows.Count > 0)
            {
                DDstd.DataSource = dt2;
                DDstd.DataBind();
            }
            sqlStatement = "SELECT DISTINCT [locname] FROM [location]";
            sqlCmd = new SqlCommand(sqlStatement, con);
            dt4 = new DataTable();
            sqlDa = new SqlDataAdapter(sqlCmd);
            sqlDa.Fill(dt4);
            if (dt4.Rows.Count > 0)
            {
                DDLoc.DataSource = dt4;
                DDLoc.DataBind();
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "No Data Found To display in the DropDown List";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            con.Close();
        }
    }
    protected void DDLoc_SelectedIndexChanged(object sender, EventArgs e)
    {
        t.loc = DDLoc.SelectedValue;
        DataTable dt5 = new DataTable();
        if (DDLoc.SelectedValue.Equals("Not Available"))
        {
            DDlmark.Items.Clear();
            DDlmark.DataSource = dt5;
            DDlmark.DataBind();
            TextBox_location.Visible = true;
            TextBox_landmark.Visible = true;
            TextBox_newLat.Visible = true;
            TextBox_newLong.Visible = true;
        }
        else
        {
            TextBox_location.Visible = false;
            TextBox_landmark.Visible = false;
            DDlmark.Items.Clear();
            DDlmark.DataSource = dt5;
            DDlmark.DataBind();
            SqlConnection con = new SqlConnection("DATA SOURCE=GOVINDSUPERCOMP;INITIAL CATALOG=Tutor;Integrated Security=True;");
            SqlCommand com = new SqlCommand();
            try
            {
                con.Open();
                string sqlStatement;
                sqlStatement = "SELECT DISTINCT landmark.lmname FROM landmark INNER JOIN location ON landmark.locid=location.locid WHERE location.locname='" + t.loc + "'";
                SqlCommand sqlCmd = new SqlCommand(sqlStatement, con);
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
                sqlDa.Fill(dt5);
                if (dt5.Rows.Count > 0)
                {
                    DDlmark.DataSource = dt5;
                    DDlmark.DataBind();
                }
                DDlmark.Items.Add(new ListItem("Not Available"));
                DDlmark.Items.Insert(0, new ListItem("--SELECT--"));
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "No Data Found To display in the DropDown List";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }
    }

    protected void DL_ItemCommand(object source, DataListCommandEventArgs e)

    {
        int reqnum = Convert.ToInt16(e.CommandArgument.ToString());
        if (e.CommandName == "select")
        {
            TutorDetails_div.Visible = true;
            t=adb.selafromApptutor(reqnum);
            TextBox_Name.Text = t.name;
            TextBox_Age.Text = t.age+"";
            TextBox_AlmaMater.Text = t.alma;
            TextBox_Experience.Text = t.exp+"";
            TextBox_gender.Text = t.g + "";
            TextBox_Fee.Text = t.fee + "";
            TextBox_MobileNo.Text = t.mob;
            TextBox_EmailId.Text = t.eid;
            TextBox_tlat.Text = t.tlat + "";
            TextBox_tlon.Text = t.tlong + "";
        }
        if (e.CommandName == "delete")
        {
            adb.delete("ApplicantTutor","requestnum",reqnum);
            filldatalist();
        }

    } 

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DDType_SelectedIndexChanged(object sender, EventArgs e)
    {
        t.type = DDType.SelectedValue;
        if(DDType.SelectedValue.Equals("Not Available"))
        {
            TextBox_type.Visible = true;
        }
        else
        {
            newtype="Not Available";
            TextBox_type.Visible = false;
        }
    }

    protected void DDsub_SelectedIndexChanged(object sender, EventArgs e)
    {
        t.sub = DDsub.SelectedValue;
        if (DDsub.SelectedValue.Equals("Not Available"))
        {
            TextBox_subject.Visible = true;
        }
        else
        {
            newsub= "Not Available";
            TextBox_subject.Visible = false;
        }
    }

    protected void DDstd_SelectedIndexChanged(object sender, EventArgs e)
    {
        t.std = DDstd.SelectedValue;
        if (DDstd.SelectedValue.Equals("Not Available"))
        {
            TextBox_standard.Visible = true;
        }
        else
        {
            newstd = "Not Available";
            TextBox_standard.Visible = false;
        }
    }

    protected void DDlmark_SelectedIndexChanged(object sender, EventArgs e)
    {
        t.lm = DDlmark.SelectedValue;
        if (DDlmark.SelectedValue.Equals("Not Available"))
        {
            TextBox_landmark.Visible = true;
            TextBox_newLat.Visible = true;
            TextBox_newLong.Visible = true;
        }
        else
        {
            newlm = "Not Available";
            TextBox_landmark.Visible = false;
            TextBox_newLat.Visible = false;
            TextBox_newLong.Visible = false;
        }
    }

    protected void AddmoreTeachingDetails_Click(object sender, EventArgs e)
    {
        count++;
        if (count <= 3)
        { 
            if(DDType.SelectedValue.Equals("Not Available"))
            {
                newtype = TextBox_type.Text;
            }

            if (DDstd.SelectedValue.Equals("Not Available"))
            {
                newstd = TextBox_standard.Text;
            }
            if (DDsub.SelectedValue.Equals("Not Available"))
            {
                newsub = TextBox_subject.Text;
            }
            if (DDLoc.SelectedValue.Equals("Not Available"))
            {
                newloc = TextBox_location.Text;
            }
            if (DDlmark.SelectedValue.Equals("Not Available"))
            {
                newlm = TextBox_landmark.Text;
                t.lmlat = Convert.ToDouble(TextBox_newLat.Text);
                t.lmlong = Convert.ToDouble(TextBox_newLong.Text);
            }
            adb.addTeaching(t, newstd, newsub, newloc, newlm,newtype);
        }
        else
        {
            TeachingDetails_div.Visible = false;
        }

    }
    protected void SubmitDetails(object sender, EventArgs e)
    {
        t.name = TextBox_Name.Text;
        t.age = int.Parse(TextBox_Age.Text);
        t.exp = int.Parse(TextBox_Experience.Text);
        t.fee = int.Parse(TextBox_Fee.Text);
        t.alma = TextBox_AlmaMater.Text;
        t.eid = TextBox_EmailId.Text;
        t.mob = TextBox_MobileNo.Text;
        t.tlat = double.Parse(TextBox_tlat.Text);
        t.tlong = double.Parse(TextBox_tlon.Text);
        t.id = adb.addTutor(t);
        TeachingDetails_div.Visible = true;
        TutorDetails_div.Visible = false;
    }
    protected void AddNewTutor_Click(object sender, EventArgs e)
    {
        TeachingDetails_div.Visible = false;
    }
    protected void filldatalist()
    {
        tl = adb.selectfromApptutor();
        DLAppTutor.DataSource = tl;
        DLAppTutor.DataBind();
    }
}
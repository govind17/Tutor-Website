using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tutor_Website;
public partial class Be_a_Tutor : System.Web.UI.Page
{
    static private ITutor t = new Tutor();
    static DBOperations db = new DBOperations();
    static private string teachingstr1, teachingstr2, teachingstr3,pass;
    static private int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            DDFill();
            teachingstr1 = null;
            teachingstr2 = null;
            teachingstr3 = null;
            DDsub.Items.Add( new ListItem("Not Available"));
            DDLoc.Items.Add( new ListItem("Not Available"));
            DDstd.Items.Add( new ListItem("Not Available"));
            DDsub.Items.Insert(0, new ListItem("--SELECT--",""));
            DDstd.Items.Insert(0, new ListItem("--SELECT--", ""));
            DDLoc.Items.Insert(0, new ListItem("--SELECT--", ""));         
        }
        if (IsPostBack)
        {
            if (!(String.IsNullOrEmpty(Password.Text.Trim())))
            {
                Password.Attributes["value"] = Password.Text;
            }
            if (!(String.IsNullOrEmpty(ConfirmPass.Text.Trim())))
            {
                ConfirmPass.Attributes["value"] = ConfirmPass.Text;
            }
        }
    }
    private void DDFill()
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
        if (t.loc.Equals("Not Available"))
        {
            DDlmark.Items.Clear();
            DDlmark.DataSource = dt5;
            DDlmark.DataBind();
            TextBox_location.Visible = true;
            TextBox_landmark.Visible = true;
            TextBox_Pincode.Visible = true;
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
                DDlmark.Items.Insert(0, new ListItem("--SELECT--", ""));
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
    protected void DDstd_SelectedIndexChanged(object sender, EventArgs e)
    {
        t.std = DDstd.SelectedValue;
        if(t.std.Equals("Not Available"))
        {
            TextBox_standard.Visible=true;
        }
        else
        {
            TextBox_standard.Visible = false;
        }
    }
    protected void DDType_SelectedIndexChanged(object sender, EventArgs e)
    {
        t.type = DDType.SelectedValue;
    }
    protected void DDsub_SelectedIndexChanged(object sender, EventArgs e)
    {
        t.sub = DDsub.SelectedValue;
        if (t.sub.Equals("Not Available"))
        {
            TextBox_subject.Visible = true;
        }
        else
        {
            TextBox_subject.Visible = false;
        }
    }
    protected void DDlmark_SelectedIndexChanged(object sender, EventArgs e)
    {
        t.lm = DDlmark.SelectedValue;
        if (DDlmark.SelectedValue.Equals("Not Available"))
        {
            TextBox_landmark.Visible = true;
        }
        else
        {
            TextBox_landmark.Visible = false;
        }
    }


    protected void Submit_Click(object sender, EventArgs e)
    {
        if (Password.Text.Equals(ConfirmPass.Text) && !Password.Text.Equals(null))
        {
            passmatch.Text = "";
            pass = Password.Text;
            formteachingstring();
            t.name = TextBox_Name.Text;
            t.age = int.Parse(TextBox_Age.Text);
            t.exp = int.Parse(TextBox_Experience.Text);
            t.fee = int.Parse(TextBox_Fee.Text);
            t.alma = TextBox_AlmaMater.Text;
            t.eid = TextBox_EmailId.Text;
            t.mob = TextBox_MobileNo.Text;
            t.tlat = double.Parse(TextBox_tlat.Text);
            t.tlong = double.Parse(TextBox_tlon.Text);
            db.beTutordetails(t, teachingstr1, teachingstr2, teachingstr3, pass);
            count = 0;
            DDsub.SelectedIndex = 0;
            DDType.SelectedIndex = 0;
            DDLoc.SelectedIndex = 0;
            DDlmark.SelectedIndex = 0;
        }
        else
        {
            passmatch.Text = "Password doesn't match";
            ConfirmPass.Text = "";
        }
    }

    protected void AddmoreTeachingDetails_Click(object sender, EventArgs e)
    {
        formteachingstring();
        TextBox_subject.Visible = false;
        TextBox_landmark.Visible = false;
        TextBox_standard.Visible = false;
        TextBox_location.Visible = false;
        TextBox_Pincode.Visible = false;
    }

    private void formteachingstring()
    {
        count++;
        if (count <= 3)
        {

            if (DDstd.SelectedValue.Equals("Not Available"))
            {
                t.std = TextBox_standard.Text;
            }
            if (DDsub.SelectedValue.Equals("Not Available"))
            {
                t.sub = TextBox_subject.Text;
            }
            if (DDLoc.SelectedValue.Equals("Not Available"))
            {
                t.loc = TextBox_location.Text;
                t.pin =TextBox_Pincode.Text;
            }
            if (DDlmark.SelectedValue.Equals("Not Available"))
            {
                t.lm = TextBox_landmark.Text;
            }
            switch (count)
            {
                case 1:
                    teachingstr1 = t.setteachingstr();
                    break;
                case 2:
                    teachingstr2 = t.setteachingstr();
                    break;
                case 3:
                    teachingstr3 = t.setteachingstr();
                    break;
            }
        }
    }

    protected void RB_Gender_SelectedIndexChanged(object sender, EventArgs e)
    {
        t.g =char.Parse(RB_Gender.SelectedItem.Value.ToString());
      
    }
}
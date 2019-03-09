using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using Tutor_Website;
public partial class FindTutor : System.Web.UI.Page
{
    static string type = "Any", sub = "Any", std = "Any", loc = "Any", lm = "Any";
    static int id;
    static string timing, st_date, teaching_days,yr;
    DBOperations db;
    List<ITutor> tutorlist;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DDFill();
            DropDownList.Items.Insert(0, new ListItem("Any"));
            DropDownList1.Items.Insert(0, new ListItem("Any"));
            DropDownList2.Items.Insert(0, new ListItem("Any"));
            DropDownList3.Items.Insert(0, new ListItem("Any"));
            tutorlist = new List<ITutor>();
            type = "Any";
            sub = "Any";
            std = "Any";
            loc = "Any";
            lm = "Any";
            id = 0;
            timing = "";
            st_date = "";
            teaching_days = "";
            yr = "";
            db = new DBOperations();
            fillDatalistandgmaps();
        }
        Page.MaintainScrollPositionOnPostBack = true;
        tutorlist = new List<ITutor>();
        db = new DBOperations();
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
                DropDownList.DataSource = dt1;
                DropDownList.DataBind();
            }
            sqlStatement = "SELECT DISTINCT [stdname] FROM [standard]"; 
            sqlCmd = new SqlCommand(sqlStatement, con);
            sqlDa = new SqlDataAdapter(sqlCmd);
            dt2 = new DataTable();
            sqlDa.Fill(dt2);
            if (dt2.Rows.Count > 0)
            {
                DropDownList1.DataSource = dt2;
                DropDownList1.DataBind();
            }
            sqlStatement = "SELECT DISTINCT [subname] FROM [subject]";
            sqlCmd = new SqlCommand(sqlStatement, con);
            sqlDa = new SqlDataAdapter(sqlCmd);
            dt3 = new DataTable();
            sqlDa.Fill(dt3);
            if (dt3.Rows.Count > 0)
            {
                DropDownList2.DataSource = dt3;
                DropDownList2.DataBind();
            }
            sqlStatement = "SELECT DISTINCT [locname] FROM [location]";
            sqlCmd = new SqlCommand(sqlStatement, con);
            dt4 = new DataTable();
            sqlDa = new SqlDataAdapter(sqlCmd);
            sqlDa.Fill(dt4);
            if (dt4.Rows.Count > 0)
            {
                DropDownList3.DataSource = dt4;
                DropDownList3.DataBind();
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
    protected void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        type = DropDownList.SelectedValue;
        fillDatalistandgmaps();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        loc = DropDownList3.SelectedValue;
        fillDatalistandgmaps();
        DataTable dt5 = new DataTable();
        if (loc!="Any")
        {
            SqlConnection con = new SqlConnection("DATA SOURCE=GOVINDSUPERCOMP;INITIAL CATALOG=Tutor;Integrated Security=True;");
            SqlCommand com = new SqlCommand();
            try
            {
                con.Open();
                string sqlStatement;
                sqlStatement = "SELECT DISTINCT landmark.lmname FROM landmark INNER JOIN location ON landmark.locid=location.locid WHERE location.locname='" + loc + "'";
                SqlCommand sqlCmd = new SqlCommand(sqlStatement, con);
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
                sqlDa.Fill(dt5);
                if (dt5.Rows.Count > 0)
                {
                    DropDownList4.DataSource = dt5;
                    DropDownList4.DataBind();
                }
                DropDownList4.Items.Insert(0, new ListItem("Any"));
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
        else
        {
            lm = "Any";
            DropDownList4.Items.Clear();
            DropDownList4.DataSource = dt5;
            DropDownList4.DataBind();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        std = DropDownList1.SelectedValue;
        fillDatalistandgmaps();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        sub = DropDownList2.SelectedValue;
        fillDatalistandgmaps();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        lm = DropDownList4.SelectedValue;
        fillDatalistandgmaps();
    }
    protected void fillDatalistandgmaps()
    {
        tutorlist = db.selectTutor(type, sub, std, loc, lm);
        dlTutor.DataSource = tutorlist;
        dlTutor.DataBind();
    }

    protected void tdaysdd_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (tdaysdd.SelectedValue.Equals("Custom Days"))
        {
            customdays_chlist.Visible = true;
        }
        else
        {
            teaching_days = tdaysdd.SelectedValue;
            customdays_chlist.Visible = false;
        }
    }
    
    protected string getvaluesfromcheckbox()
    {
        string td = "";
        foreach (ListItem item in cdays_cb.Items)
            if (item.Selected) td = td + "-" + item.Value;
        return td;
    }




    protected void mnthdd_SelectedIndexChanged(object sender, EventArgs e)
    {
        st_date = mnthdd.SelectedValue;
        if (st_date.Equals("Sept") || st_date.Equals("Apr") || st_date.Equals("Jun") || st_date.Equals("Nov"))
        {
            for (int i = 1; i <=30; i++)
                daydd.Items.Add(i.ToString());
        }
        else if (st_date.Equals("Feb"))
        {
            for (int i = 1; i <= 28; i++)
                daydd.Items.Add(i.ToString());
        }
        else
        {
            for (int i = 1; i <= 31; i++)
                daydd.Items.Add(i.ToString());
        }
        daydd.Items.Insert(0, new ListItem("--Select--"));    
    }

    protected void DoneButton_Click(object sender, EventArgs e)
    {
        timing = fhrdd.SelectedValue + ":" + fmindd.SelectedValue + fdndd.SelectedValue + "-" + thrdd.SelectedValue + ":" + tmindd.SelectedValue + tdndd.SelectedValue;
        st_date += "," + yr;
        if (tdaysdd.SelectedValue.Equals("Custom Days"))
        { 
            teaching_days = getvaluesfromcheckbox();
        }
        db.requestsession(id, Session["uid"].ToString(), timing, teaching_days, st_date,sub,std,loc,lm,type);
        Response.Redirect("~/StudentPersonal.aspx");

    }

    protected void daydd_SelectedIndexChanged(object sender, EventArgs e)
    {
        st_date += " " + daydd.SelectedValue;
    }

    protected void yrdd_SelectedIndexChanged(object sender, EventArgs e)
    {
        yr = yrdd.SelectedValue;
    }

    protected void dlTutor_ItemCommand(Object sender, DataListCommandEventArgs e)
    {
        dlTutor.SelectedIndex = e.Item.ItemIndex;
        if (e.CommandName == "select")
        {
            //fillDatalistandgmaps();
            loc =((Label) dlTutor.SelectedItem.FindControl("Lblloc")).Text;
            sub = ((Label)dlTutor.SelectedItem.FindControl("Lblsub")).Text;
            std = ((Label)dlTutor.SelectedItem.FindControl("Lblstd")).Text;
            std = ((Label)dlTutor.SelectedItem.FindControl("Lblstd")).Text;
            type = ((Label)dlTutor.SelectedItem.FindControl("Lbltype")).Text;
            lm = ((Label)dlTutor.SelectedItem.FindControl("Lbllm")).Text;
            id = Convert.ToInt16(((Label)dlTutor.SelectedItem.FindControl("Lblid")).Text);
            AfterSelection.Visible = true;
        }
    }
}

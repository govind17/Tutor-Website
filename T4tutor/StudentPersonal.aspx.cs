using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tutor_Website;

public partial class StudentPersonal : System.Web.UI.Page
{
    List<ITeachingSes> list = new List<ITeachingSes>();
    DBOperations db = new DBOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Studentname.Text = Session["name"].ToString();
            fillDL();
        }
    }
    protected void fillDL()
    {
        list = db.FillPersonalStudentDL(Session["uid"].ToString());
        DLStatus.DataSource = list;
        DLStatus.DataBind();
        foreach (DataListItem item in DLStatus.Items)
        {
            if (((Label)item.FindControl("statusLabel")).Text.Equals("Accepted"))
            {
                item.FindControl("selectButton").Visible = true;
            }
        }
    }
    protected void DLstatus_ItemCommand(Object sender, DataListCommandEventArgs e)
    {
        DLStatus.SelectedIndex = e.Item.ItemIndex;
        int tid= Convert.ToInt16(((Label)DLStatus.SelectedItem.FindControl("tidLabel")).Text);
        int stuid = Convert.ToInt16(((Label)DLStatus.SelectedItem.FindControl("stuidLabel")).Text);
        if (e.CommandName == "select")
        {
            tutordetails_div.Visible = true;
            string eid = db.select("tutor", "emailid", "tid", tid);
            string mob=db.select("tutor", "mob", "tid", tid);
            eidlbl.Text = eid;
            moblbl.Text = mob;
        }
        if (e.CommandName == "delete")
        {
            db.deletefromses(tid, stuid);
            fillDL();
        }
    }

    protected void Hidebtn_Click(object sender, EventArgs e)
    {
        tutordetails_div.Visible = false;
    }

    protected void FindBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/FindTutor.aspx");
    }
}
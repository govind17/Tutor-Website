using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tutor_Website;
public partial class TutorsPersonal : System.Web.UI.Page
{
    DBOperations db = new DBOperations();
    List<ITeachingSes> list = new List<ITeachingSes>();
    static string uid;
    int tid, stuid;
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (!IsPostBack)
        {
            tutorname.Text = Session["name"].ToString();
            uid = Session["uid"].ToString();
            list = db.FillPersonalTutorDL(uid);
            DLRequests.DataSource = list;
            DLRequests.DataBind();
        }
    }
    protected void DLRequests_ItemCommand(Object sender, DataListCommandEventArgs e)
    {
        DLRequests.SelectedIndex = e.Item.ItemIndex;
        tid = Convert.ToInt16(((Label)DLRequests.SelectedItem.FindControl("tidLabel")).Text);
        stuid= Convert.ToInt16(((Label)DLRequests.SelectedItem.FindControl("stuidLabel")).Text);
        if (e.CommandName == "accept")
        {
            db.updateses(tid, stuid,"Accepted","");
            list = db.FillPersonalTutorDL(uid);
            DLRequests.DataSource = list;
            DLRequests.DataBind();
        }
        if (e.CommandName == "reject")
        {
            remark_div.Visible = true;
        }
    }

    protected void sub_remark_Click(object sender, EventArgs e)
    {
        db.updateses(tid, stuid, "Rejected", TextBox_remark.Text);
        list = db.FillPersonalTutorDL(Session["uid"].ToString());
        DLRequests.DataSource = list;
        DLRequests.DataBind();
        remark_div.Visible = false;
    }
}
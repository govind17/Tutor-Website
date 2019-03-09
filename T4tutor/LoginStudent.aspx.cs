using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.SessionState;
using System.Configuration;
using System.Web.Security;


public partial class LoginStudent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("DATA SOURCE=GOVINDSUPERCOMP;INITIAL CATALOG=Tutor;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Register_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/StudentRegister.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Passwordresetstudent.aspx");
    }

    protected void Button_Login_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select @name=name from Student where eid = @eid and pass = @pwd", con);
        try
        {
            con.Open();
            cmd.Parameters.AddWithValue("@eid", txt_login.Text);
            cmd.Parameters.AddWithValue("@pwd", txt_password.Text);
            cmd.Parameters.AddWithValue("@name", DBNull.Value);
            cmd.Parameters["@name"].Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters["@name"].Size = 30;
            cmd.ExecuteReader();
            if (!cmd.Parameters["@name"].Value.ToString().Equals(""))
            {
                Session["uid"] = txt_login.Text;
                Session["name"] = cmd.Parameters["@name"].Value.ToString();
                Response.Redirect("~/StudentPersonal.aspx");
            }
            else
            {
                Label_Status.Visible = true;
                txt_login.Text = null;
                txt_password.Text = null;
                Label_Status.Text = "enter correct id and password";
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine("Some exception occured:{0}", ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
}
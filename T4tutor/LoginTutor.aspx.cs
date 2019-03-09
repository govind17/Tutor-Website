using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("DATA SOURCE=GOVINDSUPERCOMP;INITIAL CATALOG=Tutor;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/PasswordResetTutor.aspx");
    }

    protected void Button_Register_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Be_a_Tutor.aspx");
    }

    protected void Button_Login_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select @name=name from tutor where EmailId = @eid and Pass = @pwd",con);
        try
        {
            con.Open();
            cmd.Parameters.AddWithValue("@eid", txt_login.Text);
            cmd.Parameters.AddWithValue("@pwd", txt_password.Text);
            cmd.Parameters.AddWithValue("@name",DBNull.Value);
            cmd.Parameters["@name"].Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters["@name"].Size = 30;
            cmd.ExecuteReader();
            if (!cmd.Parameters["@name"].Value.ToString().Equals(""))
            {
                Session["name"] = cmd.Parameters["@name"].Value.ToString();
                Session["uid"] = txt_login.Text;
                Response.Redirect("~/TutorsPersonal.aspx");
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
   
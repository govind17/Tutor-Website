using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class PasswordReset : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/LoginTutor.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox_NewPassword.Text == TextBoxConfirmPassword.Text)
        {
            SqlCommand cmd1 = new SqlCommand("UPDATE RegisteredTutors SET password = @pas where EmailId = @eid", con);
            con.Open();
            cmd1.Parameters.AddWithValue("@eid", TextBox_EmailId.Text);
            cmd1.Parameters.AddWithValue("@pas", TextBox_NewPassword.Text);
            cmd1.ExecuteNonQuery();
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox_NewPassword.Visible = false;
            TextBoxConfirmPassword.Visible = false;
            Label_Status.Visible = false;
            Button_RESETPASSWORD.Visible = false;
            TextBox_EmailId.Text = null;
            Label_confirmation.Visible = true;
            Label_confirmation.Text = "password changed sucessfully, please login again";

            con.Close();

        }
        else if (TextBox_NewPassword.Text != TextBoxConfirmPassword.Text)
        {
            Label_confirmation.Visible = true;
            Label_confirmation.Text = "password didnt matched";
            TextBox_NewPassword.Text = null;
            TextBoxConfirmPassword.Text = null;
        }
        else
        { }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("select count(*) from RegisteredTutors where EmailId = @eid", con);
        con.Open();
        cmd.Parameters.AddWithValue("@eid", TextBox_EmailId.Text);
        int count = Convert.ToInt16(cmd.ExecuteScalar());
        if (count > 0)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox_NewPassword.Visible = true;
            TextBoxConfirmPassword.Visible = true;
            Label_Status.Visible = false;
            Button_RESETPASSWORD.Visible = true;
        }
        else if (count == 0)
        {
            Label_Status.Visible = true;
            Label_Status.Text = "user not found";
        }

        else { }

    }
        
}

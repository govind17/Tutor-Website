using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class UserRegister : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("DATA SOURCE=GOVINDSUPERCOMP;INITIAL CATALOG=Tutor;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Student(name,eid,pass,loc,gender,age,mob) values(@name,@eid,@pass,@location,@Gender,@age,@mob)", con);
       
        cmd.Parameters.AddWithValue("@name", TextBox_Name.Text);
        cmd.Parameters.AddWithValue("@eid", TextBox_UserName.Text);
        if (TextBox_Password.Text == TextBox_ConfirmPassword.Text)
        {
            cmd.Parameters.AddWithValue("@pass", TextBox_Password.Text);
        }
        else
        {
            Label10.Visible = true;
            Label10.Text = "password didnt matched";
            return;
        }
        if (TextBox_Location.Text.Equals(""))
        {
            cmd.Parameters.AddWithValue("@location", DBNull.Value);
        }
        else
        {
            cmd.Parameters.AddWithValue("@location", TextBox_Location.Text);
        }
        if(TextBox_mob.Text.Equals(""))
        {
            cmd.Parameters.AddWithValue("@mob", DBNull.Value);  
        }
        else
        {
            cmd.Parameters.AddWithValue("@mob", TextBox_mob.Text);
        }
        cmd.Parameters.AddWithValue("@gender", RadioButtonList_Gender.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@age",Convert.ToInt16(TextBox_Age.Text));
        
        cmd.ExecuteNonQuery();
       
        Response.Redirect("~/LoginStudent.aspx");
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox_Name.Text = null;
        TextBox_UserName.Text = null;
        TextBox_Password.Text = null;
        TextBox_Location.Text = null;
        RadioButtonList_Gender.SelectedItem.Selected = false;
        TextBox_Age.Text = null;

    }
}
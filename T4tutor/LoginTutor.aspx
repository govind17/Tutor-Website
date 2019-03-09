<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginTutor.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style50
        {
            width: 100%;
            height: 669px;
        }
        .style51
        {
            font-size: large;
            color: #990000;
            width: 983px;
            background-color: #999966;
            height: 73px;
        }
        .style52
        {
            width: 134px;
            height: 93px;
            background-color: #999966;
        }
        .style55
        {
            font-size: xx-large;
            background-color: #999966;
        }
        .style61
        {
            margin-left: 0px;
            background-color: #999966;
        }
        .style62
        {
            width: 891px;
            height: 434px;
            background-color: #999966;
        }
        .style63
        {
            font-size: large;
            color: #990000;
            background-color: #999966;
            height: 77px;
        }
        .style64
        {
            font-size: large;
            color: #990000;
            width: 983px;
            background-color: #999966;
            height: 301px;
        }
        .auto-style1 {
            font-size: large;
            color: #990000;
            width: 983px;
            background-color: #999966;
        }
        .style1
        {
            width: 1000px;
            border: 2px solid #800000;
        }
        .style2
        {
            width: 291px;
        }
        </style>
</head>
<body style="height: 677px">
    <form id="form1" runat="server">
    <div>

        <table class="style50">
            <tr>
                <td class="style64">
                    <img class="style52" src="cropped-tutorfy_site_icon.png" /><span 
                        class="style55">t4tutor</span><br class="style61" />
               
                      <img 
                        class="style62" src="loginpagequote.jpg" 
                        
                        style="width: 1404px; margin-left: 0px; height: 210px; margin-top: 0px; margin-bottom: 0px;"/><br 
                        class="style61" />
                    <br class="style61" />
                    <br class="style61" />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please Enter yor login details :</td>
            </tr>
            <tr>
                <td class="style63">
                    <table align="center" class="style1">
                        <tr>
                            <td align="center" class="style2">
                                <asp:Label ID="lbl_login" runat="server" Font-Size="X-Large" ForeColor="#660066" Text="EMAIL ID"></asp:Label>
                            </td>
                            <td align="center">
                                <asp:TextBox ID="txt_login" runat="server" Width="243px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_login" ErrorMessage="Please Enter EmailID"></asp:RequiredFieldValidator>
                            </td>
                            <td align="center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style2">
                                <asp:Label ID="lbl_password" runat="server" Font-Size="X-Large" ForeColor="#660066" Text="PASSWORD"></asp:Label>
                            </td>
                            <td align="center">
                                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="243px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" ErrorMessage="please enter EmailID"></asp:RequiredFieldValidator>
                            </td>
                            <td align="center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style2">&nbsp;</td>
                            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button_Login" runat="server" Text="Login" OnClick="Button_Login_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button_Register" runat="server" OnClick="Button_Register_Click" Text="New Register" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button_ForgottenPassword" runat="server" OnClick="Button3_Click" Text="Forgotten Password" />
                            </td>
                            <td align="center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">
                                <asp:Label ID="Label_Status" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style2">
                                &nbsp;</td>
                            <td align="center">
                                &nbsp;</td>
                            <td align="center">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>

    </div>
    <asp:PlaceHolder runat="server">
    
        <style type="text/css">
        .style48
        {
            width: 100px;
        }
        .mySlides
        {
            width: 891px;
            height: 434px;
        }
         </style>
   
    </asp:PlaceHolder>

    </form>
</body>
</html>

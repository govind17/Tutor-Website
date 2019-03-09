<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passwordresetstudent.aspx.cs" Inherits="passwordresetstudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 503px;
            color: #990000;
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: x-large;
            font-style: italic;
            text-decoration: none;
            text-transform: uppercase;
            background-color: #666699;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Email Id"></asp:Label>
                    <asp:TextBox ID="TextBox_EmailId" runat="server"></asp:TextBox>
&nbsp;
                    
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_EmailId" ErrorMessage="Please Enter EmailID To search"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label_Status" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Enter New Password" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_NewPassword" runat="server" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_NewPassword" ErrorMessage="please Enter pasword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Confirm Password" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:Label ID="Label_confirmation" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Please ReEnter  Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button_RESETPASSWORD" runat="server" OnClick="Button2_Click" Text="RESET PASSWORD" Width="150px" Visible="False" />
&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Return to Login</asp:LinkButton>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

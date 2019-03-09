<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentRegister.aspx.cs" Inherits="UserRegister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 420px;
        }
        .auto-style1 {
            color: #990000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label9" runat="server" ForeColor="#CC0000" Text="Please Fill This Registration Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#6600CC">
                    <asp:Label ID="Label1" runat="server" Text="Name" CssClass="auto-style1"></asp:Label>
                </td>
                <td bgcolor="#6600CC">
                    <asp:TextBox ID="TextBox_Name" runat="server" CssClass="auto-style1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#6600CC">
                    <asp:Label ID="Label2" runat="server" Text="Email Id" CssClass="auto-style1"></asp:Label>
                </td>
                <td bgcolor="#6600CC">
                    <asp:TextBox ID="TextBox_UserName" runat="server" CssClass="auto-style1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#6600CC">
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style1" Text="Gender"></asp:Label>
                </td>
                <td bgcolor="#6600CC">
                    <asp:RadioButtonList ID="RadioButtonList_Gender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="O">Other</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td bgcolor="#6600CC">
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style1" Text="Age"></asp:Label>
                </td>
                <td bgcolor="#6600CC">
                    <asp:TextBox ID="TextBox_Age" runat="server" CssClass="auto-style1" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#6600CC" class="auto-style1">
                    Password</td>
                <td bgcolor="#6600CC">
                    <asp:TextBox ID="TextBox_Password" runat="server" TextMode="Password" CssClass="auto-style1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#6600CC">
                    <asp:Label ID="Label6" runat="server" Text="Confirm Password" CssClass="auto-style1"></asp:Label>
                </td>
                <td bgcolor="#6600CC">
                    <asp:TextBox ID="TextBox_ConfirmPassword" runat="server" TextMode="Password" CssClass="auto-style1"></asp:TextBox>
                &nbsp;
                    <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#6600CC">
                    <asp:Label ID="Label3" runat="server" Text="Mobile no.(Optional)" CssClass="auto-style1"></asp:Label>
                </td>
                <td bgcolor="#6600CC">
                    <asp:TextBox ID="TextBox_mob" runat="server" CssClass="auto-style1" MaxLength="10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#6600CC">
                    <asp:Label ID="Label5" runat="server" Text="Location(Optional):" CssClass="auto-style1"></asp:Label>
                </td>
                <td bgcolor="#6600CC">
                    <asp:TextBox ID="TextBox_Location" runat="server" CssClass="auto-style1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" bgcolor="#6600CC">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                        Width="88px" CssClass="auto-style1" />
                    <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" CssClass="auto-style1" />
                    <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label_Status" runat="server" Text="Status" CssClass="auto-style1"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TutorsPersonal.aspx.cs" Inherits="TutorsPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="#FF3300" Text="Hello Sir"></asp:Label>
&nbsp;<asp:Label ID="tutorname" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:Label>
    
    </div>
        <br />
        <div>

            <asp:DataList ID="DLRequests" runat="server" BackColor="Lime" BorderColor="Gray" Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Green" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DLRequests_ItemCommand" Height="461px" Width="922px">
                <ItemTemplate>
                 <asp:Label ID="tidLabel" runat="server" Visible="false" Text='<%# Eval("tid") %>' />
                 <asp:Label ID="stuidLabel" runat="server" Visible="false" Text='<%# Eval("stuid") %>' />
                    
                    Name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("stname") %>' />
                    <br />
                    Gender:
                    <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("stg") %>' />
                    <br />
                    Age:
                    <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("stuage") %>' />
                    <br />
                    Timing :
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                    <br />
                    Start-date:
                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("stdate") %>' />
                    <br />
                    Session Days:
                    <asp:Label ID="daysLabel" runat="server" Text='<%# Eval("days") %>' />
                    <br />
                    Subject:
                    <asp:Label ID="subLabel" runat="server" Text='<%# Eval("sub") %>' />
                    <br />
                    Standard :
                    <asp:Label ID="stdLabel" runat="server" Text='<%# Eval("std") %>' />
                    <br />
                    location :
                    <asp:Label ID="locLabel" runat="server" Text='<%# Eval("loc") %>' />
                    <br />
                    Landmark:
                    <asp:Label ID="lmLabel" runat="server" Text='<%# Eval("lm") %>' />
                    <br />
                    Type:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    <asp:Button runat="server" Text="Accept" CommandName="accept" CausesValidation="False" />
                    &nbsp;&nbsp;
                    <asp:Button runat="server" Text="Reject" CommandName="reject" CausesValidation="False" />
               </ItemTemplate>       
            </asp:DataList>

        </div>
        <br />
        <div id="remark_div" runat="server" visible="false">
        <asp:Label ID="Label" runat="server" Text="Briefly Describe the cause of Rejection :"></asp:Label>
        <asp:TextBox ID="TextBox_remark" runat="server" MaxLength="50" Width="406px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="sub_remark" runat="server" Text="Submit" OnClick="sub_remark_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_remark" ErrorMessage="Please Provide A reason to reject"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>

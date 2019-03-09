<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentPersonal.aspx.cs" Inherits="StudentPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="#FF3300" Text="Hello"></asp:Label>
&nbsp;
        <asp:Label ID="Studentname" runat="server" Font-Bold="True" ForeColor="#3366FF"></asp:Label>
        <br />
        <div>

            <asp:DataList ID="DLStatus" runat="server" RepeatDirection="Horizontal" OnItemCommand="DLstatus_ItemCommand" BorderColor="Red" BorderWidth="2px" CellPadding="3" GridLines="Both" Width="942px">
                <ItemTemplate>
                    Name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("tuname") %>' />
                    <br />
                    Gender:
                    <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("stg") %>' />
                    <br />
                    Age:
                    <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("stuage") %>' />
                    <br />
                    Subject:
                    <asp:Label ID="subLabel" runat="server" Text='<%# Eval("sub") %>' />
                    <br />
                    Days:
                    <asp:Label ID="daysLabel" runat="server" Text='<%# Eval("days") %>' />
                    <br />
                    Start Date:
                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("stdate") %>' />
                    <br />
                    Standard:
                    <asp:Label ID="stdLabel" runat="server" Text='<%# Eval("std") %>' />
                    <br />
                    Location:
                    <asp:Label ID="locLabel" runat="server" Text='<%# Eval("loc") %>' />
                    <br />
                    Landmark:
                    <asp:Label ID="lmLabel" runat="server" Text='<%# Eval("lm") %>' />
                    <br />
                    Timing:
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                    <br />
                    Request Status:
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    <br />
                    <asp:Button ID="selectButton" Text="Select" runat="server" CommandName="select" Visible="false" />&nbsp;
                    <asp:Button ID="deleteButton" Text="Delete" runat="server" CommandName="delete" />
                    <asp:Label ID="stuidLabel" runat="server" Visible="false" Text='<%# Eval("stuid") %>' />
                    <asp:Label ID="tidLabel" runat="server" Visible="false" Text='<%# Eval("tid") %>' />
                    <br />
                </ItemTemplate>
            </asp:DataList>

        </div>
        <br />
        <div id="tutordetails_div" runat="server" visible="false">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="EmailID :"></asp:Label>
            <asp:Label ID="eidlbl" runat="server" Font-Italic="True" Font-Size="Medium"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Mob No. :"></asp:Label>
            <asp:Label ID="moblbl" runat="server" Font-Italic="True" Font-Size="Medium"></asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Hidebtn" runat="server" OnClick="Hidebtn_Click" Text="Hide" />

        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="FindBtn" runat="server" OnClick="FindBtn_Click" Text="Find More Tutors" Width="502px" />
        </p>
    </form>
</body>
</html>

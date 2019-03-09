<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddTutor.aspx.cs" Inherits="AddTutor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 28px;
            background-color: #99CCFF;
        }
        .style4
        {
            background-color: #99CCFF;
            height: 84px;
        }
        .style5
        {
            height: 26px;
            background-color: #CC66FF;
        }
        .style6
        {
            background-color: #CC66FF;
        }
        .auto-style4 {
            background-color: #CC66FF;
            height: 16px;
        }
        .auto-style5 {
            width: 1223px;
        }
        .auto-style6 {
            height: 28px;
            background-color: #99CCFF;
            width: 154px;
        }
        </style>
    
    <form id="form1" runat="server">
        <div id="datalist_div">
    
            <asp:DataList ID="DLAppTutor" runat="server" BackColor="White" BorderColor="Navy" BorderWidth="4px" Font-Bold="False" Font-Italic="False" Font-Names="Book Antiqua" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" GridLines="Both" RepeatDirection="Horizontal" OnItemCommand="DL_ItemCommand">
                <ItemTemplate>
                    Request No.:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
         
                    type:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br />

                    teachingstr1:
                    <asp:Label ID="teachingstr1Label" runat="server" Text='<%# Eval("teachingstr1") %>' />
                    <br />
                    teachingstr2:
                    <asp:Label ID="teachingstr2Label" runat="server" Text='<%# Eval("teachingstr2") %>' />
                    <br />
                    teachingstr3:
                    <asp:Label ID="teachingstr3Label" runat="server" Text='<%# Eval("teachingstr3") %>' />
                    
                    <br />
                    
                    <br />
                    <asp:Button ID="ButtonSelect" runat="server" CommandName="select" CommandArgument='<%# Eval("id") %>'  Text="Select" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonDelete" runat="server" CommandName="delete" CommandArgument='<%# Eval("id") %>'  Text="Delete" />
                </ItemTemplate>
            </asp:DataList>
    
        </div>
        <div id="TutorDetails_div" visible="false" runat="server">
            
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style1">
        <tr>
            <td colspan="2" class="style6">
                </td>
        </tr>
        <tr>
            <td colspan="2" class="style6">
                <asp:Label ID="Label2" runat="server" Text="Personal Details of Applicant*" 
                    style="font-size: large; font-family: Arial, Helvetica, sans-serif" 
                    ForeColor="Maroon"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Name" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox_Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Name" ErrorMessage="Please Enter Name !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox_Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox_Age" ErrorMessage="Enter Age"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_Age" ErrorMessage="enter age between 20 to 50" MaximumValue="50" MinimumValue="20"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox_gender" runat="server" Width="16px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_Experience" ErrorMessage="Please Enter Gender!" ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label7" runat="server" Text="Experience"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox_Experience" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_Experience" ErrorMessage="Please Enter Experience !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label8" runat="server" Text="AlmaMater"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox_AlmaMater" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_AlmaMater" ErrorMessage="Please Enter AlmaMater !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label10" runat="server" Text="Fee "></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox_Fee" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox_Fee" ErrorMessage="Please Enter Fees !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label11" runat="server" Text="Mobile No."></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox_MobileNo" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox_MobileNo" ErrorMessage="Please Enter Mobile No !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label12" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox_EmailId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox_EmailId" ErrorMessage="Please Enter E-mail id !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_EmailId" ErrorMessage="Enter Correct  Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Location"></asp:Label>
            </td>
            <td class="auto-style4" colspan="2">
                <asp:Label ID="lbllat" runat="server" Text="Latitude: "></asp:Label>
                <asp:TextBox ID="TextBox_tlat" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox_tlat" ErrorMessage="Please Enter Latitude !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                 <asp:Label ID="lbllong" runat="server" Text="Longitude: "></asp:Label>
                <asp:TextBox ID="TextBox_tlon" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox_tlon" ErrorMessage="Please Enter Longitude ! " ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="Center">
            <td colspan="2">
                <asp:Button runat="server" Text="Submit" ID="SubmitTutDetails" OnClick="SubmitDetails" />
            </td>
        </tr>
        </table>
        </div>
        <div id="TeachingDetails_div" runat="server" visible="false">
            <table>
            <tr>
            <td class="style4" colspan="2" style="color: #3333CC">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <h1 style="height: 39px">
                <asp:Label ID="Label18" runat="server" Text="Teaching Details"></asp:Label>
                </h1>
                <br />
                <asp:Label ID="Label17" runat="server" ForeColor="Maroon" 
                    Text="Teaching And Location*"></asp:Label>
&nbsp;<br />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label3" runat="server" Text="Type"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DDType" runat="server" DataTextField="typename" 
                    DataValueField="typename" OnSelectedIndexChanged="DDType_SelectedIndexChanged"  AutoPostBack="True">
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DDType" ErrorMessage="Please Select An Option"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox_type" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Enter Your Choice"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label9" runat="server" Text="Subject"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DDsub" runat="server" DataTextField="subname" 
                    DataValueField="subname" OnSelectedIndexChanged="DDsub_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DDsub" ErrorMessage="Please Select an Option"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox_subject" runat="server" Visible="False" Height="16px" Width="120px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox_subject" ErrorMessage="Enter Your Choice"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label16" runat="server" Text="Standard"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DDstd" DataTextField="stdname" 
                    DataValueField="stdname" runat="server" OnSelectedIndexChanged="DDstd_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox_standard" ErrorMessage="Please select an option"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                &nbsp;
                <asp:TextBox ID="TextBox_standard" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox_standard" ErrorMessage="Enter Your Choice"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label14" runat="server" Text="Location"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DDLoc" runat="server" DataTextField="locname" 
                    DataValueField="locname"  OnSelectedIndexChanged="DDLoc_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="DDLoc" ErrorMessage="please select an option"></asp:RequiredFieldValidator>
                &nbsp;
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox_location" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox_location" ErrorMessage="Enter your Choice"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label15" runat="server" Text="Landmark"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DDlmark" runat="server" DataTextField="lmname" 
                    DataValueField="lmname" OnSelectedIndexChanged="DDlmark_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="DDlmark" ErrorMessage="Please Select an option"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_landmark" runat="server" Visible="False"></asp:TextBox>
            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox_landmark" ErrorMessage="Enter Your Choice"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_newLat" runat="server" Visible="False">New Latitude</asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox_newLat" ErrorMessage="Enter Your Choice"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox_newLong" runat="server" Visible="False">New Longitude</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox_newLat" ErrorMessage="Enter Youe choice"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr >
        <tr align="center">
            <td colspan="2">
                <asp:Button ID="AddmoreTeachingDetails" runat="server" Text="Add More Teaching Details" OnClick="AddmoreTeachingDetails_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="NTutorButton" runat="server" OnClick="AddNewTutor_Click" Text="Add New Tutor" Width="139px" />
            </td>
        </tr>
        
        </table>
        </div>
    </form>
</body>
</html>

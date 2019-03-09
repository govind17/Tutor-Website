<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Be_a_Tutor.aspx.cs" Inherits="Be_a_Tutor" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 

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
        .auto-style3 {
            height: 28px;
            background-color: #99CCFF;
        }
        .auto-style4 {
            background-color: #CC66FF;
            height: 16px;
        }
        </style>


    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="Red" BorderStyle="Dashed" 
            style="font-size: x-large; margin-left: 0px;" 
            Text="Apply To Become a Tutor" Width="276px"></asp:Label>
    
    </div>
    <table class="style1">
        <tr>
            <td colspan="2" class="style6">
                &nbsp;</td>
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
                <asp:TextBox ID="TextBox_Name"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Name" ErrorMessage="Please Enter Name !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Password" runat="server" TextMode="Password" AutoCompleteType="Disabled" MaxLength="16"></asp:TextBox>
&nbsp;</tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox_Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox_Age" ErrorMessage="Enter Age"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_Age" ErrorMessage="enter age between 20 to 50" MaximumValue="50" MinimumValue="20"></asp:RangeValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Password:
                <asp:TextBox ID="ConfirmPass" runat="server" TextMode="Password" AutoCompleteType="Disabled" MaxLength="16"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:Label ID="passmatch" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style6">

                <asp:RadioButtonList ID="RB_Gender" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RB_Gender_SelectedIndexChanged">
                    <asp:ListItem Value="M">Male</asp:ListItem>
                    <asp:ListItem Value="F">Female</asp:ListItem>
                    <asp:ListItem Value="O">Other</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RB_Gender" ErrorMessage="Please Select Gender !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
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
                <asp:TextBox ID="TextBox_MobileNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox_MobileNo" ErrorMessage="Please Enter Mobile No !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label12" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox_EmailId" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox_EmailId" ErrorMessage="Please Enter E-mail id !" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Your location"></asp:Label>
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
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Type"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDType" runat="server" DataTextField="typename" 
                    DataValueField="typename" OnSelectedIndexChanged="DDType_SelectedIndexChanged"  AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DDType" ErrorMessage="Please Select Type"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Text="Subject"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDsub" runat="server" DataTextField="subname" 
                    DataValueField="subname" OnSelectedIndexChanged="DDsub_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DDsub" ErrorMessage="Please select subject"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox_subject" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox_subject" ErrorMessage="Please Enter Subject"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label16" runat="server" Text="Standard"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDstd" DataTextField="stdname" 
                    DataValueField="stdname" runat="server" OnSelectedIndexChanged="DDstd_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox_standard" ErrorMessage="Please select Standard"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:TextBox ID="TextBox_standard" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Plese Enter Standard"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label14" runat="server" Text="Location"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDLoc" runat="server" DataTextField="locname" 
                    DataValueField="locname"  OnSelectedIndexChanged="DDLoc_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="DDLoc" ErrorMessage="Please Select Location"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_location" runat="server" Visible="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox_location" ErrorMessage="Please Emter Location"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox_Pincode" runat="server" MaxLength="7" Visible="false" >Area Pincode</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox_Pincode" ErrorMessage="Please enter Area PIN"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label15" runat="server" Text="Landmark"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDlmark" runat="server" DataTextField="lmname" 
                    DataValueField="lmname" OnSelectedIndexChanged="DDlmark_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="DDlmark" ErrorMessage="Please Select landmark"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox_landmark" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox_landmark" ErrorMessage="Please Enter Landmark"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="AddmoreTeachingDetails" runat="server" Text="Add More Teaching Details" OnClick="AddmoreTeachingDetails_Click"/>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Submit" runat="server" BackColor="#336699" Text="Submit Details" Width="104px" OnClick="Submit_Click"  />
            </td>
        </tr>
        </table>
</asp:Content>
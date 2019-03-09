
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="FindTutor.aspx.cs" Inherits="FindTutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <br />
    <table class="style1" style="width: 101%">
        <tr>
            <td style="width: 84px" bgcolor="#999966" class="style2">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Search Tutor By :"></asp:Label>
                <br />
                Filters</td>
            <td style="width: 496px" bgcolor="#999966">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#FF5050" 
                    Text="TypeOFTutor :"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList" runat="server" width="150px" 
                        DataTextField="typename" DataValueField="typename" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged">
                    
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList" ErrorMessage="Select Type of Tutor"></asp:RequiredFieldValidator>
                <br />
&nbsp;</td>
            <td style="width: 414px" bgcolor="#999966">
&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" ForeColor="#FF5050" Text="Standard :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
                    runat="server" 
                    DataTextField="stdname" DataValueField="stdname" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Standard"></asp:RequiredFieldValidator>
                <br />
                </td>
            <td style="width: 432px" bgcolor="#999966" class="auto-style2">
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Subject :" ForeColor="#CC0000"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" 
                    DataTextField="subname" 
                    DataValueField="subname" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select Subject"></asp:RequiredFieldValidator>
            </td>
            <td bgcolor="#999966" style="width: 442px" class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="Location :" ForeColor="#CC0000"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList3" runat="server"
                    DataTextField="locname" 
                    DataValueField="locname" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" >
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select Location"></asp:RequiredFieldValidator>
                </td>
            <td bgcolor="#999966" class="auto-style1" style="width: 396px">
                <asp:Label ID="Label6" runat="server" Text="Landmark :" ForeColor="#CC0000"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList4" runat="server"
                    DataTextField="lmname" 
                    DataValueField="lmname" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"  >
                    
                </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Select Landmark"></asp:RequiredFieldValidator>
                </td>
        </tr>
    </table>

        <br />
        <div>
    <asp:DataList ID="dlTutor" runat="server" BackColor="Gray"  BorderColor="#666666"
         BorderStyle="None" BorderWidth="2px" CellPadding="1" CellSpacing="2" Font-Names="Verdana" Font-Size="Small"
         GridLines ="Both" RepeatColumns="3" RepeatDirection="Horizontal" Width="1407px" style="margin-right: 3px" OnItemCommand="dlTutor_ItemCommand" >
         <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
         <HeaderStyle BackColor="#333333" Font-Bold="true" Font-Size="Large" ForeColor="White"
             HorizontalAlign="Center" VerticalAlign="Middle" />
         <HeaderTemplate>Tutors</HeaderTemplate>
         <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />
         <ItemTemplate>
             <b>Name:</b><asp:Label ID="lblTutorname" runat="server" Text='<%# Eval("name") %>'></asp:Label><br />
             <b>Age:</b><asp:Label ID="lblage" runat="server" Text='<%# Eval("age") %>'></asp:Label><br />
             <b>Gender :</b><asp:Label ID="lblgender" runat="server" Text='<%# Eval("g") %>'></asp:Label><br />
             <b>Experience:</b><asp:Label ID="lblexp" runat="server" Text='<%# Eval("exp") %>'></asp:Label><br />
             <asp:Label ID="Lblid" runat="server" Visible="false" Text='<%# Eval("id") %>'></asp:Label>
             <b>Almamater :</b><asp:Label ID="lblalma" runat="server" Text='<%# Eval("alma") %>'></asp:Label><br />
             <b>Fee :</b><asp:Label ID="lblfee" runat="server" Text='<%# Eval("fee") %>'></asp:Label><br />
             <b>Rating :</b><asp:Label ID="lblrating" runat="server" Text='<%# Eval("rating") %>'></asp:Label><br />
             <b>Subject :</b><asp:Label ID="Lblsub" runat="server" Text='<%# Eval("sub") %>'></asp:Label><br />
             <b>Standard :</b><asp:Label ID="Lblstd" runat="server" Text='<%# Eval("std") %>'></asp:Label><br />
             <b>Location :</b><asp:Label ID="Lblloc" runat="server" Text='<%# Eval("loc") %>'></asp:Label><br />
             <b>Type :</b><asp:Label ID="Lbltype" runat="server" Text='<%# Eval("type") %>'></asp:Label><br />
             <b>Location :</b><asp:Label ID="Lbllm" runat="server" Text='<%# Eval("lm") %>'></asp:Label><br />
             <asp:Button ID="ButtonSelect" runat="server"  Text="Select" CommandName="select" CausesValidation="False"  />
         </ItemTemplate>
        
    </asp:DataList>
</div>
    <br />

    <br />
    <div id="AfterSelection" runat="server" visible="false" style="height: 192px; background-color: #6699FF">


        <span style="color: #800000">&nbsp;</span><table class="style1">
            <tr>
                <td>


        <asp:Label ID="Label8" runat="server" Text="Timing :"></asp:Label>
        &nbsp;</td>
                <td>&nbsp;<asp:Label ID="Label10" runat="server" Text="From"></asp:Label>
&nbsp;
        <asp:DropDownList ID="fhrdd" runat="server" AutoPostBack="True">
            <asp:ListItem>00</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
&nbsp;:<asp:DropDownList ID="fmindd" runat="server" AutoPostBack="True">
            <asp:ListItem>00</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <asp:DropDownList ID="fdndd" runat="server" AutoPostBack="True">
            <asp:ListItem>--</asp:ListItem>
            <asp:ListItem>A.M.</asp:ListItem>
            <asp:ListItem>P.M.</asp:ListItem>
        </asp:DropDownList>
&nbsp;TO
        <asp:DropDownList ID="thrdd" runat="server" AutoPostBack="True">
            <asp:ListItem>00</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
&nbsp;:<asp:DropDownList ID="tmindd" runat="server" AutoPostBack="True">
            <asp:ListItem>00</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <asp:DropDownList ID="tdndd" runat="server" AutoPostBack="True">
            <asp:ListItem>--</asp:ListItem>
            <asp:ListItem>A.M.</asp:ListItem>
            <asp:ListItem>P.M.</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label9" runat="server" Text="Days :"></asp:Label>
                </td>
                <td>
        <asp:DropDownList ID="tdaysdd" runat="server" OnSelectedIndexChanged="tdaysdd_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>Everyday</asp:ListItem>
            <asp:ListItem>Weekdays</asp:ListItem>
            <asp:ListItem>Weekends(Sat&amp;Sun)</asp:ListItem>
            <asp:ListItem Value="Custom Days">Custom Days</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
        </table>
       
<div id="customdays_chlist" runat="server" visible="false">
            <table class="style1">
                <tr>
                    <td>
            <asp:CheckBoxList ID="cdays_cb" runat="server" Height="39px" RepeatDirection="Horizontal">
                <asp:ListItem>Monday</asp:ListItem>
                <asp:ListItem>Tuesday</asp:ListItem>
                <asp:ListItem>Wednesday</asp:ListItem>
                <asp:ListItem>Thursday</asp:ListItem>
                <asp:ListItem>Friday</asp:ListItem>
                <asp:ListItem>Saturday</asp:ListItem>
                <asp:ListItem>Sunday</asp:ListItem>
            </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
          </div>
        <br />
        Start Date:
          <asp:DropDownList ID="mnthdd" runat="server" AutoPostBack="True" OnSelectedIndexChanged="mnthdd_SelectedIndexChanged">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem Value="Jan">January</asp:ListItem>
            <asp:ListItem Value="Feb">February</asp:ListItem>
            <asp:ListItem Value="Mar">March</asp:ListItem>
            <asp:ListItem Value="Apr">April</asp:ListItem>
            <asp:ListItem Value="May"></asp:ListItem>
            <asp:ListItem Value="Jun">June</asp:ListItem>
            <asp:ListItem Value="Jul">July</asp:ListItem>
            <asp:ListItem Value="Aug">August</asp:ListItem>
            <asp:ListItem Value="Sept">September</asp:ListItem>
            <asp:ListItem Value="Oct">October</asp:ListItem>
            <asp:ListItem Value="Nov">November</asp:ListItem>
            <asp:ListItem>December</asp:ListItem>
        </asp:DropDownList>
&nbsp;-<asp:DropDownList ID="daydd" runat="server" OnSelectedIndexChanged="daydd_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        -<asp:DropDownList ID="yrdd" runat="server" OnSelectedIndexChanged="yrdd_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem Value="17">2017</asp:ListItem>
            <asp:ListItem Value="18">2018</asp:ListItem>
        </asp:DropDownList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="DoneButton" runat="server" Text="Done" OnClick="DoneButton_Click" CausesValidation="False" />


    </div>
</asp:Content>
   


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    ,<table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td align="right">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Student Login" Width="86px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Tutor Login" />
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        </table>
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
   
&nbsp;
   
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">.<h2 
    style="margin: 0px auto; padding: 0px; font-size: 100px; line-height: 1.2; font-family: arial, sans-serif; font-weight: normal; color: rgb(255, 255, 255); text-transform: none; max-width: 960px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(34, 33, 33);">
    <span class="wsite-text wsite-headline">
    <span style="text-decoration: none; font-style: normal; font-weight: 400; color: rgb(255, 255, 255);">
    <span style="text-decoration: none; font-style: normal; font-weight: 400;">
    <span style="text-decoration: none; font-style: normal;"><font size="3" 
        style="vertical-align: middle;"><font size="5" 
        style="vertical-align: middle;"><font size="7" 
        style="vertical-align: middle;"><font color="#e9a476" 
        style="vertical-align: middle;"><font color="#f9f6f6" 
        style="vertical-align: middle;">Welcome to</font><span 
        class="Apple-converted-space">&nbsp;</span></font><font color="#c23b3b" 
        style="vertical-align: middle;">t4tutor!</font></font></font></font></span></span></span></span></h2>
<table align="center" class="style48">
        <tr>
            <td>
               <div class="w3-content w3-section" style="max-width:800px" >
                   
                 <img class="mySlides" src="image.jpg"/>
                  <img class="mySlides" src="imagesupport.jpg"/>
 
 

  </div>
 <script>
     var myIndex = 0;
     carousel();

     function carousel() {
         var i;
         var x = document.getElementsByClassName("mySlides");
         for (i = 0; i < x.length; i++) {
             x[i].style.display = "none";
         }
         myIndex++;
         if (myIndex > x.length) { myIndex = 1 }
         x[myIndex - 1].style.display = "block";
         setTimeout(carousel, 2500); // Change image every 2.5 seconds
     }
     </script>
     
                </td>
        </tr>
    </table>
</asp:Content>
































































































































































































  

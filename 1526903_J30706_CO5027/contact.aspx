    <%@ Page Title="contact" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="_1526903_J30706_CO5027.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-right: 2px;
        }
        .auto-style3 {
            margin-left: 74px;
        }
        .auto-style4 {
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
	<br/>
            
                
			            <h1> Contact </h1>
                        
                
                        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                        <asp:TextBox ID="txtName" runat="server" Height="22px" style="margin-top: 11px" Width="236px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="Name cannot be left blank, please enter your name!" ControlToValidate="txtName" BackColor="Yellow" BorderColor="Black"></asp:RequiredFieldValidator>
                        <br />
                    
                        
                        <asp:Label ID="lblEmail" runat="server" Text="E-mail:"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" Height="22px" style="margin-top: 50px" Width="229px" TextMode="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="expValEmail" runat="server" ErrorMessage="Invalid E-mail address!" ControlToValidate="txtEmail" BackColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.+]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="<br/>E-mail cannot be left blank, please enter your valid e-mail address!" ControlToValidate="txtEmail" BackColor="Yellow" BorderColor="Black"></asp:RequiredFieldValidator>
                        <br />
			               
                        
                        <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
                        <asp:TextBox ID="txtSubject" runat="server" Height="22px" style="margin-top: 47px" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqValSubject" runat="server" ErrorMessage="Please enter the subject of your message!" ControlToValidate="txtSubject" BackColor="Yellow" BorderColor="Black"></asp:RequiredFieldValidator>
                        <br />

                        
                        <asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label>
                        <asp:TextBox ID="txtMessage" runat="server" Height="100px" style="margin-top: 50px" Width="211px" TextMode="MultiLine" CssClass="auto-style2" OnTextChanged="txtMessage_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqValMessage" runat="server" ErrorMessage="Please enter your message!" ControlToValidate="txtMessage" BackColor="Yellow" BorderColor="Black"></asp:RequiredFieldValidator>
                            
                        
                        <br />

     

                         <asp:Button ID="btnSend" runat="server" Text="Send" Height="45px" OnClick="btnSend_Click" Width="217px" CssClass="auto-style3" />
                            
                         <p class="auto-style4"><asp:Literal ID="litMsg" runat="server"></asp:Literal></p>
                        
                        <br />
                        
                        <!--The google map below was retrieved from https://developers.google.com/maps/documentation/javascript/tutorial -->

                        <div id="clothing4menmap"></div>
                        
                        <script async defer
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAzwfn9vn6jpcr808xTaHLYkTTb36ZHGa8&callback=initMap">
                        </script>

                         <script src="map.js"></script>

			            <br/>
			            <br/>
	</div>

</asp:Content>

<%@ Page Title="login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="_1526903_J30706_CO5027.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="content">
	<br/>
            
                
			            <h1> Login </h1>
                        
                
                        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                        <asp:TextBox ID="TxtBoxUsername" runat="server" Height="22px" style="margin-top: 11px" Width="205px"></asp:TextBox>
                        
                        <br />
                    
                        
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="TxtPassword" runat="server" Height="22px" style="margin-top: 50px" Width="205px" TextMode="Password"></asp:TextBox>
                        
                        <br />
			               
                        

                        <asp:Button ID="btnlogin" runat="server" Text="login" Height="39px" style="margin-top: 50px" Width="142px" />
                      
                        <p>Register now. Click <a href="register.aspx"> Here!</a></p>

                        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
                       
                       
                        
			            <br/>
			            <br/>
	</div>

</asp:Content>

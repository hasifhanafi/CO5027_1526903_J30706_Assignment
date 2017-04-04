<%@ Page Title="login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="_1526903_J30706_CO5027.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="content">
	<br/>
            
                
			            <h1> Login </h1>
                        
                
                        <asp:Label ID="Label1" runat="server" Text="Username/E-mail:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Height="22px" style="margin-top: 11px" Width="205px"></asp:TextBox>
                        
                        <br />
                    
                        
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Height="22px" style="margin-top: 50px" Width="205px"></asp:TextBox>
                        
                        <br />
			               
                        

                        <asp:Button ID="Button1" runat="server" Text="login" Height="39px" style="margin-top: 50px" Width="142px" />
                        
			            <br/>
			            <br/>
	</div>

</asp:Content>

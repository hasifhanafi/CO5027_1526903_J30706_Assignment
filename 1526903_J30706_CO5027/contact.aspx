<%@ Page Title="contact" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="_1526903_J30706_CO5027.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
	<br/>
            
                
			            <h1> Contact </h1>
                        
                
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Height="22px" style="margin-top: 11px" Width="205px"></asp:TextBox>
                        
                        <br />
                    
                        
                        <asp:Label ID="Label2" runat="server" Text="E-mail:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Height="22px" style="margin-top: 50px" Width="205px"></asp:TextBox>
                        
                        <br />
			               
                        
                        <asp:Label ID="Label3" runat="server" Text="Phone Number:"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Height="22px" style="margin-top: 47px" Width="205px"></asp:TextBox>
                        
                        <br />

                        
                        <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Height="22px" style="margin-top: 50px" Width="205px"></asp:TextBox>
                        
                        <br />

                        
                        <asp:Label ID="Label5" runat="server" Text="Details:"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" Height="22px" style="margin-top: 46px" Width="204px"></asp:TextBox>
                        
                        <br />

                        <asp:Button ID="Button1" runat="server" Text="Submit" Height="39px" style="margin-top: 50px" Width="142px" />
                        
			            <br/>
			            <br/>
	</div>

</asp:Content>

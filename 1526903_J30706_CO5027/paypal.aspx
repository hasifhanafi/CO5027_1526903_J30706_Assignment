<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="paypal.aspx.cs" Inherits="_1526903_J30706_CO5027.paypal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />

    <!-- The code below was retireved from http://tutorials.tinyappco.com/ASPNET/PayPal -->

    <asp:Label ID="lblproductitemQuantity" runat="server" Text="Choose your quantity:" AssociatedControlID="ddlproductitemQuantity"></asp:Label>
    <asp:DropDownList ID="ddlproductitemQuantity" runat="server" Width="43px">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
    </asp:DropDownList>

    <br />
    <br />

    <asp:Button ID="btnBuyProductItem" runat="server" Text="Buy" Height="53px" OnClick="btnProductItem_Click" Width="175px"  />

 
</asp:Content>

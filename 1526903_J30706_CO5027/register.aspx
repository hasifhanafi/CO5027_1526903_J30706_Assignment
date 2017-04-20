<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="_1526903_J30706_CO5027.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <p><asp:label runat="server" text="Fullname:" ID="lblFullname"></asp:label>
    <asp:textbox runat="server" ID="txtFullname"></asp:textbox></p>
    <br />

    <p><asp:label runat="server" text="E-mail:" id="lblEmail"></asp:label>
    <asp:textbox runat="server" ID="txtEmail"></asp:textbox></p>
    <br />

    <p><asp:label runat="server" text="UserName:" id="lblUserName"></asp:label>
    <asp:textbox runat="server" ID="txtUserName"></asp:textbox></p>
    <br />

    <p><asp:label runat="server" text="Password:" id="lblPassword"></asp:label>
    <asp:textbox runat="server" ID="txtPassword" TextMode="Password"></asp:textbox></p>
    <br />

    <asp:button runat="server" text="Sign Up" ID="BtnSignup" OnClick="BtnSignup_Click" CssClass="auto-style1" Width="159px" />
    
    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>

</asp:Content>

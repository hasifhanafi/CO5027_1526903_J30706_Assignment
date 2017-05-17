<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="_1526903_J30706_CO5027.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 87px;
            height: 29px;
            margin-left: 58px;
            margin-top: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <h1>Register:</h1>
    <br />
       <p><asp:label runat="server" text="Fullname:" ID="lblFullname"></asp:label>
    <asp:textbox runat="server" ID="txtFullname" Width="206px"></asp:textbox></p>
    <br />

    <p><asp:label runat="server" text="E-mail:" id="lblEmail"></asp:label>
    <asp:textbox runat="server" ID="txtEmail" Width="231px"></asp:textbox></p>
    <asp:RegularExpressionValidator ID="expValEmail" runat="server" ErrorMessage="Invalid E-mail address!" ControlToValidate="txtEmail" BackColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.+]\w+)*"></asp:RegularExpressionValidator>
    <br />

    <p><asp:label runat="server" text="UserName:" id="lblUserName"></asp:label>
    <asp:textbox runat="server" ID="txtUserName" Width="200px"></asp:textbox></p>
    <br />

    <p><asp:label runat="server" text="Password:" id="lblPassword"></asp:label>
    <asp:textbox runat="server" ID="txtPassword" TextMode="Password" Width="208px"></asp:textbox></p>
    <br />

    <asp:button runat="server" text="Sign Up" ID="BtnSignup" OnClick="BtnSignup_Click" CssClass="auto-style2" Width="159px" />
    
       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>

</asp:Content>

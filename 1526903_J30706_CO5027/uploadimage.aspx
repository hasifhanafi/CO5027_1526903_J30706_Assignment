<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="uploadimage.aspx.cs" Inherits="_1526903_J30706_CO5027.uploadimage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <asp:FileUpload ID="imgFileUploadControl" runat="server" />

    <br />
    <br />

    <asp:Button ID="btnUpload" runat="server" Text="Upload" Height="44px" Width="131px" OnClick="btnUpload_Click" />

    <br />
    <br />

    <asp:Image ID="CurrentImage" runat="server" Height="873px" Width="1004px" />

    <br />
    <br />

</asp:Content>

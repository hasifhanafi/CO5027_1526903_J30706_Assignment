<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="_1526903_J30706_CO5027.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <br />

    <!-- The Code below was retrieved from http://tutorials.tinyappco.com/ASPNET/Gridviews -->

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ProductDataSource" Height="204px" Width="995px" CellSpacing="-1" GridLines="None">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
        </Columns>
</asp:GridView>

    <!-- The Code below was retrieved from http://tutorials.tinyappco.com/ASPNET/GridViewValidation -->

<asp:SqlDataSource ID="ProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526903_j30706_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Product]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Code] = @original_Code) OR ([Code] IS NULL AND @original_Code IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))" InsertCommand="INSERT INTO [Product] ([Name], [Code], [Price], [Stock]) VALUES (@Name, @Code, @Price, @Stock)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Product] SET [Name] = @Name, [Code] = @Code, [Price] = @Price, [Stock] = @Stock WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Code] = @original_Code) OR ([Code] IS NULL AND @original_Code IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Id" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Code" Type="String" />
        <asp:Parameter Name="original_Price" Type="Decimal" />
        <asp:Parameter Name="original_Stock" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Code" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Stock" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Code" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Stock" Type="Int32" />
        <asp:Parameter Name="original_Id" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Code" Type="String" />
        <asp:Parameter Name="original_Price" Type="Decimal" />
        <asp:Parameter Name="original_Stock" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

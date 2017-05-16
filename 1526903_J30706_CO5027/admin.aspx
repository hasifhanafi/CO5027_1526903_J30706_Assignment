<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="_1526903_J30706_CO5027.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <br />

    <!-- The Code below was retrieved from http://tutorials.tinyappco.com/ASPNET/Gridviews -->

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ProductDataSource" Height="211px" Width="995px" CellSpacing="-1" GridLines="None" BackColor="#FFFF99" ShowFooter="True" >
        
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
            <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:LinkButton  ID="lblInsert" runat="server" ValidationGroup="Insert" OnClick="lblInsert_Click">Insert</asp:LinkButton>
                </FooterTemplate>

            </asp:TemplateField>

            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqName" runat="server" ErrorMessage="<br/>Name is a required field" BackColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqName1" runat="server" ErrorMessage="<br/>Name is a required field" BackColor="Red" ControlToValidate="txtName" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </FooterTemplate>

            </asp:TemplateField>

            <asp:TemplateField HeaderText="Code" SortExpression="Code">
                
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Code") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqCode" runat="server" ErrorMessage="<br/>Code is a required field" BackColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Code") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqCode1" runat="server" ErrorMessage="<br/>Code is a required field" BackColor="Red" ControlToValidate="txtCode" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                </FooterTemplate>

            </asp:TemplateField>

            <asp:TemplateField HeaderText="Price" SortExpression="Price">
                
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPrice" runat="server" ErrorMessage="<br/>Price is a required field" BackColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqPrice1" runat="server" ErrorMessage="<br/>Price is a required field" BackColor="Red" ControlToValidate="txtPrice" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </FooterTemplate>

            </asp:TemplateField>

            <asp:TemplateField HeaderText="Stock" SortExpression="Stock">
                
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Stock") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqStock" runat="server" ErrorMessage="<br/>Stock is a required field" BackColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqStock1" runat="server" ErrorMessage="<br/>Stock is a required field" BackColor="Red" ControlToValidate="txtStock" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </FooterTemplate>

            </asp:TemplateField>

        </Columns>

</asp:GridView>

                <asp:ValidationSummary ValidationGroup="Insert" ID="ValidationSummary1" runat="server" />

                <asp:ValidationSummary ID="ValidationSummary2" runat="server" />


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

    <br />
    <br />
</asp:Content>

<%@ Page Title="product" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="_1526903_J30706_CO5027.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="content5">
	<h1 style="text-align:left"> Product </h1>
			<table>
				<tr>
					<td>
					<a href="product1.aspx"><img src="images/clothes1.jpg" alt="clothes1" width="350" height="350" onclick="openModal();currentSlide(1)" class="hover-shadow cursor"></a></td>
					<td>
					<a href="product2.aspx"><img src="images/clothes2.jpg" alt="clothes2" width="350" height="350" onclick="openModal();currentSlide(2)" class="hover-shadow cursor"></a></td>
					<td>
					<a href="product3.aspx"><img src="images/clothes3.jpg" alt="clothes3" width="350" height="350" onclick="openModal();currentSlide(3)" class="hover-shadow cursor"></a></td>
				</tr>	
				<tr>	
					<td>
					<a href="product4.aspx"><img src="images/clothes4.jpg" alt="clothes4" width="350" height="350" onclick="openModal();currentSlide(4)" class="hover-shadow cursor"></a></td>
					<td>
					<a href="product5.aspx"><img src="images/clothes5.jpg" alt="clothes5" width="350" height="350" onclick="openModal();currentSlide(5)" class="hover-shadow cursor"></a></td>
					<td>
					<a href="product6.aspx"><img src="images/clothes6.jpg" alt="clothes6" width="350" height="350" onclick="openModal();currentSlide(6)" class="hover-shadow cursor"></a></td>
				</tr>	
				
			</table>			


		</div>
	  
</asp:Content>

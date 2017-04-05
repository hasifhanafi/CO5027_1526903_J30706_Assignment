<%@ Page Title="product2" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product2.aspx.cs" Inherits="_1526903_J30706_CO5027.product2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
	<nav style="height: 37px">		
		<a href="product.aspx">Back</a>
			
	</nav>
	
<h1>Product:</h1>

    <!-- This lightbox below below is from https://www.w3schools.com/howto/howto_js_lightbox.asp -->

	<div class="content" style="text-align: center">
	<table id="table1">
				<tr>
					<td>
					<img src="images/clothes2.jpg" alt="clothes2" width="450" height="450" onclick="openModal();currentSlide(1)" class="hover-shadow cursor"></td>
				</tr>
	
	
			<table class="about-style2"  style="width: 1001px; height: 610px">
			<tr>
				<th class="about-style5" style="width: 146px">Brand:</th> 
				<td class="about-style4">Guccui</td>
			</tr>
			<tr>
				<th class="about-style5" style="width: 146px">Colour:</th> 
				<td class="about-style4">White, Blue (Patterns)</td>
			</tr>
			<tr>
				<th class="about-style5" style="width: 146px">Care Label:</th> 
				<td class="about-style4"><br/>Machine wash warm inside out
											<br/>Wash dark colors separately
											<br/>Dry promptly
											<br/>Non-chlorine bleach if necessary
											<br/>Tumble dry low
											<br/>Cool iron
											<br/>Do not iron on prints
											<br/>Dry clean</td>
			</tr>
			<tr>
				<th class="about-style5" style="width: 146px">Material:</th> 
				<td class="about-style4">95% Cotton, 5% Elastane</td>
			</tr>
			<tr>
				<th class="about-style5" style="width: 146px">Size Available:</th> 
				<td class="about-style4">XS, S, M, L, XL </td>
			</tr>
			<tr>
				<th class="about-style5" style="width: 146px">Production Company:</th> 
				<td class="about-style4">Paris, France </td>
			</tr>
			<tr>
				<th class="about-style5" style="width: 146px">Price:</th> 
				<td class="about-style4">$110</td>
			</tr>
			
			<div id="myModal" class="modal">
								<span class="close cursor" onclick="closeModal()">&times;</span>
									<div class="modal-content">

									<div class="mySlides">
									<div class="numbertext">1 / 15</div>
										<img src="images/clothes2.jpg" alt="clothes2" style="width:100%; height:850px;">
									</div>
	</div>
							
							

		</table>
	
	<script>
	
function openModal() {
  document.getElementById('myModal').style.display = "block";
}

function closeModal() {
  document.getElementById('myModal').style.display = "none";
}

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
</script>



</asp:Content>

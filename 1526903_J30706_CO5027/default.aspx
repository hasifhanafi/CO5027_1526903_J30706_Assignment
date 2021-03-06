﻿<%@ Page Title="home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1526903_J30706_CO5027.Admin._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   <!-- The JavaScript and CSS below is from http://www.menucool.com/responsive-slider -->

    <script src="JavaScript/slideshows/ninja-slider.js"></script>
    <link href="JavaScript/slideshows/ninja-slider.css" rel="stylesheet" />
    <script src="JavaScript/slideshows/thumbnail-slider.js"></script>
    <link href="JavaScript/slideshows/thumbnail-slider.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- This slideshow below is from http://www.menucool.com/responsive-slider -->

<div class="content" style="text-align: center">	
	
	<h1 style="text-align:left"> Clothing4Men </h1>


        <div id='ninja-slider'>
        <div>
            <div class="slider-inner">
                <ul>
                    <li><a class="ns-img" href="images/clothes11.jpg"></a></li>
                    <li><a class="ns-img" href="images/clothes12.jpeg"></a></li>
                    <li><a class="ns-img" href="images/clothes13.jpg"></a></li>
                    <li><a class="ns-img" href="images/clothes7.jpg"></a></li>
                    <li><a class="ns-img" href="images/clothes8.jpg"></a></li>
                    <li><a class="ns-img" href="images/clothes9.jpg"></a></li>
                    
                </ul>
                <div class="fs-icon" title="Expand/Close"></div>
            </div>
            <div id="thumbnail-slider">
                <div class="inner">
                    <ul>
                        <li>
                            <a class="thumb" href="images/clothes11.jpg"></a>
                            <span>1</span>
                        </li>
                        <li>
                            <a class="thumb" href="images/clothes12.jpeg"></a>
                            <span>2</span>
                        </li>
                        <li>
                            <a class="thumb" href="images/clothes13.jpg"></a>
                            <span>3</span>
                        </li> 
                         <li>
                            <a class="thumb" href="images/clothes7.jpg"></a>
                            <span>4</span>
                        </li>
                        <li>
                            <a class="thumb" href="images/clothes8.jpg"></a>
                            <span>5</span>
                        </li>
                        <li>
                            <a class="thumb" href="images/clothes9.jpg"></a>
                            <span>6</span>
                        </li>    
                    </ul>
                </div>
            </div>
        </div>
    </div>

            <br /> 

	<!-- This lightbox below below is from https://www.w3schools.com/howto/howto_js_lightbox.asp -->
		<h2>Product:</h2>

           <br /> 
 
			<table id="table1">
				<tr>
					<td>
					<img src="images/clothes1.jpg" alt="clothes1" width="350" height="350" onclick="openModal();currentSlide(1)" class="hover-shadow cursor" id="ZaloraA" />
                        <div class="label">ZaloraA (BND110) </div>
					</td>
				
                    <td>
					<img src="images/clothes2.jpg" alt="clothes2" width="350" height="350" onclick="openModal();currentSlide(2)" class="hover-shadow cursor" id="Guccui" />
                        <div class="label">Guccui (BND110) </div>
                    </td>
					
                    <td>
					<img src="images/clothes3.jpg" alt="clothes3" width="350" height="350" onclick="openModal();currentSlide(3)" class="hover-shadow cursor" id="Cotton ONz" />
                        <div class="label">Cotton ONz (BND110) </div>
                    </td>
				</tr>
                	<tr>
					<td>
					<img src="images/clothes4.jpg" alt="clothes4" width="350" height="350" onclick="openModal();currentSlide(1)" class="hover-shadow cursor"/ id="ZaloraZ">
                        <div class="label">ZaloraZ (BND110) </div>
					</td>
					
                    <td>
					<img src="images/clothes5.jpg" alt="clothes5" width="350" height="350" onclick="openModal();currentSlide(2)" class="hover-shadow cursor" id="Guccung" />
                        <div class="label">Guccung (BND110) </div>
                    </td>
					
                    <td>
					<img src="images/clothes6.jpg" alt="clothes6" width="350" height="350" onclick="openModal();currentSlide(3)" class="hover-shadow cursor" id="Guccie" />
                        <div class="label">Guccie (BND110) A</div>
				
                </tr>

				</table>
  

      <asp:Repeater ID="rptrProduct" runat="server" DataSourceID="producttDataSource1">
        <HeaderTemplate><div class="about-style1"></HeaderTemplate>
            <ItemTemplate>
                <li>
                    <a href="<%# Eval ("Id", "productdetail.aspx?Id={0}") %>"> <%#Eval("Name") %>
                    </a>
                </li>
            </ItemTemplate>
            <FooterTemplate></div></FooterTemplate>
    </asp:Repeater>
		
   
		
    <asp:SqlDataSource ID="producttDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526903_j30706_co5027_asgConnectionString2 %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>



				<div id="myModal" class="modal">
								<span class="close cursor" onclick="closeModal()">&times;</span>
									<div class="modal-content">

									<div class="mySlides">
									<div class="numbertext">1 / 15</div>
										<img src="images/clothes1.jpg" alt="clothes1" style="width:100%; height:850px;">
							</div>

									<div class="mySlides">
									<div class="numbertext">2 / 15</div>
										<img src="images/clothes2.jpg" alt="clothes2" style="width:100%; height:850px;">
							</div>

									<div class="mySlides">
									<div class="numbertext">3 / 15</div>
										<img src="images/clothes3.jpg" alt="clothes3" style="width:100%; height:850px;">
							</div>
                                        	<div class="mySlides">
									<div class="numbertext">1 / 15</div>
										<img src="images/clothes4.jpg" alt="clothes4" style="width:100%; height:850px;">
							</div>

									<div class="mySlides">
									<div class="numbertext">2 / 15</div>
										<img src="images/clothes5.jpg" alt="clothes5" style="width:100%; height:850px;">
							</div>

									<div class="mySlides">
									<div class="numbertext">3 / 15</div>
										<img src="images/clothes6.jpg" alt="clothes6" style="width:100%; height:850px;">
							</div>

							
							<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
							<a class="next" onclick="plusSlides(1)">&#10095;</a>

                                    </div>
                    </div>

			
    
  
		
   
		
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
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        captionText.innerHTML = dots[slideIndex - 1].alt;
    }
</script>		
		
</div>
    
</asp:Content>




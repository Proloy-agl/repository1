<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="CMDB2.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <title>magneto</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
      <link href="css_ms/reset_ms.css" rel="stylesheet"/>
      <link href="css_ms/style_ms.css" rel="stylesheet"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet"/>
       <style>

            body {
            
            background: #fff;
        }
        input[type="submit"]:focus {
    outline: 0px!important;
}
             .container-wrapper {

     background: #fff;
 }
            .main-containt{
     width:1100px!important;
     margin: 0 auto;
     position:relative;
	 padding-bottom:30px;
}

.card {
    min-height: 23.38rem;
    box-shadow: 0 0.125rem 0.625rem 0 rgba(0,0,0,0.2);
    background: #fff;
	position:relative;

}
.card-on-section {
	float: left;
    width: 45.6%;
    height: 428px;
    position: relative;
    margin: 0 0.5rem 0rem 0.5rem;
    background: #fff;
    border: solid 1px #d8d8d8;
    overflow: hidden;
    margin: -66px 2.5% 0 2.9%;
    border-top: 0;
}



.sfc-card-img {
    height: inherit;
    overflow: hidden;
}

img.lazy-removed {
    width: 100%;
    height: 100%;
    object-fit: cover;
    min-height: inherit;
}
img.lazy-removed {
    -webkit-transition: opacity 0.75s ease-in;
    -moz-transition: opacity 0.75s ease-in;
    -ms-transition: opacity 0.75s ease-in;
    -o-transition: opacity 0.75s ease-in;
    transition: opacity 0.75s ease-in;
    opacity: 1;
    min-height: inherit;
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.sfc-card-img img {
    height: 100%;
    width: 100%;
    object-fit: cover;
    border: none;
	object-position: top center;
}

.col-right-ma
{
    margin-right: 0px;
    margin-left:0;

}


.sfc-card-content {
    position: absolute;
    bottom: 0;
    height: 162px;
    opacity: 0.9;
    background-color: #fff;
    text-align: left;
    width: 100%;
}

.sfc-card-title {
    /* height: 52px; */
    font-size: 21px;
    /* line-height: 1.18; */
    text-align: left;
    color: #474747;
    overflow: hidden;
    width: auto;
    margin: 7px 20px 18px 20px;
    max-width: 322px;

}
.sfc-card-title a{
    color:#23527c;
}
.sfc-card-title a:hover{
color:black;
}
.sfc-card-desc {
    color: ##6b6b6b;
    font-size: 16px;
    font-weight: 400;
    overflow: hidden;
    line-height: 1.3;
    height: auto;
    max-height: 85px;
    width: auto;
    padding: 0px 20px 0px 20px;

}
	.sfc-card-content:before {
    position: absolute;
    display: block;
    content: " ";
    bottom: 162px;
    left: 50%;
    border-bottom: 10px solid #fff;
    border-right: 10px solid transparent;
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -ms-transform: rotateY(180deg);
    transform: rotateY(180deg);
    width: 50%;
}
.sfc-card-content:after {
    position: absolute;
    display: block;
    content: " ";
    bottom: 162px;
    right: 50%;
    border-bottom: 10px solid #fff;
    border-right: 10px solid transparent;
    width: 50%;
}

#overlay {
  position: fixed;
  display: none;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0,0,0,0.8);
  z-index:999;
  cursor: pointer;
}

#text{
  position: absolute;
  top: 50%;
  left: 50%;
  font-size: 50px;
  color: white;
  transform: translate(-50%,-50%);
  -ms-transform: translate(-50%,-50%);
}
.btnOver {
  background-color: #f4511e;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 1;
  transition: 0.3s;
}

.btnOver:hover {opacity: 0.6}

.buttonCard{
    background-color:transparent;
}
.navBar {

    background-image: linear-gradient(to right, #001CB0, #00DFED);
    height: 40px;
    margin-top: 12px;
    text-align:right;
}
.modal-backdrop
{
    opacity:0.8 !important;
}

 .newbutton
 {
     position:absolute;
     right:0;
     z-index:99;
    padding: 0px 18px;
    font-size: 16px;
    height: 34px;
    font-weight: normal;
    border: 0;
    float: right;
    margin-right:8px;

 }

 .footer {
            height: 66px;
            clear: both;
            background-color: #c4c4c4;
            font-size: 14px;
            line-height: 66px;
            position: relative !important;
            padding-left: 15px;
            text-align:center;
        }

       </style>
       <script>
function on() {
  document.getElementById("overlay").style.display = "block";
}

function off() {
  document.getElementById("overlay").style.display = "none";
}
</script>
   </head>
   <body>
      <form runat="server">
         <div class="container-wrapper">
           <div class="top-part">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Photos and Logos/logo.png" Width="86px" class="logo" />
            <asp:Image ID="Image7" runat="server" ImageUrl="~/Photos and Logos/magneto-logo.png"  class="logo1" />
            &nbsp
        </div>
            <div>
               <nav class="navBar">
                   <asp:Label ID="Label4" runat="server" ForeColor="White"></asp:Label>
                  <asp:Image ID="Image3" runat="server" ImageUrl="~/Photos and Logos_ms/user-icon.png"  class="user"  />
                   
                  <div class="clear"></div>
               </nav>
            </div>
            <div class="banner-containt">
               <div class="banner">
                   <div class="banner-text"><%--<asp:Image ID="Image1" runat="server" ImageUrl="~/Photos and Logos/magneto.png"/>--%>AGL Next Gen CMDB</div>
                  <div id="myCarousel" class="carousel slide" data-ride="carousel">
                     <!-- Indicators -->
                     <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                     </ol>
                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                        <div class="item active">
                           <asp:Image ID="Image11" runat="server" ImageUrl="~/Photos and Logos_ms/1.jpg" style="width:100%;" />
                        </div>
                        <div class="item">
                           <asp:Image ID="Image12" runat="server" ImageUrl="~/Photos and Logos_ms/2.jpg" style="width:100%;" />
                        </div>
                        <div class="item">
                           <asp:Image ID="Image4" runat="server" ImageUrl="~/Photos and Logos_ms/3.jpg" style="width:100%;"   />
                        </div>
                         <div class="item">
                           <asp:Image ID="Image1" runat="server" ImageUrl="~/Photos and Logos_ms/4.jpg" style="width:100%;"   />
                        </div>
                         <div class="item">
                           <asp:Image ID="Image8" runat="server" ImageUrl="~/Photos and Logos_ms/5.jpg" style="width:100%;"   />
                        </div>
                         <div class="item">
                           <asp:Image ID="Image9" runat="server" ImageUrl="~/Photos and Logos_ms/6.jpg" style="width:100%;"   />
                        </div>
                         <div class="item">
                           <asp:Image ID="Image10" runat="server" ImageUrl="~/Photos and Logos_ms/7.jpg" style="width:100%;"   />
                        </div>
                         <div class="item">
                           <asp:Image ID="Image13" runat="server" ImageUrl="~/Photos and Logos_ms/8.jpg" style="width:100%;"   />
                        </div>
                         <div class="item">
                           <asp:Image ID="Image14" runat="server" ImageUrl="~/Photos and Logos_ms/9.jpg" style="width:100%;"   />
                        </div>
                         <div class="item">
                           <asp:Image ID="Image15" runat="server" ImageUrl="~/Photos and Logos_ms/10.jpg" style="width:100%;"   />
                        </div>
                         <div class="item">
                           <asp:Image ID="Image16" runat="server" ImageUrl="~/Photos and Logos_ms/11.jpg" style="width:100%;"   />
                        </div>
                         <div class="item">
                           <asp:Image ID="Image17" runat="server" ImageUrl="~/Photos and Logos_ms/12.jpg" style="width:100%;"   />
                        </div>

                     </div>
                     <!-- Left and right controls -->
                     <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                     <span class="glyphicon glyphicon-chevron-left"></span>
                     <span class="sr-only">Previous</span>
                     </a>
                     <a class="right carousel-control" href="#myCarousel" data-slide="next">
                     <span class="glyphicon glyphicon-chevron-right"></span>
                     <span class="sr-only">Next</span>
                     </a>
                  </div>
                  <div class="banner-logo">
                     <asp:Image ID="Image5" runat="server" ImageUrl="~/Photos and Logos_ms/agl-logo2.png"    />
                  </div>
               </div>
            </div>
            <div class="main-containt">
		
		
		
			<div class="card card-on-section"> 
			    <div class="border1"></div>
				<div class="sfc-card-img" style="display: block;"> 
					<picture>
                            <asp:Image ID="Im1" runat="server" ImageUrl="~/Photos and Logos/3.jpg"  class="lazy-removed"  />
						 
					</picture> 
				</div> 
				<div class="sfc-card-content"> 
					<div class="sfc-card-title">
                        
                        <asp:LinkButton ID="LinkButton2"  runat="server" data-toggle="modal" data-target="#myModal">I am in process of creating a new CR</asp:LinkButton> 
					</div>           
					<div class="sfc-card-desc">Browse through this link for onboarding New Application/Infrastructures and Mapping of Relationships</div> 
				</div>
			</div>
		
			<div class="card card-on-section col-right-ma">
				<div class="border1"></div>			
				<div class="sfc-card-img" style="display: block;"> 
					<picture>    
						 <asp:Image ID="Image6" runat="server" ImageUrl="~/Photos and Logos/8.jpg"  class="lazy-removed"  />
					</picture> 
				</div> 
				<div class="sfc-card-content"> 
					<div class="sfc-card-title">
                       
                        <asp:Button ID="Button1" runat="server" CssClass="button-text"  Text="I want to update my existing CR" OnClick="Button1_Click" />
                        
					</div> 
					<div class="sfc-card-desc">Do you wish to change the Pre-entered attributes for your Open CR.</div> 
				</div>
			</div>
			<div class="clear"></div>
		
              
		
		</div>
         </div>
            <div class="footer">
            
            <div><b>Administered by:</b> Service Experience Team, AGL e: serviceexperience@agl.com.au</div>
        </div> 
          <div id="overlay" onclick="off()">
  <div id="text">I want to  <br />
     
   
                  <%--<asp:Button ID="Button1" runat="server" CssClass="btnOver" Text="CR Number"  />
                  <asp:Button ID="Button2" runat="server" CssClass="btnOver"  Text="Application Name"  />
                  <asp:Button ID="Button3" runat="server" CssClass="btnOver"  Text="Infra Name"/>--%>
             
  </div>
              
</div>

        <div class="container">

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Identify CI impact</h4>
        </div>
          <div class="new-box">
                    <div class="checkbox-area">
                       
                        <asp:CheckBox ID="CheckBox6" runat="server" value="1" />
                        <asp:Label ID="Label1" runat="server" Text="Add New Application"></asp:Label>
                    </div>
              <div class="clear"></div>
                    <div class="checkbox-area">
                        <asp:CheckBox ID="CheckBox8" runat="server" value="1" />
                        <asp:Label ID="Label3" runat="server" Text="Application to Infrastructure Relationship"></asp:Label>
                    </div>
              <div class="clear"></div>
                    <div class="checkbox-area">
                        <asp:CheckBox ID="CheckBox7" runat="server" value="1" />
                        <asp:Label ID="Label2" runat="server" Text="Add New Infrastructure"></asp:Label>
                    </div>
              <div class="clear"></div>
                    <div class="checkbox-area">
                        <asp:CheckBox ID="CheckBox9" runat="server" value="1" />
                        <asp:Label ID="Label9" runat="server" Text="Infrastructure to Infrastructure Relationship"></asp:Label>
                    </div>
              <div class="clear"></div>

                   <div class="checkbox-area">
                        <asp:CheckBox ID="CheckBox10" runat="server" value="1" />
                        <asp:Label ID="Label10" runat="server" Text="Decommission"></asp:Label>
                    </div>
                   
                   <div class="clear"></div>

                </div>
        <div class="modal-body new-box-container">
         
        </div>
        <div class="modal-footer">
             <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/Photos and Logos/m-logo1.png"  class="logo1" />--%>
             <asp:Image ID="Image23" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" class="logo1" />
          <%--<button type="button" class="button1" data-dismiss="modal" onclick="">Submit</button>--%>
            <asp:Button ID="Button2" runat="server" Text="Submit"  class="button1 newbutton" OnClick="modal_Submit" />
        </div>
      </div>
      
    </div>
  </div>

 

  
</div>

      </form>
   </body>
</html>


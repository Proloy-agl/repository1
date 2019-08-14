<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Choice.aspx.cs" Inherits="CMDB2.WebForm1" %> 
<!DOCTYPE html> <html xmlns="http://www.w3.org/1999/xhtml"> <head runat="server">
     <link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet">
     <style>

html, body, div, span, applet, object, iframe,h1, h2, h3, h4, h5, h6, p, blockquote, pre,a, abbr, acronym, address, big, cite, code,
del, dfn, em, font, img, ins, kbd, q, s, samp,small, strike, strong, sub, sup, tt, var,b, u, i, center,dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,table, caption, tbody, tfoot, thead, tr, th, td {
  background: transparent;
  border: 0;
  margin: 0;
  padding: 0;
  vertical-align: baseline; 
  list-style:none;
  font-weight:normal;
   word-wrap:break-word;
  overflow-wrap: break-word;
  word-break:normal;
  }
         
body{
    font-family: 'Titillium Web', sans-serif;
    padding:0;
    margin:0;
    background:#ccc;
} 
.clearfix::after {
    clear:both!important;
}


.container-wrapper
{
    width:100%;
    margin:0 auto;
    background:#fff;
}

.navBar {

    background-image: linear-gradient(to right, #001CB0, #00DFED);
    height: 40px;
    margin-top: 12px;
}


.clearfix {
    content: "";
    clear: both;
    margin: 0;
    padding: 0;
}

.logo {
    float: left;
    margin:6px 20px 0 20px;

}
.logo1 {
    float: left;
    margin:22px 0px 0 20px;

}
.top-part{
        font-size:57px;
    font-weight:bold;
    line-height:88px; 
    color:#0075CC; 
}

.clear {
    clear: both;
    margin: 0;
    padding: 0;
    height: 0;
}
.container
{
    padding:20px;
    min-height:480px;
   
}

.form-content {
    border: 3px solid #A7A9B3;
    border-radius: 6px;
    padding:26px;
    padding-top:15px;
    width: auto;
    height: auto;
    box-shadow: 0 15px 25px rgba(0, 0, 0, .25);
    margin-top: 17px;
}

.heading1{
    color: #001CB0;
    font-size: 20px;
    margin-top:0;
    font-weight:bold;
    line-height:40px;
    margin-left:2px;
}
.box-area
{
    background:#0075cc;
     /*background-image: linear-gradient(#EFF0F4, #D6D9E0);*/
    padding:30px 20px;
    list-style:none;
    border-radius: 6px;
}
.box-area ul{
    list-style:none;
    list-style-type:none;
    margin-bottom:30px;
}
.box-area ul li{
    float:left;
    width:50%;
    margin-bottom:17px;
    font-size:16px;
    color:#fff;

}
.box-area ul li span{
    padding-left:10px;
}

.button1{
    border-radius:7px;
    padding: 7px 14px;
    font-size: 16px;
   
    background-image: linear-gradient(#0075CC, #00DFED);
    margin:15px 0px 10px 0;
    float:right;
    height: 40px;
    margin-top: 12px;
    color: white;
    box-shadow:0;
    font-weight:bold;
    cursor:pointer;

    border:0;
}



.button1:hover {

    color: white;
     background-image:none;
    background-color: #0075CC;
    border:0;
}

.text1
{
    font-size:15px;
  
    line-height:22px;
    margin-bottom:20px
}
.text1 p{

    font-size:16px;
    margin-bottom:12px;
    color: #0075CC;
      font-weight:bold;
}
.container1{
    position:absolute;
    left :0;
    top :0;
    width: 100%;
    height: 100vh;
    animation: animate 16s ease-in-out infinite;
    
}
.Xbutton {
       display: inline-block;
    padding: 15px 25px;
    font-size: 19px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    outline: none;
    color: #fff;
    background-image: linear-gradient(#00DFED , #0075CC);
    border: none;
    border-radius: 11px;
    box-shadow: 0px 5px 4px -1px #999;
    margin-right: 7px;
    font-family: 'Titillium Web', sans-serif;
}

.Xbutton:hover {background-image:none;
    background-color: #0075CC;}

.Xbutton:active {
  background-image:none;
    background-color: #0075CC;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

/*.text1 .textP
{
    padding:15px 0;
    font-weight:normal!important;
    color:#ccc!important;
}*/

@keyframes animate {
    0%{
        background-image: url("~/Photos and Logos/front1.jpg")
    }
    50%{
        background-image: url("~/Photos and Logos/front4.jpg")
    }
}
</style> 
    <title></title>
</head>

    <body >
   <form id="form2" runat="server">  
         
        <div class="container-wrapper">

        <div class="top-part">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Photos and Logos/logo.png" Width="86px" class="logo" />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Photos and Logos/m-logo1.png"  class="logo1" />
            &nbsp
        </div>
        <div>
            <nav class="navBar"></nav>
        </div>


    <div class="container">
    <div class="text1">

        <p>Welcome User</p>
        <div>Your CR will now be audited to ensure you updated the impacted Configuration item properly in CMDB. Please select the type of Impact that is applicable for your changes.<br />
            
       You may select options as applicable.
         </div>
    </div>
   
    <asp:Panel ID="P1" runat="server" Visible="false">
        <div>
            <fieldset class="form-content">
            <legend class="heading1">Please check all the boxes applicable for your CR</legend>


            <div class="box-area">

                <ul>
                    <li>
                       
                        <asp:CheckBox ID="CheckBox1" runat="server" value="1" />
                        <asp:Label ID="Label1" runat="server" Text="Add New Application"></asp:Label>
                    </li>

                    <li>
                        <asp:CheckBox ID="CheckBox3" runat="server" value="1" />
                        <asp:Label ID="Label3" runat="server" Text="Application to Infrastructure Relationship"></asp:Label>
                    </li>
                    <li>
                        <asp:CheckBox ID="CheckBox2" runat="server" value="1" />
                        <asp:Label ID="Label2" runat="server" Text="Add New Infrastructure"></asp:Label>
                    </li>
                    <li>
                        <asp:CheckBox ID="CheckBox4" runat="server" value="1" />
                        <asp:Label ID="Label4" runat="server" Text="Infrastructure to Infrastructure Relationship"></asp:Label>
                    </li>

                    <li>
                        <asp:CheckBox ID="CheckBox5" runat="server" value="1" />
                        <asp:Label ID="Label5" runat="server" Text="Decommission"></asp:Label>
                    </li>
                   
                   

                </ul>
                <div class="clear"></div>

            </div>
                 <asp:Button ID="Button1" runat="server" Text="Proceed" CssClass="button1" OnClick="Button1_Click" />

        
             </fieldset>
            <br /><br /><br />
        </div>
   </asp:Panel> 
        <asp:Panel ID="P2" runat="server">
            <asp:Button ID="Button2" CssClass="Xbutton" runat="server" Text="Create New Entry " OnClick="Button2_Click" />
            <asp:Button ID="Button3" CssClass="Xbutton" runat="server" Text="Amendment on Existing CR" OnClick="Button3_Click"/>
            

        </asp:Panel>
    </div>
</div>
   </form>           
</body>
</html>

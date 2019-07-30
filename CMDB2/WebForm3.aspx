<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="CMDB2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
            

  
  <title>Forms</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
                
                body {
                    font-family: 'Titillium Web', sans-serif;
                    padding: 0;
                    margin: 0;
                    background: #ccc;
                }
                
                .clearfix::after {
                    clear: both!important;
                }
                
                .container-wrapper {
                    width:100%;
                    margin: 0 auto;
                    background: #fff;
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
                    margin: 6px 30px 0 20px;
                }
                
                .top-part {
                    font-size: 57px;
                    font-weight: bold;
                    line-height: 88px;
                    color: #0075CC;
                }
                
                .clear {
                    clear: both;
                    margin: 0;
                    padding: 0;
                    height: 0;
                }
                
                .container {
                    padding: 20px;
                    min-height:580px;
                }
                
                .form-content {
                    border: 3px solid #A7A9B3;
                    border-radius: 6px;
                    padding: 15px 0 20px 18px;
                    width: auto;
                    height: auto;
                    box-shadow: 0 15px 25px rgba(0, 0, 0, .25);
                    margin-top: 17px;
                    margin-bottom:40px;
                }
                
                .heading1 {
                    color: #001CB0;
                    font-size: 20px;
                    margin-top: 0;
                    font-weight: bold;
                    line-height: 40px;
                }
                
                .box-area {
                    background: #EFF0F4;
                    padding: 16px;
                    list-style: none;
                    border-radius: 6px;
                }
                
                .button1 {
                    border-radius: 7px;
                    padding: 7px 14px;
                    font-size: 16px;
                    background-color: #0075CC;
                    margin-left: 57px;
                    height: 40px;
                    margin-top: 12px;
                    color: white;
                    box-shadow: 0;
                    font-weight: bold;
                    cursor: pointer;
                    background-image: none;
                    background-color: #0075CC;
                }
                
                .button1:hover {
                    color: white;
                    background-image: linear-gradient(#0075CC, #00DFED);
                }
                
                .button-box ul {
                    list-style: none;
                    list-style-type: none;
                    margin-bottom: 30px;
                }


                
                .button-box ul li {
                    float: left;
                    width: 28%;
                    min-height:80px;
                    margin-bottom: 25px;
                    font-size: 15px;
                    margin-right: 2%;
                    background: #fff;
                    box-shadow: 0px 3px 4px 0px #999;
                    border:1px solid #0075CC;
                    padding: 12px;
                    border-radius: 6px;
                    text-align:center;
                    cursor:pointer;
                }
                 
                .button-box ul li:hover {
                    
                    /*background: #0075CC;*/
                    box-shadow: 0px 3px 4px 0px #00DFED inset;
                    
                    color:#fff;
                    
                    cursor:pointer;
                }
                
                .button-box ul li .button {
                    background: none;
                    box-shadow: none;
                    border: 0;
                    font-size: 18px;
                    word-break: break-word;
                    overflow-wrap: break-word;
                    white-space: normal;
                    line-height:27px;
                    
                }

                    .button-box ul li .button:hover {
                        color:#333!important;
                    }
                
                /*.modal-box {
                    background-color: white;
                   
                    width: 550px;
                    height: auto;
                    top: 50%;
                    left: 50%!important;
                    border-radius: 12px 12px;
                    border: 3px solid #A7A9B3;
                    box-shadow: 0 15px 45px rgba(0, 0, 0, .25);
                    position: relative;
                    z-index: 1;
                    margin-left: -275px
                }*/
                
                .top-part12 {
                    font-size: 27px;
                    font-weight: bold;
                    line-height: 45px;
                    color: #fff;
                    background-image: linear-gradient(to right, #001CB0, #00DFED)!important;
                    border-radius: 8px 8px 0 0;
                    height: 50px;
                }
                
                .heading12 {
                    margin: 12px 0 10px 0;
                    font-weight: bold;
                    padding-left: 15px;
                    font-size: 14px;
                }
                
               .modal-containt {
                    background: #EFF0F4;
                    padding: 16px;
                    list-style: none;
                    border-radius: 6px;
                    margin: 12px;
                    border: 1px solid #ccc;
                    width: 92%;
                    padding-right: 0;
                }
                
                .modal-containt ul li {
                    list-style: none;
                    list-style-type: none;
                    float: left;
                    margin-right: 20px;
                    width: 100%;
                    margin-bottom: 10px;
                }
                
                .modal-containt ul li div {
                    float: left;
                    margin-left: 12px;
                    width: 45%;
                }
                
                .modal-containt ul li input {
                    border: 1px solid #A7A9B3;
                    border-radius: 6px;
                    height: 23px;
                    line-height: 23px;
                    width: 99.5%;
                    padding-left: .2%;
                }
                
                .width100 li div {
                    width: 92%!important;
                    margin-bottom: 5px!important;
                }
                
                .modal-containt ul li select {
                    border: 1px solid #A7A9B3;
                    border-radius: 6px;
                    height: 26px;
                    line-height: 26px;
                    width: 100%;
                }

                 .table-wrapper{
                    /*display: block;
                     white-space: nowrap;*/
                    overflow-x: auto;
                    width:94.5%;
                   
                }
                
                .modal-containt table {
                    margin:10px 0;
                    border: 1px solid #ccc;
                    border-left: 0;
                }
                
                .modal-containt table th {
                    background: #0075cc;
                    line-height: 20px;
                    color: #fff;
                }
                
                .modal-containt table th,
                .modal-containt table td {
                    border-bottom: 1px solid #ccc;
                    border-left: 1px solid #ccc;
                    line-height: 22px;
                    font-size: 13px;
                    font-weight: bold;
                    padding: 4px 10px;
                    text-align: center;
                }
                
                .button1 {
                    border-radius: 7px;
                    padding: 0px 14px;
                    font-size: 14px;
                    background-color: #0075CC;
                    margin: 15px 0px 10px 0;
                    float: right;
                    height: 30px;
                    margin-top: 12px;
                    color: white;
                    box-shadow: 0;
                    font-weight: bold;
                    cursor: pointer;
                    background-image: none;
                    background-color: #0075CC;
                    border: 0;
                    float: right;
                    margin-right: 27px;
                }
                
                .button1:hover {
                    color: white;
                    background-image: linear-gradient(#0075CC, #00DFED);
                    border: 0;
                }
            </style>
</head>
<body>

<div class="container-wrapper">

                <div class="top-part">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Photos and Logos/logo.png" Width="86px" class="logo" /> Magneto
                </div>
                <div>
                    <nav class="navBar"></nav>
                </div>

                <div class="container">
                    <fieldset class="form-content" />
                        <h1 class="heading1">Please Click on the boxes below to complete the details</h1>

                        <form id="form1" runat="server">

                            

                            <asp:Panel ID="Panel1" runat="server">
                                <div class="button-box">
                                    <ul>
                                        
                                         <asp:Panel ID="BPanel1" runat="server"> 
                                        <li>
                                                                                                
<button type="button" id="Button1" class="button" data-toggle="modal" data-target="#myModal">Onboarding New Application</button>
                                           <%-- <asp:Button ID="Button1" runat="server" Text="Onboarding New Application" class="button"  />         --%>                                   
                                        </li>
                                             </asp:Panel> 
                                         <asp:Panel ID="BPanel2" runat="server">
                                        <li>
                                           
                                            <button type="button" id="Button2" class="button" data-toggle="modal" data-target="#myModal2">Infrastructure is procured</button>  
                                                
                                            <%--<asp:Button ID="Button2" runat="server" Text="Infrastructure is procured" class="button"  />--%>
                                        </li>
                                              </asp:Panel>
                                          <asp:Panel ID="BPanel3" runat="server">
                                        <li>
                                           
                                            <button type="button" id="Button3" class="button" data-toggle="modal" data-target="#myModal3">Application to Infrastructure relationship</button> 
                                            <%--<asp:Button ID="Button3" runat="server" Text="Application to Infrastructure relationship" class="button" />--%>

                                        </li>
                                               </asp:Panel>
                                        <asp:Panel ID="BPanel4" runat="server">
                                        <li>
        
                                            <button type="button" id="Button4" class="button" data-toggle="modal" data-target="#myModal4">Infrastructure to Infrastructure relationship</button> 
                                            <%--<asp:Button ID="Button4" runat="server" Text="Infrastructure to Infrastructure relationship" class="button"  />--%>
                                        
                                        </li>
                                             </asp:Panel>
                                        <asp:Panel ID="BPanel5" runat="server">
                                        <li>
                                             
                                            <button type="button" id="Button5" class="button" data-toggle="modal" data-target="#myModal5">Decommission of Application</button>  
                                            <%--<asp:Button ID="Button5" runat="server" Text="Decommission of Application" class="button"  />--%>
                                        </li>
                                            </asp:Panel>
                                         <asp:Panel ID="BPanel6" runat="server">
                                        <li>
                                            
                                            <button type="button" id="Button13" class="button" data-toggle="modal" data-target="#myModal6">Update Application Attributes</button>  
                                           <%-- <asp:Button ID="Button13" runat="server" Text="Update Application Attributes" class="button" />--%>
                                              </li>
                                             </asp:Panel>
                                    </ul>
                                </div>

                            </asp:Panel>
        <%--</form>--%>
                        </div>
  <!-- Trigger the modal with a button -->
  <%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
          <div class="top-part12">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" /> Magneto
             <button type="button" class="close" data-dismiss="modal">&times;</button>                       
          </div>
        
                                <p class="heading12">Please enter the details for Application</p><br />

                                        <div class="modal-containt">

                                    <ul>
                                        <li>
                                            <div>
                                                <asp:Label ID="Label1" runat="server" Text="Application ID"></asp:Label>
                                            </div>
                                            <div>
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            </div>
                                        </li>
                                        <li>
                                            <div>
                                                <asp:Label ID="Label2" runat="server" Text="Application Category"></asp:Label>
                                            </div>

                                            <div>
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            </div>
                                        </li>
                                        <li>

                                            <div>
                                                <asp:Label ID="Label3" runat="server" Text="Application Complexity"></asp:Label>
                                            </div>

                                            <div>
                                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                            </div>
                                        </li>
                                        <li>

                                            <div>
                                                <asp:Label ID="Label4" runat="server" Text="Remedy Group"></asp:Label>
                                            </div>
                                            <div>
                                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                <br />
                                            </div>

                                        </li>
                                        <li>

                                            <div>
                                                <asp:Label ID="Label5" runat="server" Text="Environment Instance"></asp:Label>
                                            </div>

                                            <div>
                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                    <asp:ListItem>Prod</asp:ListItem>
                                                    <asp:ListItem>NonProd</asp:ListItem>
                                                    <asp:ListItem>Prod-NonProd</asp:ListItem>
                                                </asp:DropDownList>
                                                <br /> </div>
                                        </li>
                                        </ul>
                                        <div class="clear"></div>
                                    
                                    <asp:Button ID="Button6" runat="server" Text="Submit" CssClass="button1" />
                                    <div class="clear"></div>
                                </div>

       
      </div>
      
    </div>
  </div>
  <!-- Modal -->
    <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
       <div class="modal-content">
          <div class="top-part12">
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" /> Magneto
          <button type="button" class="close" data-dismiss="modal">&times;</button>                         
          </div>
                                <p class="heading12">Please complete the Infrastructure attribute details</p><br />

       <div class="modal-containt">
                                        <ul>
                                            <li>

                                                <div>
                                                    <asp:Label ID="Label6" runat="server" Text="CI Name"></asp:Label>
                                                </div>
                                                <div>
                                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                                </div>
                                            </li>
                                            <li>

                                                <div>
                                                    <asp:Label ID="Label7" runat="server" Text="System Environment"></asp:Label>
                                                </div>
                                                <div>
                                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <asp:Label ID="Label8" runat="server" Text="Primary Capability"></asp:Label>
                                                </div>
                                                <div>
                                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                                </div>
                                            </li>
                                            <li>

                                                <div>
                                                    <asp:Label ID="Label9" runat="server" Text="Owner"></asp:Label>
                                                </div>
                                                <div>
                                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                                </div>
                                            </li>
                                            <li>

                                                <div>
                                                    <asp:Label ID="Label10" runat="server" Text="Supported By"></asp:Label>
                                                </div>
                                                <div>
                                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                                </div>
                                            </li>
                                            <li>

                                                <div>
                                                    <asp:Label ID="Label11" runat="server" Text="System Role"></asp:Label>
                                                </div>
                                                <div>
                                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                                </div>
                                            </li>
                                            <li>

                                                <div>
                                                    <asp:Label ID="Label12" runat="server" Text="Site"></asp:Label>
                                                </div>
                                                <div>
                                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                                        <asp:ListItem>Site1</asp:ListItem>
                                                        <asp:ListItem>Site2</asp:ListItem>
                                                        <asp:ListItem>Site3</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </li>
                                            <li>

                                                <div>
                                                    <asp:Label ID="Label13" runat="server" Text="OEM Supported "></asp:Label>
                                                </div>
                                                <div>
                                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                                        <asp:ListItem>Yes</asp:ListItem>
                                                        <asp:ListItem>No</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="table-wrapper">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
                                            <Columns>
                                                <asp:BoundField DataField="CI_Name" HeaderText="CI_Name" SortExpression="CI_Name" />
                                                <asp:BoundField DataField="System_Env" HeaderText="System_Env" SortExpression="System_Env" />
                                                <asp:BoundField DataField="Primary_Cap" HeaderText="Primary_Cap" SortExpression="Primary_Cap" />
                                                <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
                                                <asp:BoundField DataField="Supported_By" HeaderText="Supported_By" SortExpression="Supported_By" />
                                                <asp:BoundField DataField="System_Role" HeaderText="System_Role" SortExpression="System_Role" />
                                                <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" />
                                                <asp:BoundField DataField="OEM_Supported" HeaderText="OEM_Supported" SortExpression="OEM_Supported" />
                                            </Columns>
                                        </asp:GridView>
                                            </div>

                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMDB_DB_DEVConnectionString %>" SelectCommand="SELECT * FROM [Infra_Att]"></asp:SqlDataSource>
                                        
                                        <asp:Button ID="Button7" runat="server" Text="Submit" class="button1"  />
                                        <div class="clear"></div>

                                    </div>
       
      </div>


      
    </div>
  </div>

  <!-- Modal -->
    <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
       <div class="modal-content">
          <div class="top-part12">
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" /> Magneto
              <button type="button" class="close" data-dismiss="modal">&times;</button>   
                                </div>
                                <p class="heading12">Application to Infrastructure Relationship</p><br />

        <div class="modal-body">
          <div class="modal-containt">
                                        <ul class="width100">
                                            <li>
                                                <div>
                                                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="clear"></div>
                                                <div style="text-align:center"><b>is hosted on </b></div>
                                                <div class="clear"></div>
                                                <div>
                                                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                                </div>
                                            </li>
                                        </ul>

                                        <asp:Button ID="Button8" runat="server" Text="Submit" CssClass="button1"  />
                                        <div class="clear"></div>
                                    </div>
        </div>
       
      </div>  
    </div>
  </div>
  <!-- Modal -->
    <div class="modal fade" id="myModal4" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
     <div class="modal-content">
          <div class="top-part12">
                                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" /> Magneto
              <button type="button" class="close" data-dismiss="modal">&times;</button>   
                                </div>
                                <p class="heading12">Infrastructure to Infrastructure Relationship</p><br />

        <div class="modal-body">
         <div class="modal-containt">
                                        <ul class="width100">
                                            <li>

                                                <div>
                                                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="clear"></div>

                                                <div style="text-align:center"><b>is linked to storage CI</b></div>
                                                <div class="clear"></div>
                                                <div>
                                                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>

                                                </div>
                                            </li>
                                        </ul>

                                        <asp:Button ID="Button9" runat="server" Text="Submit" class="button1"/>
                                        <div class="clear"></div>

                                    </div>
        </div>
       
      </div>  
    </div>
  </div>    
      <!-- Modal -->
    <div class="modal fade" id="myModal5" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
       <div class="modal-content">
          <div class="top-part12">
                                    <asp:Image ID="Image6" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" /> Magneto
              <button type="button" class="close" data-dismiss="modal">&times;</button>   
                                </div>
                               <p class="heading12">Type of Decommission being done</p><br />

        <div class="modal-body">
         <div class="modal-containt">
                                        <ul class="width100">
                                            <li>

                                                <div>
                                
                                
                              
                                    <asp:DropDownList ID="DropDownList4" runat="server">
                 <asp:ListItem>Physical</asp:ListItem>
                 <asp:ListItem>Logical</asp:ListItem>
             </asp:DropDownList>
                                                    </div>
                                                </li>
                                            </ul>
            
      <asp:Button ID="Button10" runat="server" Text="Submit"  class="button1"/>
            
                                    
                                        <div class="clear"></div>

                                    </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>  
    </div>
  </div>
      <!-- Modal -->
    <div class="modal fade" id="myModal6" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
<div class="top-part12">
   <asp:Image ID="Image7" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
   Magneto
   <button type="button" class="close" data-dismiss="modal">&times;</button> 
</div>
<p class="heading12">Please select the category of application details to be updated</p>
<br />
<div class="modal-body">
<div class="modal-containt">
<ul>
   <li>
      <div>
         <asp:Button ID="Button11" runat="server" Text="Application Attributes"  style="text-align:center" class="button1" />
      </div>
   </li>
   <li>
      <div>
         <asp:Button ID="Button12" runat="server" Text="Infrastructure attributes" style="text-align:center"  class="button1" />
      </div>
   </li>
   <li>
      <div>
         <asp:Button ID="Button14" runat="server" Text="Application to Infrastructure Relationship" style="text-align:center"  class="button1" />
      </div>
   </li>
   <li>
      <div>
         <asp:Button ID="Button15" runat="server" Text="Infrastructure to Infrastructure Attributes" style="text-align:center" class="button1" />
      </div>
   </li>
</ul>
             <%--                                   
              <asp:Button ID="Button11" runat="server" Text="Application Attributes"  style="text-align:center" class="button1" /><br />
              <asp:Button ID="Button12" runat="server" Text="Infrastructure attributes" style="text-align:center"  class="button1" /> <br />
              <asp:Button ID="Button14" runat="server" Text="Application to Infrastructure Relationship" style="text-align:center"  class="button1" /><br />
              <asp:Button ID="Button15" runat="server" Text="Infrastructure to Infrastructure Attributes" style="text-align:center" class="button1" /><br />--%>
            
                                    
                                        <div class="clear"></div>

                                    </div>
        </div>
       
      </div>  
    </div>
  </div>

</div>


      </form>
</body>
    </html>
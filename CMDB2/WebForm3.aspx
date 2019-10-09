<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="CMDB2.WebForm3"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>



    <title>Forms</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet" />
    <link href="style.css" rel="stylesheet"/>
   
    <style>
#myModal321 .new-box {
    min-height: 225px !important;
}

#myModal321 .new-box-container{
    min-height: 139px !important;
}

#myModal321 .big-btn  {
    color: white;
    background-image: linear-gradient(#0075CC, #00DFED);
    padding: 0px 25px;
    font-size: 21px;
    height: 53px;
    margin: 0;
    border: 1px solid #9c9c9c;
    border-radius: 0;
    height: 80px;
    margin-left: 20px;
    min-width: 40%;
    float:left;
}

    #myModal321 .big-btn:hover {
        color: white;
        background-image: none;
        background-color: #0075CC;
    }
    </style>
   
    <script>
        $(document).ready(function () {
            //$("#L1").mouseenter(function () {
            //    $("#L1").fadeTo("fast", 0.3);

            //});

            //$("#L1").mouseleave(function () {
            //    $("#L1").fadeTo("fast", 1);
            //});

            //$("#L2").mouseenter(function () {
            //    $("#L2").fadeTo("fast", 0.3);
            //});

            //$("#L2").mouseleave(function () {
            //    $("#L2").fadeTo("fast", 1);
            //});

            //$("#L3").mouseenter(function () {
            //    $("#L3").fadeTo("fast", 0.3);
            //});

            //$("#L3").mouseleave(function () {
            //    $("#L3").fadeTo("fast", 1);
            //});

            //$("#L4").mouseenter(function () {
            //    $("#L4").fadeTo("fast", 0.3);
            //});

            //$("#L4").mouseleave(function () {
            //    $("#L4").fadeTo("fast", 1);
            //});
            //$("#L5").mouseenter(function () {
            //    $("#L5").fadeTo("fast", 0.3);
            //});

            //$("#L5").mouseleave(function () {
            //    $("#L5").fadeTo("fast", 1);
            //});

            //$("#L6").mouseenter(function () {
            //    $("#L6").fadeTo("fast", 0.3);
            //});

            //$("#L6").mouseleave(function () {
            //    $("#L6").fadeTo("fast", 1);
            //});
        });

        function openModal() {
            $("#myModal123").modal('hide');
        }
        function pop(x) {
            if (x == 0) document.getElementById('myModal123').style.display = 'none';
            return;
        }
        function pop1(x) {
            if (x == 0) document.getElementById('myModal321').style.display = 'none';
            return;
        }
        function pop2(x) {
            if (x == 0) document.getElementById('myModal1to2').style.display = 'none';
            return;
        }
        function pop3(x) {
            if (x == 0) document.getElementById('myModal2to3').style.display = 'none';
          
            return;
        }
        function pop4(x) {
            if (x == 0) document.getElementById('myModal3to4').style.display = 'none';

            return;
        }
        function pop5(x) {
            if (x == 0) document.getElementById('Create').style.display = 'none';
            return;
        }

        function pop6(x) {
            if (x == 0)
                $('myModal3').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            return;
        }

        function pop7(x) {
            if (x == 0)
                $('myModal4').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            return;
        }

        function pop8(x) {
            if (x == 0)
                $('myModal').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            return;
        }
        function pop9(x) {
            if (x == 0)
                $('myModal2').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            return;
        }


        function myFunction() {
            var txt;
            if (confirm("Please confirm if you have completed all associated changes for your CR in Magneto")) {
                txt = "You pressed OK!";
                window.location.replace("http://aglitremedyuat.agl.com.au:8080/arsys ");
            } else {
                txt = "You pressed Cancel!";
            }
            
        }

    </script>
   
</head>
<body>

    <div id="D1" class="container-wrapper">

        <div class="top-part">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Photos and Logos/logo.png" Width="86px" class="logo" />
            <asp:Image ID="Image16" runat="server" ImageUrl="~/Photos and Logos/magneto-logo.png"  class="logo1" />
            &nbsp
        </div>
        <div>
            <nav class="navBar">
                
            </nav>
        </div>

        <div class="container">
            <fieldset class="form-content" />
            <legend class="heading1">Please Click on the boxes below to complete the details</legend>




            <form id="form1" runat="server">
                 <%--<asp:Panel ID="timeline" runat="server">
                                    <div class="timeline-container">
                                        <asp:Label ID="Label28" runat="server" CssClass="circle green-circle" ></asp:Label>
                                        <asp:Label ID="Label30" runat="server" CssClass="timeline green" ></asp:Label>
                                        <asp:Label ID="Label31" runat="server" CssClass="circle green-circle" ></asp:Label>
                                        <asp:Label ID="Label32" runat="server" CssClass="timeline" ></asp:Label>
                                        <asp:Label ID="Label33" runat="server" CssClass="circle" ></asp:Label>
                                        <asp:Label ID="Label34" runat="server" CssClass="timeline" ></asp:Label>
                                        <asp:Label ID="Label35" runat="server" CssClass="circle" ></asp:Label>

                                        </div>

                                </asp:Panel>
                        <div class="height"></div>--%>

                <asp:Panel ID="Panel1" runat="server">
                    <div class="button-box">
                       
                        <ul class="radio-design">
                            <asp:Panel ID="BPanel7" runat="server" Visible="false"> 
                                
                                <p class="text-label"><asp:Label  ID="Label29" runat="server" Text="Please select the appropriate nature for the decommission associated with your CR"></asp:Label></p>
                                <asp:RadioButtonList ID="DecomCBOX" runat="server">
                                    <asp:ListItem>Decommission Of Infrastructure</asp:ListItem>
                                  <%--  <asp:ListItem>Decommission Of Application</asp:ListItem>--%>
                                    <%--<asp:ListItem>Decommission of Application and Infrastructure</asp:ListItem>--%>
                                </asp:RadioButtonList>
                                
                            </asp:Panel>
                              
                            <asp:Panel ID="BPanel1" runat="server" CssClass="BoxF">

                              

                                <li id="L1">
                                     <div class="stage"><asp:Image ID="Image53" runat="server" ImageUrl="~/Photos and Logos/stage.png" Width="" />
                                         <div class="Snumber"><asp:Label ID="a1" runat="server" Text="1" Visible="false"></asp:Label></div>
                                     </div>
                         <asp:Panel ID="T1" Visible="false" runat="server"> 
                             <div class="filter">
                              <asp:Image ID="Image33" runat="server" ImageUrl="~/Photos and Logos/tick.png" Width="" />
                               
                            <%-- <span style="font-family: wingdings; font-size: 200%; color:green;">&#252;</span>--%></div></asp:Panel>  
                                    
                                    <div class="layer"></div>
                                    <asp:Image ID="Image8" runat="server" ImageUrl="~/Photos and Logos/AAtt.jpg" Width="" />
                                    <asp:Label ID="Label20" runat="server" Text="Label" CssClass="button">Application Attributes</asp:Label> 
                                     <div class="overlay">
                                         <div class="leftButton">
                                           <span id="LabelAA" class="heading9">Application Attributes</span>
                                  <button type="button" id="Button1" class="layer-button" data-toggle="modal" data-target="#myModal" runat="server">Create </button>
                                  <button type="button" id="Button13" class="layer-button" data-toggle="modal" data-target="#Help1" runat="server">Help</button>
                                            
                                             </div>
                                         
                                         </div>
                                    <%-- <asp:Button ID="Button1" runat="server" Text="Onboarding New Application" class="button"  />         --%>        
                                                              
                                </li>
                            </asp:Panel>
                            <asp:Panel ID="BPanel2" runat="server" CssClass="BoxF">
                                <li id="L2">
                                    <div class="stage"><asp:Image ID="Image54" runat="server" ImageUrl="~/Photos and Logos/stage.png" Width="" />
                                         <div class="Snumber"><asp:Label ID="b1" runat="server" Text="1" Visible="false"></asp:Label> <asp:Label ID="b2" runat="server" Text="2" Visible="false"></asp:Label></div>
                                     </div>
                           <asp:Panel ID="T2" Visible="false"  runat="server"> <div class="filter"> <asp:Image ID="Image34" runat="server" ImageUrl="~/Photos and Logos/tick.png" Width="" /><%--<span style="font-family: wingdings; font-size: 200%; color:green;">&#252;</span>--%></div></asp:Panel>          
                                    <div class="layer"></div>
                                    <asp:Image ID="Image9" runat="server" ImageUrl="~/Photos and Logos/infra.jpg" Width="" />
                                     <asp:Label ID="Label21" runat="server" Text="Label" CssClass="button">Infrastructure Attributes</asp:Label> 
                                    <div class="overlay">
                                         <div class="leftButton">
                                             <span id="LabelIA" class="heading9">Infrastructure Attributes</span>
                                    <button type="button" id="Button2" class="layer-button" data-toggle="modal" data-target="#myModal1to2" runat="server">Create New</button>
                                              <button type="button" id="Button18" class="layer-button" data-toggle="modal" data-target="#Help2" runat="server">Help</button>
                                             </div>
                                    </div>
                                    <%--<asp:Button ID="Button2" runat="server" Text="Infrastructure is procured" class="button"  />--%>
                                </li>
                            </asp:Panel>
                            <asp:Panel ID="BPanel3" runat="server" CssClass="BoxF">
                                <li id="L3">
                                    <div class="stage"><asp:Image ID="Image55" runat="server" ImageUrl="~/Photos and Logos/stage.png" Width="" />
                                         <div class="Snumber"><asp:Label ID="c1" runat="server" Text="1"  Visible="false"></asp:Label> <asp:Label ID="c2" runat="server" Text="2"  Visible="false"></asp:Label><asp:Label ID="c3" runat="server" Text="3"  Visible="false"></asp:Label></div>
                                     </div>
                             <asp:Panel ID="T3" Visible="false"  runat="server"><div class="filter"> <asp:Image ID="Image35" runat="server" ImageUrl="~/Photos and Logos/tick.png" Width="" /> <%--<span style="font-family: wingdings; font-size: 200%; color:green;">&#252;</span>--%></div></asp:Panel>           
                                    <div class="layer"></div>
                                    <asp:Image ID="Image10" runat="server" ImageUrl="~/Photos and Logos/3.jpg" Width="" />
                                     <asp:Label ID="Label22" runat="server" Text="Label" CssClass="button">Application to Infrastructure Relationship</asp:Label> 
                                    <div class="overlay">
                                         <div class="leftButton">
                                             <span id="LabelAi" class="heading9">Application to Infrastructure Relationship</span>
                                    <button type="button" id="Button3" class="layer-button" data-toggle="modal" data-target="#myModal123" runat="server">Create New</button>
                                              <button type="button" id="Button22" class="layer-button" data-toggle="modal" data-target="#Help3" runat="server">Help</button>
                                        </div>
                                        </div>
                                    <%--<asp:Button ID="Button3" runat="server" Text="Application to Infrastructure relationship" class="button" />--%>

                                </li>
                            </asp:Panel>
                            <asp:Panel ID="BPanel4" runat="server" CssClass="BoxF">
                                <li id="L4">
                                    <div class="stage"><asp:Image ID="Image56" runat="server" ImageUrl="~/Photos and Logos/stage.png" Width="" />
                                         <div class="Snumber"><asp:Label ID="d1" runat="server" Text="1" Visible="false"></asp:Label><asp:Label ID="d2" runat="server" Text="2" Visible="false"></asp:Label><asp:Label ID="d3" runat="server" Text="3" Visible="false"></asp:Label><asp:Label ID="d4" runat="server" Text="4" Visible="false"></asp:Label></div>
                                     </div>
                         <asp:Panel ID="T4" Visible="false"  runat="server"> <div class="filter"> <asp:Image ID="Image36" runat="server" ImageUrl="~/Photos and Logos/tick.png" Width="" /> <%--<span style="font-family: wingdings; font-size: 200%; color:green;">&#252;</span>--%></div></asp:Panel> 
                                    <div class="layer"></div>
                                    <asp:Image ID="Image11" runat="server" ImageUrl="~/Photos and Logos/4.jpg" Width="" />
                                     <asp:Label ID="Label23" runat="server" Text="Label" CssClass="button">Infrastructure to Infrastructure Relationship</asp:Label> 
                                    <div class="overlay">
                                         <div class="leftButton">
                                             <span id="Labelii" class="heading9">Infrastructure to Infrastructure Relationship</span>
                                    <button type="button" id="Button4" class="layer-button" data-toggle="modal" data-target="#myModal321" runat="server">Create New</button>
                                              <button type="button" id="Button23" class="layer-button" data-toggle="modal" data-target="#Help4" runat="server">Help</button>
                                        </div>
                                        </div>
                                    <%--<asp:Button ID="Button4" runat="server" Text="Infrastructure to Infrastructure relationship" class="button"  />--%>
                                        
                                </li>
                            </asp:Panel>
                            <asp:Panel ID="BPanel5" runat="server" CssClass="BoxF">
                                <li id="L5">
                       <asp:Panel ID="T5" Visible="false"  runat="server"> <div class="filter"> <asp:Image ID="Image37" runat="server" ImageUrl="~/Photos and Logos/tick.png" Width="" /> <%--<span style="font-family: wingdings; font-size: 200%; color:green;">&#252;</span>--%></div></asp:Panel>  
                                    <div class="layer"></div>
                                    <asp:Image ID="Image12" runat="server" ImageUrl="~/Photos and Logos/it.jpg" Width="" />
                                     <asp:Label ID="Label24" runat="server" Text="Label" CssClass="button">Decommission of Infrastructure</asp:Label> 
                                    <div class="overlay">
                                         <div class="leftButton">
                                             <span id="LabelDecom" class="heading9">Decommission of Infrastructure</span>
                                    <button type="button" id="Button5" class="layer-button" data-toggle="modal" data-target="#myModal5" runat="server">Create New</button>
                                              <button type="button" id="Button24" class="layer-button" runat="server">Help</button>
                                        </div>
                                        </div>
                                    <%--<asp:Button ID="Button5" runat="server" Text="Decommission of Application" class="button"  />--%>
                                </li>
                            </asp:Panel>
                            <asp:Panel ID="BPanel6" Visible="false" runat="server" CssClass="BoxF">
                                <li id="L6">
                       <asp:Panel ID="Panel4" Visible="false"  runat="server"> <div class="filter"> <asp:Image ID="Image45" runat="server" ImageUrl="~/Photos and Logos/tick.png" Width="" /> <%--<span style="font-family: wingdings; font-size: 200%; color:green;">&#252;</span>--%></div></asp:Panel>  
                                    <div class="layer"></div>
                                    <asp:Image ID="Image46" runat="server" ImageUrl="~/Photos and Logos/it.jpg" Width="" />
                                     <asp:Label ID="Label25" runat="server" Text="Label" CssClass="button">Decommission of Application</asp:Label> 
                                    <div class="overlay">
                                         <div class="leftButton">
                                             <span id="LabelDecom2" class="heading9">Decommission of Application</span>
                                    <button type="button" id="Button25" class="layer-button" data-toggle="modal" data-target="#Decom2" runat="server">Create New</button>
                                              <button type="button" id="Button26" class="layer-button" runat="server">Help</button>
                                        </div>
                                        </div>
                                    <%--<asp:Button ID="Button5" runat="server" Text="Decommission of Application" class="button"  />--%>
                                </li>
                            </asp:Panel>
                            

                        </ul>
                        <%--<asp:Button ID="Button33" runat="server" Text="Button" OnClick="Test1" />--%>
                                     <button type="button" id="Button19" class="button1" data-toggle="modal" data-target="#myModal1to2" runat="server" visible="false">Proceed</button>
                                     <button type="button" id="Button20" class="button1" data-toggle="modal" data-target="#myModal2to3" runat="server" visible="false">Proceed</button>
                                     <button type="button" id="Button21" class="button1" data-toggle="modal" data-target="#myModal3to4" runat="server" visible="false">Proceed</button>
                                     <button type="button" id="Button28" class="button1" data-toggle="modal" data-target="#Create" runat="server" visible="false">Create New </button>
                       <%-- <asp:Button ID="Button29" runat="server" CssClass="button1" Text="Add New entry" Visible="false" data-toggle="modal" data-target="#Create" />--%>
                                     <%--<button onclick="Submit"  id="Final" runat="server" class="button1" visible="false">Submit</button>--%>
                        
                        <asp:Button ID="Button29" runat="server" CssClass="button1" Text="Proceed" OnClick="decom1" Visible="false" />
                        <asp:Button ID="Final1" runat="server" CssClass="button1" Visible="false" OnClick="Submit" Text="Preview and Submit"  />
                        
                    </div>

                </asp:Panel>

                <%--</form>--%>
        </div>
        <!-- Trigger the modal with a button -->
        <%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>

        <!-- Modal -->

        <div class="modal fade" id="myModal" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                         <asp:Image ID="Image2" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
            <asp:Image ID="Image18" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />


             <button type="button" class="close" data-toggle="modal" data-target="#myModal1to2" data-dismiss="modal" onclick="pop8(0)">&times;</button>
                       
                    </div>
                    
                    <asp:Panel ID="Panel2" runat="server">
<div id="A1" >
                    <p class="heading12">Please enter the following attribute details for Application CI</p>
 </div>  
                        <div class="new-box">
                         <ul>
                            <li>

                                <div>
                                    <asp:Label ID="Label15" runat="server" Text="CR Number"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="A_CR_Number" runat="server" ReadOnly="true"></asp:TextBox>
                                   <%-- <asp:Label ID="Error1" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>--%>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="validate" runat="server" ErrorMessage="*Required" ControlToValidate="A_CR_Number" ForeColor="Red" ValidationGroup="AppSub"></asp:RequiredFieldValidator>
                                </div>
                            </li>

                            <li>
                                <asp:Panel runat="server" visible="false">
                                <div>
                                    <asp:Label ID="Label1" runat="server" Text="Application ID"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="Application_ID" runat="server"></asp:TextBox>
                                     <asp:Label ID="Error2" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" class="validate" ErrorMessage="*Required" ControlToValidate="Application_ID" ForeColor="Red" ValidationGroup="AppSub"></asp:RequiredFieldValidator>--%>
                                </div>
                                </asp:Panel>
                            </li>
                            <li>
                                <div>
                                    <asp:Label ID="Label16" runat="server" Text="Application Name"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="DL3" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                    </asp:DropDownList>

                                    <asp:TextBox ID="Application_Name" runat="server" visible="false"></asp:TextBox>
                                   <asp:Label ID="Error3" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  class="validate" ErrorMessage="*Required" ControlToValidate="DL3" ForeColor="Red" ValidationGroup="AppSub" InitialValue="Select"></asp:RequiredFieldValidator>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <asp:Label ID="Label2" runat="server" Text="Application Category"></asp:Label>
                                </div>

                                <div>
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Gold</asp:ListItem>
                                        <asp:ListItem>Silver</asp:ListItem>
                                        <asp:ListItem>Bronze</asp:ListItem>
                                        <asp:ListItem>No Categorization</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"  class="validate" ErrorMessage="*Required" ControlToValidate="DropDownList2" ForeColor="Red" ValidationGroup="AppSub" InitialValue="Select" ></asp:RequiredFieldValidator>
                                     <asp:Label ID="Error4" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label3" runat="server" Text="Application Complexity"></asp:Label>
                                </div>

                                <div>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Medium</asp:ListItem>
                                        <asp:ListItem>Simple</asp:ListItem>
                                        <asp:ListItem>Complex</asp:ListItem>
                                        <asp:ListItem>Custom A</asp:ListItem>
                                        <asp:ListItem>Custom B</asp:ListItem>
                                        <asp:ListItem>Custom D</asp:ListItem>
                                        <asp:ListItem>Custom E</asp:ListItem>
                                        <asp:ListItem>Custom F</asp:ListItem>
                                        <asp:ListItem>API</asp:ListItem>
                                         <asp:ListItem>Not Defined</asp:ListItem>
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"  class="validate" ErrorMessage="*Required" ControlToValidate="DropDownList1" ForeColor="Red" ValidationGroup="AppSub" InitialValue="Select" ></asp:RequiredFieldValidator>
                                     <asp:Label ID="Error5" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label4" runat="server" Text="Remedy Group"></asp:Label>
                                </div>
                                <div>
                                    <%--<asp:DropDownList ID="DDGroup" runat="server" DataSourceID="RemedyGroup" DataTextField="Support_Group_Name" DataValueField="Support_Group_Name"></asp:DropDownList>
        <asp:SqlDataSource ID="RemedyGroup" runat="server" ConnectionString="<%$ ConnectionStrings:ARSystem1ConnectionString %>" SelectCommand="SELECT [Support_Group_Name] FROM [CTM_Support_Group]"></asp:SqlDataSource>--%>
                                    
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>AGLM ONT</asp:ListItem>
                                        <asp:ListItem>APP_ SAP CAPABILITY REV-TRAC & SALT</asp:ListItem>
                                        <asp:ListItem>APP_AGLM_SAP </asp:ListItem>
                                        <asp:ListItem>APP_AKMI_CDN</asp:ListItem>
                                        <asp:ListItem>APP_AKMI_WAF</asp:ListItem>
                                        <asp:ListItem>APP_AMADEUS</asp:ListItem>
                                        <asp:ListItem>APP_ASSETSUITE</asp:ListItem>
                                        <asp:ListItem>APP_BWAMO</asp:ListItem>
                                        <asp:ListItem>APP_CONCUR</asp:ListItem>
                                        <asp:ListItem>APP_CyberArk_Support</asp:ListItem>
                                        <asp:ListItem>APP_DATALAKE</asp:ListItem>
                                        <asp:ListItem>APP_DIGITAL_FOUNDATIONS</asp:ListItem>
                                        <asp:ListItem>APP_DIGITAL_MYACCOUNT</asp:ListItem>
                                        <asp:ListItem>APP_DIGITAL_MYACCOUNT_BILLING</asp:ListItem>
                                        <asp:ListItem>APP_DIGITAL_MYACCOUNT_PAYMENT</asp:ListItem>
                                        <asp:ListItem>APP_DIGITAL_MYACCOUNT_USAGE</asp:ListItem>
                                        <asp:ListItem>APP_EDA</asp:ListItem>
                                        <asp:ListItem>APP_GEMCAST_CONNECTNOW</asp:ListItem>
                                        <asp:ListItem>APP_GEMCAST_CORPORATE</asp:ListItem>
                                        <asp:ListItem>APP_GEMCAST_DIGITAL</asp:ListItem>
                                        <asp:ListItem>APP_GEMCAST_NONSAP</asp:ListItem>
                                        <asp:ListItem>APP_GRPOPS_SAP</asp:ListItem>
                                        <asp:ListItem>APP_IAM</asp:ListItem>
                                        <asp:ListItem>APP_IAMSEC</asp:ListItem>
                                        <asp:ListItem>APP_KASADA</asp:ListItem>
                                        <asp:ListItem>APP_MDH</asp:ListItem>
                                        <asp:ListItem>APP_NEWENERGY_DEVOPS</asp:ListItem>
                                        <asp:ListItem>APP_NEWENERGY_ORCHESTRATION</asp:ListItem>
                                        <asp:ListItem>APP_NEWENERGY_SMARTHOME</asp:ListItem>
                                        <asp:ListItem>APP_NEWENERGY_VIRTUALPRODUCTS</asp:ListItem>
                                        <asp:ListItem>APP_PRICINGSERVICES</asp:ListItem>
                                        <asp:ListItem>APP_PULSE</asp:ListItem>
                                        <asp:ListItem>APP_READINOW</asp:ListItem>
                                        <asp:ListItem>APP_RETAILSAP</asp:ListItem>
                                        <asp:ListItem>APP_SAP_ABAP</asp:ListItem>
                                        <asp:ListItem>APP_SAP_BASIS</asp:ListItem>
                                        <asp:ListItem>APP_SAP_BILLING</asp:ListItem>
                                        <asp:ListItem>APP_SAP_CORP</asp:ListItem>
                                        <asp:ListItem>APP_SAP_CRM</asp:ListItem>
                                        <asp:ListItem>APP_SAP_DEVICE</asp:ListItem>
                                        <asp:ListItem>APP_SAP_FICA</asp:ListItem>
                                        <asp:ListItem>APP_SAP_GRC</asp:ListItem>
                                        <asp:ListItem>APP_SAP_HANA</asp:ListItem>
                                        <asp:ListItem>APP_SAP_SDM</asp:ListItem>
                                        <asp:ListItem>APP_SAP_XI</asp:ListItem>
                                        <asp:ListItem>APP_SAP_XI_AZURE </asp:ListItem>
                                        <asp:ListItem>APP_SAPSEC</asp:ListItem>
                                        <asp:ListItem>APP_SERRAVIEW</asp:ListItem>
                                        <asp:ListItem>APP_SILICA</asp:ListItem>
                                        <asp:ListItem>APP_SLICK</asp:ListItem>
                                        <asp:ListItem>APP_SPLUNK</asp:ListItem>
                                        <asp:ListItem>APP_SWIMLANE_SUPPORT</asp:ListItem>
                                        <asp:ListItem>APP_WHOLEMEAL</asp:ListItem>
                                        <asp:ListItem>APP_WORKFLOW</asp:ListItem>
                                        <asp:ListItem>APP_Zscaler_Support</asp:ListItem>
                                        <asp:ListItem>AUTOMATION_MESSAGING</asp:ListItem>
                                        <asp:ListItem>AUTOMATION_STORAGE</asp:ListItem>
                                        <asp:ListItem>AUTOMATION_TOOL</asp:ListItem>
                                        <asp:ListItem>BPS_SAP_CRM</asp:ListItem>
                                        <asp:ListItem>GOV _APP_OPS</asp:ListItem>
                                        <asp:ListItem>GOV_AGLM_IT</asp:ListItem>
                                        <asp:ListItem>GOV_ASSET_MGT</asp:ListItem>
                                        <asp:ListItem>GOV_CAPACITY_MGT</asp:ListItem>
                                        <asp:ListItem>GOV_CGOTT_RELEASE MGT</asp:ListItem>
                                        <asp:ListItem>GOV_CHANGE_MGT</asp:ListItem>
                                        <asp:ListItem>GOV_CPE</asp:ListItem>
                                        <asp:ListItem>GOV_DATA_DECISIONING</asp:ListItem>
                                        <asp:ListItem>GOV_HYDRO_ISG</asp:ListItem>
                                        <asp:ListItem>GOV_ITSD_SAP</asp:ListItem>
                                        <asp:ListItem>GOV_LY_ISG</asp:ListItem>
                                        <asp:ListItem>GOV_OPERATIONS</asp:ListItem>
                                        <asp:ListItem>GOV_PLAT_OPS</asp:ListItem>
                                        <asp:ListItem>GOV_PROBLEM_MGT</asp:ListItem>
                                        <asp:ListItem>GOV_RELEASE_MGT</asp:ListItem>
                                        <asp:ListItem>GOV_SECURITY</asp:ListItem>
                                        <asp:ListItem>GOV_SECURITY_FORENSICS</asp:ListItem>
                                        <asp:ListItem>GOV_SERVICE_EXPERIENCE</asp:ListItem>
                                        <asp:ListItem>GOV_TORRENS_ISG</asp:ListItem>
                                        <asp:ListItem>INFRA_AZURE_OPERATIONS</asp:ListItem>
                                        <asp:ListItem>INFRA_DBA</asp:ListItem>
                                        <asp:ListItem>INFRA_DCMS</asp:ListItem>
                                        <asp:ListItem>INFRA_EUC</asp:ListItem>
                                        <asp:ListItem>INFRA_EUC_ASSETMGMT</asp:ListItem>
                                        <asp:ListItem>INFRA_EUC_MobiliseIT</asp:ListItem>
                                        <asp:ListItem>INFRA_GSRFS</asp:ListItem>
                                        <asp:ListItem>INFRA_IGNIO</asp:ListItem>
                                        <asp:ListItem>INFRA_INDIABPS</asp:ListItem>
                                        <asp:ListItem>INFRA_MESSAGING</asp:ListItem>
                                        <asp:ListItem>INFRA_NETWORK</asp:ListItem>
                                        <asp:ListItem>INFRA_OCC</asp:ListItem>
                                        <asp:ListItem>INFRA_PHILIPPINESBPS</asp:ListItem>
                                        <asp:ListItem>INFRA_RFS</asp:ListItem>
                                        <asp:ListItem>INFRA_SCCM</asp:ListItem>
                                        <asp:ListItem>INFRA_SDM</asp:ListItem>
                                        <asp:ListItem>INFRA_SECURITY</asp:ListItem>
                                        <asp:ListItem>INFRA_STORAGE</asp:ListItem>
                                        <asp:ListItem>INFRA_TOOLS</asp:ListItem>
                                        <asp:ListItem>INFRA_UNIX</asp:ListItem>
                                        <asp:ListItem>INFRA_WINTEL</asp:ListItem>
                                        <asp:ListItem>L1_SERVICEDESK</asp:ListItem>
                                        <asp:ListItem>MSS_SAPUAM</asp:ListItem>
                                        <asp:ListItem>ONSITE_AGLLY</asp:ListItem>
                                        <asp:ListItem>ONSITE_AGLM</asp:ListItem>
                                        <asp:ListItem>ONSITE_AGLTI</asp:ListItem>
                                        <asp:ListItem>ONT_LY</asp:ListItem>
                                        <asp:ListItem>ONT_R</asp:ListItem>
                                        <asp:ListItem>ONT_TI</asp:ListItem>
                                        <asp:ListItem>PROJ_4A</asp:ListItem>
                                        <asp:ListItem>PROJ_AAA</asp:ListItem>
                                        <asp:ListItem>PROJ_AAA_AUTOMATION_SUPPORT</asp:ListItem>
                                        <asp:ListItem>PROJ_ALADDIN</asp:ListItem>
                                        <asp:ListItem>PROJ_CMI</asp:ListItem>
                                        <asp:ListItem>PROJ_CORE_UPLIFT</asp:ListItem>
                                        <asp:ListItem>PROJ_DIGITALRECEIPT</asp:ListItem>
                                        <asp:ListItem>PROJ_DLP</asp:ListItem>
                                        <asp:ListItem>PROJ_DST</asp:ListItem>
                                        <asp:ListItem>PROJ_ESC_HARDSHIP</asp:ListItem>
                                        <asp:ListItem>PROJ_EUC_PT3Support</asp:ListItem>
                                        <asp:ListItem>PROJ_EUROPA</asp:ListItem>
                                        <asp:ListItem>PROJ_EZY CHANGES</asp:ListItem>
                                        <asp:ListItem>PROJ_GENESIS</asp:ListItem>
                                        <asp:ListItem>PROJ_GO</asp:ListItem>
                                        <asp:ListItem>PROJ_HANA</asp:ListItem>
                                        <asp:ListItem>PROJ_IDM</asp:ListItem>
                                        <asp:ListItem>PROJ_IPERA_DC_EXIT</asp:ListItem>
                                        <asp:ListItem>PROJ_J5</asp:ListItem>
                                        <asp:ListItem>PROJ_LAN SWITCHING</asp:ListItem>
                                        <asp:ListItem>PROJ_MAHA</asp:ListItem>
                                        <asp:ListItem>PROJ_MDM</asp:ListItem>
                                        <asp:ListItem>PROJ_OMM</asp:ListItem>
                                        <asp:ListItem>PROJ_OneDriveMigration</asp:ListItem>
                                        <asp:ListItem>PROJ_PAPER</asp:ListItem>
                                        <asp:ListItem>PROJ_PG6_EAMM</asp:ListItem>
                                        <asp:ListItem>PROJ_POCREGREP</asp:ListItem>
                                        <asp:ListItem>PROJ_Powerdirect</asp:ListItem>
                                        <asp:ListItem>PROJ_PT3</asp:ListItem>
                                        <asp:ListItem>PROJ_RECRUITMENT</asp:ListItem>
                                        <asp:ListItem>PROJ_ROCKET</asp:ListItem>
                                        <asp:ListItem>PROJ_SAP_ENVIRONMENTS</asp:ListItem>
                                        <asp:ListItem>PROJ_SHIELD</asp:ListItem>
                                        <asp:ListItem>PROJ_Storage Optimization</asp:ListItem>
                                        <asp:ListItem>PROJ_SUPERNOVA</asp:ListItem>
                                        <asp:ListItem>PROJ_TITAN</asp:ListItem>
                                        <asp:ListItem>PROJ_TWILIGHT</asp:ListItem>
                                        <asp:ListItem>PROJ_ZSCALER</asp:ListItem>
                                        <asp:ListItem>Project_Adobe eCommerce</asp:ListItem>
                                        <asp:ListItem>PT3-Analytics</asp:ListItem>
                                        <asp:ListItem>PT3-CrossF-Data</asp:ListItem>
                                        <asp:ListItem>PT3-CrossF-Integration</asp:ListItem>
                                        <asp:ListItem>PT3-CrossF-Open Text</asp:ListItem>
                                        <asp:ListItem>PT3-CrossF-Tech Development</asp:ListItem>
                                        <asp:ListItem>PT3-CrossF-Usability (UX)</asp:ListItem>
                                        <asp:ListItem>PT3-Func-BPC</asp:ListItem>
                                        <asp:ListItem>PT3-Func-eTime</asp:ListItem>
                                        <asp:ListItem>PT3-Func-FIN</asp:ListItem>
                                        <asp:ListItem>PT3-Func-H2R</asp:ListItem>
                                        <asp:ListItem>PT3-Func-HSE</asp:ListItem>
                                        <asp:ListItem>PT3-Func-P2P</asp:ListItem>
                                        <asp:ListItem>PT3-Func-PY</asp:ListItem>
                                        <asp:ListItem>PT3-Func-WM</asp:ListItem>
                                        <asp:ListItem>PT3-Hardware Devices</asp:ListItem>
                                        <asp:ListItem>PT3-Infra-Basis Team</asp:ListItem>
                                        <asp:ListItem>PT3-Infra-Infra Cloud</asp:ListItem>
                                        <asp:ListItem>PT3-Query-AP</asp:ListItem>
                                        <asp:ListItem>PT3-Query-BPC</asp:ListItem>
                                        <asp:ListItem>PT3-Query-FIN</asp:ListItem>
                                        <asp:ListItem>PT3-Query-HSE</asp:ListItem>
                                        <asp:ListItem>PT3-Query-Purch</asp:ListItem>
                                        <asp:ListItem>PT3-Query-WM</asp:ListItem>
                                        <asp:ListItem>PT3-Sec-App Security</asp:ListItem>
                                        <asp:ListItem>RTS_SUPPORT</asp:ListItem>
                                        <asp:ListItem>SAP_CORP_RFS</asp:ListItem>
                                        <asp:ListItem>SAP_ENV_OPS</asp:ListItem>
                                        <asp:ListItem>SAP_ENV_PROJ</asp:ListItem>
                                        <asp:ListItem>SECURITY_SOC</asp:ListItem>
                                        <asp:ListItem>SMART BAR</asp:ListItem>
                                        <asp:ListItem>SMARTBAR_AGLLY</asp:ListItem>
                                        <asp:ListItem>SMARTBAR_AGLM</asp:ListItem>
                                        <asp:ListItem>SMARTBAR_AGLTI</asp:ListItem>
                                        <asp:ListItem>SMO_KNOWLEDGE</asp:ListItem>
                                        <asp:ListItem>SOFTWARE_LICENSING</asp:ListItem>
                                        <asp:ListItem>SUPPORT_NON TCS</asp:ListItem>
                                        <asp:ListItem>VENDOR_ CORPORATE_BLACKLINE</asp:ListItem>
                                        <asp:ListItem>VENDOR_ASTRAL</asp:ListItem>
                                        <asp:ListItem>VENDOR_CANON</asp:ListItem>
                                        <asp:ListItem>VENDOR_COMPUTERSHARE</asp:ListItem>
                                        <asp:ListItem>VENDOR_FUJIXEROX</asp:ListItem>
                                        <asp:ListItem>VENDOR_IBMUNICA</asp:ListItem>
                                        <asp:ListItem>Vendor_ICON</asp:ListItem>
                                        <asp:ListItem>VENDOR_MICROSOFT</asp:ListItem>
                                        <asp:ListItem>VENDOR_ORBUS</asp:ListItem>
                                        <asp:ListItem>VENDOR_PERICORP</asp:ListItem>
                                        <asp:ListItem>VENDOR_PROMETHEUS</asp:ListItem>
                                        <asp:ListItem>VENDOR_RUTLEDGE</asp:ListItem>
                                        <asp:ListItem>VENDOR_SAP</asp:ListItem>
                                        <asp:ListItem>VENDOR_SERRAVIEW</asp:ListItem>
                                        <asp:ListItem>VENDOR_SPLUNK</asp:ListItem>
                                        <asp:ListItem>VENDOR_TALEND</asp:ListItem>
                                        <asp:ListItem>VENDOR_TELSTRA</asp:ListItem>
                                        <asp:ListItem>VENDOR_TELSTRA-MOBILEORDERS</asp:ListItem>
                                        <asp:ListItem>VENDOR_TRINOOR</asp:ListItem>
                                        <asp:ListItem>VENDOR_VKTEK</asp:ListItem>

                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"  class="validate" ErrorMessage="*Required" ControlToValidate="DropDownList3" ForeColor="Red" ValidationGroup="AppSub" InitialValue="Select" ></asp:RequiredFieldValidator>
                                     <asp:Label ID="Error6" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                    <br />
                                </div>

                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label5" runat="server" Text="Environment Instance"> </asp:Label>
                                </div>

                                <div>
                                    <asp:DropDownList ID="Environment_Instance" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>PROD</asp:ListItem>
                                        <asp:ListItem>NON PROD</asp:ListItem>
                                        <asp:ListItem>DR</asp:ListItem>
                                        <asp:ListItem>PROD-NON PROD-DR</asp:ListItem>
                                        <asp:ListItem>PROD-DR</asp:ListItem>
                                        <asp:ListItem>PROD-NON PROD</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server"  class="validate" ErrorMessage="*Required" ControlToValidate="Environment_Instance" ForeColor="Red" ValidationGroup="AppSub" InitialValue="Select" ></asp:RequiredFieldValidator>
                                     <asp:Label ID="Error7" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                    <br />
                                </div>
                            </li>
                        </ul>
                        <div class="clear"></div>
                            </div>
                        
                    
                                      

                    <div class="modal-containt  new-box-container"></div>
                 <asp:Button ID="Button6" runat="server" Text="Submit" CssClass="button1 newbutton" OnClick="App_SumbitBtn_Click" ValidationGroup="AppSub"/>
                        <div class="clear"></div>
                 </asp:Panel>


                    <!-- Grid for APP_CI -->
                  
        </div>

        </div>
        </div>
    
        <!-- Modal -->
        
        <div class="modal fade" id="myModal2" data-keyboard="false" data-backdrop="false" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="top-part12">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                        <asp:Image ID="Image19" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
          <button type="button" class="close" data-toggle="modal" data-target="#myModal2to3" data-dismiss="modal" onclick="pop9(0)">&times;</button>
                    </div>
                    <p class="heading12">Please complete the Infrastructure attribute details</p>
                    <div class="new-box">
                    <ul>
                            <li>

                                <div>
                                    <asp:Label ID="Label14" runat="server" Text="CR Number"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="I_CR_Num" runat="server" ReadOnly="true"></asp:TextBox>
                                     <asp:Label ID="Error8" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  class="validate"  ErrorMessage="*Required" ControlToValidate="I_CR_Num" runat="server" ValidationGroup="InfSub" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </li>


                            <li>

                                <div>
                                    <asp:Label ID="Label6" runat="server" Text="CI Name"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="DL4" runat="server"></asp:DropDownList>
                                    <asp:TextBox ID="CI_Name" runat="server" Visible="false" ></asp:TextBox>
                                     <asp:Label ID="Error9" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" class="validate" ErrorMessage="*Required" ControlToValidate="DL4" runat="server" ValidationGroup="InfSub" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label7" runat="server" Text="System Environment"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="System_Environment" runat="server" Visible="false"></asp:TextBox>
                                    <asp:DropDownList ID="DropDownList5" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>PROD</asp:ListItem>
                                        <asp:ListItem>NON PROD</asp:ListItem>
                                        <asp:ListItem>DR</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"  class="validate" ErrorMessage="*Required" ControlToValidate="DropDownList5" ForeColor="Red" ValidationGroup="InfSub" InitialValue="Select" ></asp:RequiredFieldValidator>
                                     <asp:Label ID="Error10" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                </div>
                            </li>
                            <li>
                                <div>

                                    <asp:Label ID="Label8" runat="server" Text="Primary Capability"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="Primary_Capability_list" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Server</asp:ListItem>
                                        <asp:ListItem>Storage</asp:ListItem>
                                        <asp:ListItem>Switch</asp:ListItem>
                                        <asp:ListItem>Firewall</asp:ListItem>
                                        <asp:ListItem>Router</asp:ListItem>

                                    </asp:DropDownList>
                                    <asp:TextBox ID="Primary_Capability" runat="server" Visible="false"></asp:TextBox>
                                    <%--<asp:Label ID="Error11" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="*Required"  class="validate" ControlToValidate="Primary_Capability" runat="server" ValidationGroup="InfSub" ForeColor="Red"></asp:RequiredFieldValidator>
                               --%> 
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  class="validate" ErrorMessage="*Required" ControlToValidate="Primary_Capability_list" ForeColor="Red" ValidationGroup="InfSub" InitialValue="Select" ></asp:RequiredFieldValidator>
                                     <asp:Label ID="Label28" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label9" runat="server" Text="Owner"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="Owner" runat="server"></asp:TextBox>
                                      <asp:Label ID="Error12" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  class="validate" ErrorMessage="*Required" ControlToValidate="Owner" runat="server" ValidationGroup="InfSub" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label10" runat="server" Text="Supported By"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="DropDownList6" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>AGLM ONT</asp:ListItem>
                                        <asp:ListItem>APP_ SAP CAPABILITY REV-TRAC & SALT</asp:ListItem>
                                        <asp:ListItem>APP_AGLM_SAP </asp:ListItem>
                                        <asp:ListItem>APP_AKMI_CDN</asp:ListItem>
                                        <asp:ListItem>APP_AKMI_WAF</asp:ListItem>
                                        <asp:ListItem>APP_AMADEUS</asp:ListItem>
                                        <asp:ListItem>APP_ASSETSUITE</asp:ListItem>
                                        <asp:ListItem>APP_BWAMO</asp:ListItem>
                                        <asp:ListItem>APP_CONCUR</asp:ListItem>
                                        <asp:ListItem>APP_CyberArk_Support</asp:ListItem>
                                        <asp:ListItem>APP_DATALAKE</asp:ListItem>
                                        <asp:ListItem>APP_DIGITAL_FOUNDATIONS</asp:ListItem>
                                        <asp:ListItem>APP_DIGITAL_MYACCOUNT</asp:ListItem>
                                        <asp:ListItem>APP_DIGITAL_MYACCOUNT_BILLING</asp:ListItem>
                                        <asp:ListItem>APP_DIGITAL_MYACCOUNT_PAYMENT</asp:ListItem>
                                        <asp:ListItem>APP_DIGITAL_MYACCOUNT_USAGE</asp:ListItem>
                                        <asp:ListItem>APP_EDA</asp:ListItem>
                                        <asp:ListItem>APP_GEMCAST_CONNECTNOW</asp:ListItem>
                                        <asp:ListItem>APP_GEMCAST_CORPORATE</asp:ListItem>
                                        <asp:ListItem>APP_GEMCAST_DIGITAL</asp:ListItem>
                                        <asp:ListItem>APP_GEMCAST_NONSAP</asp:ListItem>
                                        <asp:ListItem>APP_GRPOPS_SAP</asp:ListItem>
                                        <asp:ListItem>APP_IAM</asp:ListItem>
                                        <asp:ListItem>APP_IAMSEC</asp:ListItem>
                                        <asp:ListItem>APP_KASADA</asp:ListItem>
                                        <asp:ListItem>APP_MDH</asp:ListItem>
                                        <asp:ListItem>APP_NEWENERGY_DEVOPS</asp:ListItem>
                                        <asp:ListItem>APP_NEWENERGY_ORCHESTRATION</asp:ListItem>
                                        <asp:ListItem>APP_NEWENERGY_SMARTHOME</asp:ListItem>
                                        <asp:ListItem>APP_NEWENERGY_VIRTUALPRODUCTS</asp:ListItem>
                                        <asp:ListItem>APP_PRICINGSERVICES</asp:ListItem>
                                        <asp:ListItem>APP_PULSE</asp:ListItem>
                                        <asp:ListItem>APP_READINOW</asp:ListItem>
                                        <asp:ListItem>APP_RETAILSAP</asp:ListItem>
                                        <asp:ListItem>APP_SAP_ABAP</asp:ListItem>
                                        <asp:ListItem>APP_SAP_BASIS</asp:ListItem>
                                        <asp:ListItem>APP_SAP_BILLING</asp:ListItem>
                                        <asp:ListItem>APP_SAP_CORP</asp:ListItem>
                                        <asp:ListItem>APP_SAP_CRM</asp:ListItem>
                                        <asp:ListItem>APP_SAP_DEVICE</asp:ListItem>
                                        <asp:ListItem>APP_SAP_FICA</asp:ListItem>
                                        <asp:ListItem>APP_SAP_GRC</asp:ListItem>
                                        <asp:ListItem>APP_SAP_HANA</asp:ListItem>
                                        <asp:ListItem>APP_SAP_SDM</asp:ListItem>
                                        <asp:ListItem>APP_SAP_XI</asp:ListItem>
                                        <asp:ListItem>APP_SAP_XI_AZURE </asp:ListItem>
                                        <asp:ListItem>APP_SAPSEC</asp:ListItem>
                                        <asp:ListItem>APP_SERRAVIEW</asp:ListItem>
                                        <asp:ListItem>APP_SILICA</asp:ListItem>
                                        <asp:ListItem>APP_SLICK</asp:ListItem>
                                        <asp:ListItem>APP_SPLUNK</asp:ListItem>
                                        <asp:ListItem>APP_SWIMLANE_SUPPORT</asp:ListItem>
                                        <asp:ListItem>APP_WHOLEMEAL</asp:ListItem>
                                        <asp:ListItem>APP_WORKFLOW</asp:ListItem>
                                        <asp:ListItem>APP_Zscaler_Support</asp:ListItem>
                                        <asp:ListItem>AUTOMATION_MESSAGING</asp:ListItem>
                                        <asp:ListItem>AUTOMATION_STORAGE</asp:ListItem>
                                        <asp:ListItem>AUTOMATION_TOOL</asp:ListItem>
                                        <asp:ListItem>BPS_SAP_CRM</asp:ListItem>
                                        <asp:ListItem>GOV _APP_OPS</asp:ListItem>
                                        <asp:ListItem>GOV_AGLM_IT</asp:ListItem>
                                        <asp:ListItem>GOV_ASSET_MGT</asp:ListItem>
                                        <asp:ListItem>GOV_CAPACITY_MGT</asp:ListItem>
                                        <asp:ListItem>GOV_CGOTT_RELEASE MGT</asp:ListItem>
                                        <asp:ListItem>GOV_CHANGE_MGT</asp:ListItem>
                                        <asp:ListItem>GOV_CPE</asp:ListItem>
                                        <asp:ListItem>GOV_DATA_DECISIONING</asp:ListItem>
                                        <asp:ListItem>GOV_HYDRO_ISG</asp:ListItem>
                                        <asp:ListItem>GOV_ITSD_SAP</asp:ListItem>
                                        <asp:ListItem>GOV_LY_ISG</asp:ListItem>
                                        <asp:ListItem>GOV_OPERATIONS</asp:ListItem>
                                        <asp:ListItem>GOV_PLAT_OPS</asp:ListItem>
                                        <asp:ListItem>GOV_PROBLEM_MGT</asp:ListItem>
                                        <asp:ListItem>GOV_RELEASE_MGT</asp:ListItem>
                                        <asp:ListItem>GOV_SECURITY</asp:ListItem>
                                        <asp:ListItem>GOV_SECURITY_FORENSICS</asp:ListItem>
                                        <asp:ListItem>GOV_SERVICE_EXPERIENCE</asp:ListItem>
                                        <asp:ListItem>GOV_TORRENS_ISG</asp:ListItem>
                                        <asp:ListItem>INFRA_AZURE_OPERATIONS</asp:ListItem>
                                        <asp:ListItem>INFRA_DBA</asp:ListItem>
                                        <asp:ListItem>INFRA_DCMS</asp:ListItem>
                                        <asp:ListItem>INFRA_EUC</asp:ListItem>
                                        <asp:ListItem>INFRA_EUC_ASSETMGMT</asp:ListItem>
                                        <asp:ListItem>INFRA_EUC_MobiliseIT</asp:ListItem>
                                        <asp:ListItem>INFRA_GSRFS</asp:ListItem>
                                        <asp:ListItem>INFRA_IGNIO</asp:ListItem>
                                        <asp:ListItem>INFRA_INDIABPS</asp:ListItem>
                                        <asp:ListItem>INFRA_MESSAGING</asp:ListItem>
                                        <asp:ListItem>INFRA_NETWORK</asp:ListItem>
                                        <asp:ListItem>INFRA_OCC</asp:ListItem>
                                        <asp:ListItem>INFRA_PHILIPPINESBPS</asp:ListItem>
                                        <asp:ListItem>INFRA_RFS</asp:ListItem>
                                        <asp:ListItem>INFRA_SCCM</asp:ListItem>
                                        <asp:ListItem>INFRA_SDM</asp:ListItem>
                                        <asp:ListItem>INFRA_SECURITY</asp:ListItem>
                                        <asp:ListItem>INFRA_STORAGE</asp:ListItem>
                                        <asp:ListItem>INFRA_TOOLS</asp:ListItem>
                                        <asp:ListItem>INFRA_UNIX</asp:ListItem>
                                        <asp:ListItem>INFRA_WINTEL</asp:ListItem>
                                        <asp:ListItem>L1_SERVICEDESK</asp:ListItem>
                                        <asp:ListItem>MSS_SAPUAM</asp:ListItem>
                                        <asp:ListItem>ONSITE_AGLLY</asp:ListItem>
                                        <asp:ListItem>ONSITE_AGLM</asp:ListItem>
                                        <asp:ListItem>ONSITE_AGLTI</asp:ListItem>
                                        <asp:ListItem>ONT_LY</asp:ListItem>
                                        <asp:ListItem>ONT_R</asp:ListItem>
                                        <asp:ListItem>ONT_TI</asp:ListItem>
                                        <asp:ListItem>PROJ_4A</asp:ListItem>
                                        <asp:ListItem>PROJ_AAA</asp:ListItem>
                                        <asp:ListItem>PROJ_AAA_AUTOMATION_SUPPORT</asp:ListItem>
                                        <asp:ListItem>PROJ_ALADDIN</asp:ListItem>
                                        <asp:ListItem>PROJ_CMI</asp:ListItem>
                                        <asp:ListItem>PROJ_CORE_UPLIFT</asp:ListItem>
                                        <asp:ListItem>PROJ_DIGITALRECEIPT</asp:ListItem>
                                        <asp:ListItem>PROJ_DLP</asp:ListItem>
                                        <asp:ListItem>PROJ_DST</asp:ListItem>
                                        <asp:ListItem>PROJ_ESC_HARDSHIP</asp:ListItem>
                                        <asp:ListItem>PROJ_EUC_PT3Support</asp:ListItem>
                                        <asp:ListItem>PROJ_EUROPA</asp:ListItem>
                                        <asp:ListItem>PROJ_EZY CHANGES</asp:ListItem>
                                        <asp:ListItem>PROJ_GENESIS</asp:ListItem>
                                        <asp:ListItem>PROJ_GO</asp:ListItem>
                                        <asp:ListItem>PROJ_HANA</asp:ListItem>
                                        <asp:ListItem>PROJ_IDM</asp:ListItem>
                                        <asp:ListItem>PROJ_IPERA_DC_EXIT</asp:ListItem>
                                        <asp:ListItem>PROJ_J5</asp:ListItem>
                                        <asp:ListItem>PROJ_LAN SWITCHING</asp:ListItem>
                                        <asp:ListItem>PROJ_MAHA</asp:ListItem>
                                        <asp:ListItem>PROJ_MDM</asp:ListItem>
                                        <asp:ListItem>PROJ_OMM</asp:ListItem>
                                        <asp:ListItem>PROJ_OneDriveMigration</asp:ListItem>
                                        <asp:ListItem>PROJ_PAPER</asp:ListItem>
                                        <asp:ListItem>PROJ_PG6_EAMM</asp:ListItem>
                                        <asp:ListItem>PROJ_POCREGREP</asp:ListItem>
                                        <asp:ListItem>PROJ_Powerdirect</asp:ListItem>
                                        <asp:ListItem>PROJ_PT3</asp:ListItem>
                                        <asp:ListItem>PROJ_RECRUITMENT</asp:ListItem>
                                        <asp:ListItem>PROJ_ROCKET</asp:ListItem>
                                        <asp:ListItem>PROJ_SAP_ENVIRONMENTS</asp:ListItem>
                                        <asp:ListItem>PROJ_SHIELD</asp:ListItem>
                                        <asp:ListItem>PROJ_Storage Optimization</asp:ListItem>
                                        <asp:ListItem>PROJ_SUPERNOVA</asp:ListItem>
                                        <asp:ListItem>PROJ_TITAN</asp:ListItem>
                                        <asp:ListItem>PROJ_TWILIGHT</asp:ListItem>
                                        <asp:ListItem>PROJ_ZSCALER</asp:ListItem>
                                        <asp:ListItem>Project_Adobe eCommerce</asp:ListItem>
                                        <asp:ListItem>PT3-Analytics</asp:ListItem>
                                        <asp:ListItem>PT3-CrossF-Data</asp:ListItem>
                                        <asp:ListItem>PT3-CrossF-Integration</asp:ListItem>
                                        <asp:ListItem>PT3-CrossF-Open Text</asp:ListItem>
                                        <asp:ListItem>PT3-CrossF-Tech Development</asp:ListItem>
                                        <asp:ListItem>PT3-CrossF-Usability (UX)</asp:ListItem>
                                        <asp:ListItem>PT3-Func-BPC</asp:ListItem>
                                        <asp:ListItem>PT3-Func-eTime</asp:ListItem>
                                        <asp:ListItem>PT3-Func-FIN</asp:ListItem>
                                        <asp:ListItem>PT3-Func-H2R</asp:ListItem>
                                        <asp:ListItem>PT3-Func-HSE</asp:ListItem>
                                        <asp:ListItem>PT3-Func-P2P</asp:ListItem>
                                        <asp:ListItem>PT3-Func-PY</asp:ListItem>
                                        <asp:ListItem>PT3-Func-WM</asp:ListItem>
                                        <asp:ListItem>PT3-Hardware Devices</asp:ListItem>
                                        <asp:ListItem>PT3-Infra-Basis Team</asp:ListItem>
                                        <asp:ListItem>PT3-Infra-Infra Cloud</asp:ListItem>
                                        <asp:ListItem>PT3-Query-AP</asp:ListItem>
                                        <asp:ListItem>PT3-Query-BPC</asp:ListItem>
                                        <asp:ListItem>PT3-Query-FIN</asp:ListItem>
                                        <asp:ListItem>PT3-Query-HSE</asp:ListItem>
                                        <asp:ListItem>PT3-Query-Purch</asp:ListItem>
                                        <asp:ListItem>PT3-Query-WM</asp:ListItem>
                                        <asp:ListItem>PT3-Sec-App Security</asp:ListItem>
                                        <asp:ListItem>RTS_SUPPORT</asp:ListItem>
                                        <asp:ListItem>SAP_CORP_RFS</asp:ListItem>
                                        <asp:ListItem>SAP_ENV_OPS</asp:ListItem>
                                        <asp:ListItem>SAP_ENV_PROJ</asp:ListItem>
                                        <asp:ListItem>SECURITY_SOC</asp:ListItem>
                                        <asp:ListItem>SMART BAR</asp:ListItem>
                                        <asp:ListItem>SMARTBAR_AGLLY</asp:ListItem>
                                        <asp:ListItem>SMARTBAR_AGLM</asp:ListItem>
                                        <asp:ListItem>SMARTBAR_AGLTI</asp:ListItem>
                                        <asp:ListItem>SMO_KNOWLEDGE</asp:ListItem>
                                        <asp:ListItem>SOFTWARE_LICENSING</asp:ListItem>
                                        <asp:ListItem>SUPPORT_NON TCS</asp:ListItem>
                                        <asp:ListItem>VENDOR_ CORPORATE_BLACKLINE</asp:ListItem>
                                        <asp:ListItem>VENDOR_ASTRAL</asp:ListItem>
                                        <asp:ListItem>VENDOR_CANON</asp:ListItem>
                                        <asp:ListItem>VENDOR_COMPUTERSHARE</asp:ListItem>
                                        <asp:ListItem>VENDOR_FUJIXEROX</asp:ListItem>
                                        <asp:ListItem>VENDOR_IBMUNICA</asp:ListItem>
                                        <asp:ListItem>Vendor_ICON</asp:ListItem>
                                        <asp:ListItem>VENDOR_MICROSOFT</asp:ListItem>
                                        <asp:ListItem>VENDOR_ORBUS</asp:ListItem>
                                        <asp:ListItem>VENDOR_PERICORP</asp:ListItem>
                                        <asp:ListItem>VENDOR_PROMETHEUS</asp:ListItem>
                                        <asp:ListItem>VENDOR_RUTLEDGE</asp:ListItem>
                                        <asp:ListItem>VENDOR_SAP</asp:ListItem>
                                        <asp:ListItem>VENDOR_SERRAVIEW</asp:ListItem>
                                        <asp:ListItem>VENDOR_SPLUNK</asp:ListItem>
                                        <asp:ListItem>VENDOR_TALEND</asp:ListItem>
                                        <asp:ListItem>VENDOR_TELSTRA</asp:ListItem>
                                        <asp:ListItem>VENDOR_TELSTRA-MOBILEORDERS</asp:ListItem>
                                        <asp:ListItem>VENDOR_TRINOOR</asp:ListItem>
                                        <asp:ListItem>VENDOR_VKTEK</asp:ListItem>

                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"  class="validate" ErrorMessage="*Required" ControlToValidate="DropDownList6" ForeColor="Red" ValidationGroup="InfSub" InitialValue="Select" ></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="Supported_By" runat="server" Visible="false"></asp:TextBox>
                                     <asp:Label ID="Error13" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false" ></asp:Label>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label11" runat="server" Text="System Role"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="System_Role" runat="server"></asp:TextBox>
                                     <asp:Label ID="Error14" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8"  class="validate" ErrorMessage="*Required" ControlToValidate="System_Role" runat="server" ValidationGroup="InfSub" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label12" runat="server" Text="Site"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="Site" runat="server" DataSourceID="SqlDataSourceSite"  DataTextField="Site" DataValueField="Site"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceSite" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1111 %>" SelectCommand="SELECT [Site] FROM [SIT_Site_Alias_Company_LookUp]"></asp:SqlDataSource>
                        <%--Hardcoded sites commented --%>
                                   <%-- <asp:DropDownList ID="Site" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Boston Support Center</asp:ListItem>
                                        <asp:ListItem>Headquarters, Building 1.31</asp:ListItem>
                                        <asp:ListItem>Headquarters, Building 1.31</asp:ListItem>
                                        <asp:ListItem>Headquarters, Building 1.32</asp:ListItem>
                                        <asp:ListItem>Headquarters, Building 1.32</asp:ListItem>
                                        <asp:ListItem>Headquarters, Building 1.33</asp:ListItem>
                                        <asp:ListItem>Headquarters, Building 1.33</asp:ListItem>
                                        <asp:ListItem>Headquarters, Building 1.34</asp:ListItem>
                                        <asp:ListItem>Headquarters, Building 1.34</asp:ListItem>
                                        <asp:ListItem>Hong Kong Support Center</asp:ListItem>
                                        <asp:ListItem>Tokyo Support Center</asp:ListItem>
                                        <asp:ListItem>Amsterdam Support Center</asp:ListItem>
                                        <asp:ListItem>Paris Support Center</asp:ListItem>
                                        <asp:ListItem>120 Spencer Street</asp:ListItem>
                                        <asp:ListItem>Bourke Street 1234</asp:ListItem>
                                        <asp:ListItem>THE GRAND TRUNKWAY GILLMAN - TIPS</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - PAYROLL</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - PAYROLL</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB19A</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB16B</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB20B</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB20A</asp:ListItem>
                                        <asp:ListItem>CAPTAIN COOK DRIVE KURNELL - KURN</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB18A</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB21B</asp:ListItem>
                                        <asp:ListItem>COMPLEX 1, 303 BURWOOD HWY BURWOOD EAST - POWERDIR</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB15A</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB18B</asp:ListItem>
                                        <asp:ListItem>GREENHILL ROAD EASTWOOD - EW02</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB14</asp:ListItem>
                                        <asp:ListItem>EDWARD STREET BRISBANE - BRIS</asp:ListItem>
                                        <asp:ListItem>N/A N/A - EXTERNAL</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB16A</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB22B</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB17A</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - BOUR7</asp:ListItem>
                                        <asp:ListItem>MEDHURST ROAD MENANGLE - MENA</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2202</asp:ListItem>
                                        <asp:ListItem>PO BOX 300 MOUNT BEAUTY - MT BEAUTY</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2105</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2205</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB17B</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2104</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2101</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2106</asp:ListItem>
                                        <asp:ListItem>GREENHILL ROAD EASTWOOD - EW01E</asp:ListItem>
                                        <asp:ListItem>GREENHILL ROAD EASTWOOD - EW01W</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2102</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - BOUR8</asp:ListItem>
                                        <asp:ListItem>SALTASH STREET BRISBANE - BOILERLAND</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2001</asp:ListItem>
                                        <asp:ListItem>PO BOX 126 EILDON - EILDON</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2103</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LOY-YANG</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2107</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LOY-YANG-BASED-AGL</asp:ListItem>
                                        <asp:ListItem>SILVERSPRING GAS LANE ROAD SURAT - MOSAIC - QLD</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2203</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2206</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB19B</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB15B</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE ADMIN</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB21A</asp:ListItem>
                                        <asp:ListItem>N/A N/A - KOLKATA</asp:ListItem>
                                        <asp:ListItem>ADVANTAGE ROAD MELBOURNE - AGLSOLAR</asp:ListItem>
                                        <asp:ListItem>ADVANTAGE ROAD MELBOURNE - AGL SOLAR</asp:ListItem>
                                        <asp:ListItem>N/A N/A - MANILA</asp:ListItem>
                                        <asp:ListItem>BRIDGE STREET SYDNEY - MOSAIC - SYDNEY</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - BOUR6B</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2002</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE ELEC A ROSTER</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE ELEC E ROSTER</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE ENGINEERING</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE ELEC C ROSTER</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION ENGINEERING</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE SUPPLY</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE PRODUCTION</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE ELEC B ROSTER</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-CORP</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION OPS 4TH FLR</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE ELEC D ROSTER</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE WAREHOUSING</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION I.S. OFFICE</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION ADMIN</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2207 PAYROLL</asp:ListItem>
                                        <asp:ListItem>235 OLD MAITLAND ROAD HEXHAM - HEXHAM</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE PROD SERV B</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE PROD SERV A</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION FRT WORKSHOP</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE OPS B ROSTER</asp:ListItem>
                                        <asp:ListItem>BUNDAR STREET CANBERRA - CANB05</asp:ListItem>
                                        <asp:ListItem>BUNDAR STREET CANBERRA - CANB05</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2201</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION WAREHOUSING</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - BOUR6A</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE PROD SERV 9DF</asp:ListItem>
                                        <asp:ListItem>BEAUMONT ROAD MT. KURING-GAI - AGL ELECTROSERV</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE TECH</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION CHEM</asp:ListItem>
                                        <asp:ListItem>GREENHILL ROAD EASTWOOD - EWOOD</asp:ListItem>
                                        <asp:ListItem>PO BOX 103 BROKE - BROKE2</asp:ListItem>
                                        <asp:ListItem>COMMERCIAL STREET BURRA - BURRA</asp:ListItem>
                                        <asp:ListItem>HUME HIGHWAY SOMERTON - SOMER</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2204</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - RECEPTION NS</asp:ListItem>
                                        <asp:ListItem>229 WOLLOMBI ROAD BROKE - BROKE</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION SUPPLY</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE I.C.E OFFICE</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE I.C.E OFFICE</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE OPS E ROSTER</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE OPS D ROSTER</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE OPS A ROSTER</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE OPS C ROSTER</asp:ListItem>
                                        <asp:ListItem>PO BOX 1541 - WALLUMBILLA</asp:ListItem>
                                        <asp:ListItem>Development</asp:ListItem>
                                        <asp:ListItem>Pitt Street Data Center</asp:ListItem>
                                        <asp:ListItem>Exhibition Street Data Center</asp:ListItem>
                                        <asp:ListItem>OLD PITTWATER ROAD BROOKVALE - BROOKVALE</asp:ListItem>
                                        <asp:ListItem>KEPPEL STREET BATHURST - BATHURST</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION ICE</asp:ListItem>
                                        <asp:ListItem>THE GRAND TRUNKWAY GILLMAN - AGL TORRENS</asp:ListItem>
                                        <asp:ListItem>BAYSWATER POWER STATION MUSWELLBROOK - STATIONS</asp:ListItem>
                                        <asp:ListItem>BAYSWATER POWER STATION MUSWELLBROOK - STATIONS</asp:ListItem>
                                        <asp:ListItem>34 GRIFFITHS ROAD LAMBTON - LAMBTON</asp:ListItem>
                                        <asp:ListItem>LONDON CIRCUIT CANBERRA - CANB03</asp:ListItem>
                                        <asp:ListItem>GREENHILL ROAD EASTWOOD - EW01WN</asp:ListItem>
                                        <asp:ListItem>MILLER STREET NORTH SYDNEY - NS2001AS</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - BOURKE7AS</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB20AAS</asp:ListItem>
                                        <asp:ListItem>SPENCER STREET MELBOURNE - MELB20BAS</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - BOURKE6AS</asp:ListItem>
                                        <asp:ListItem>BAYSWATER POWER STATION - NON-P'ROLL STATIONS</asp:ListItem>
                                        <asp:ListItem>N/A N/A - MANILA_AS</asp:ListItem>
                                        <asp:ListItem>34 GRIFFITHS ROAD LAMBTON - NON-P'ROLL LAMBTON</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB7A</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB7D</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB10C</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB3A</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB10A</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-MINE</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB9D</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB6B</asp:ListItem>
                                        <asp:ListItem>ST KILDA ROAD MELBOURNE - STKILDA</asp:ListItem>
                                        <asp:ListItem>ST KILDA ROAD MELBOURNE - STKILDA</asp:ListItem>
                                        <asp:ListItem>ST KILDA ROAD MELBOURNE - STKILDA</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB7B</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB8D</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB8B</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB8B</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB8C</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB8A</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB9C</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB9B</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB9A</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB11B</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB11A</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB7C</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB6A</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB10B</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB10D</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB11C</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB6D</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB6C</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB11D</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB5D</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB5C</asp:ListItem>
                                        <asp:ListItem>Antiene</asp:ListItem>
                                        <asp:ListItem>Bayswater</asp:ListItem>
                                        <asp:ListItem>Newcastle - Ipera Data Centre</asp:ListItem>
                                        <asp:ListItem>Newcastle - Lambton</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Liddell</asp:ListItem>
                                        <asp:ListItem>Telstra Site</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB5A</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION GROUND FLOOR</asp:ListItem>
                                        <asp:ListItem>N/A N/A - CLARK TOWER D</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB5B</asp:ListItem>
                                        <asp:ListItem>N/A N/A - MANILA TOWER B</asp:ListItem>
                                        <asp:ListItem>N/A N/A - MANILA TOWER A</asp:ListItem>
                                        <asp:ListItem>N/A N/A - CLARK TOWER C</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB5C_CN</asp:ListItem>
                                        <asp:ListItem>OLD PUNT ROAD TOMAGO - NGSF</asp:ListItem>
                                        <asp:ListItem>George Street</asp:ListItem>
                                        <asp:ListItem>GEORGE STREET SYDNEY - SYD22C</asp:ListItem>
                                        <asp:ListItem>GEORGE STREET SYDNEY - SYD23H</asp:ListItem>
                                        <asp:ListItem>GEORGE STREET SYDNEY - SYD24C</asp:ListItem>
                                        <asp:ListItem>GEORGE STREET SYDNEY - SYD22H</asp:ListItem>
                                        <asp:ListItem>GEORGE STREET SYDNEY - SYD23C</asp:ListItem>
                                        <asp:ListItem>Bourke Street</asp:ListItem>
                                        <asp:ListItem>Torrens Island</asp:ListItem>
                                        <asp:ListItem>West Kiewa Power Station</asp:ListItem>
                                        <asp:ListItem>Mount Beauty</asp:ListItem>
                                        <asp:ListItem>Miller Street</asp:ListItem>
                                        <asp:ListItem>Eastwood</asp:ListItem>
                                        <asp:ListItem>Brisbane</asp:ListItem>
                                        <asp:ListItem>TRARALGON - LY-STATION</asp:ListItem>
                                        <asp:ListItem>TRARALGON - LY-MINE</asp:ListItem>
                                        <asp:ListItem>HEXHAM</asp:ListItem>
                                        <asp:ListItem>Gloucestor</asp:ListItem>
                                        <asp:ListItem>Silver Spring</asp:ListItem>
                                        <asp:ListItem>Australia South</asp:ListItem>
                                        <asp:ListItem>Australia South East</asp:ListItem>
                                        <asp:ListItem>Hydro</asp:ListItem>
                                        <asp:ListItem>Camden</asp:ListItem>
                                        <asp:ListItem>MARY STREET BRISBANE - BNE</asp:ListItem>
                                        <asp:ListItem>LONSDALE STREET MELBOURNE - MELB555</asp:ListItem>
                                        <asp:ListItem>BOURKE STREET MELBOURNE - MELB600</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION FRT</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION FRT</asp:ListItem>
                                        <asp:ListItem>COLLINS STREET MELBOURNE - MELB727A</asp:ListItem>
                                        <asp:ListItem>COLLINS STREET MELBOURNE - MELB727B</asp:ListItem>
                                        <asp:ListItem>Collin Square</asp:ListItem>
                                        <asp:ListItem>BARTON'S LANE TRARALGON - LY-STATION OPS 4TH FLOOR</asp:ListItem>
                                        <asp:ListItem>ST GEORGES TCE PERTH - PERTH108</asp:ListItem>
                                        <asp:ListItem>COLLINS STREET MELBOURNE - MELB5F</asp:ListItem>
                                        <asp:ListItem>COLLINS STREET MELBOURNE - MELB5H</asp:ListItem>
                                        <asp:ListItem>COLLINS STREET MELBOURNE - MELB6G</asp:ListItem>
                                        <asp:ListItem>COLLINS STREET MELBOURNE - MELB6F</asp:ListItem>
                                        <asp:ListItem>COLLINS STREET MELBOURNE - MELB6H</asp:ListItem>
                                        <asp:ListItem>COLLINS STREET MELBOURNE - MELB5G</asp:ListItem>
                                        <asp:ListItem>COLLINS STREET MELBOURNE - MELB6E</asp:ListItem>
                                        <asp:ListItem>Visitor</asp:ListItem>
                                        <asp:ListItem>The Grand Trunkway - Torrens Island Power Station</asp:ListItem>
                                        <asp:ListItem>221 London Circuit - ActewAGL B</asp:ListItem>
                                        <asp:ListItem>664 Collins Street - Melbourne 664 Collins</asp:ListItem>
                                        <asp:ListItem>MELB664 - Level 5</asp:ListItem>
                                        <asp:ListItem>5 Old Punt Road - Newcastle Gas Storage Facility</asp:ListItem>
                                        <asp:ListItem>New England Highway - Bayswater Power Station</asp:ListItem>
                                        <asp:ListItem>40 Bundar Street - ActewAGL A</asp:ListItem>
                                        <asp:ListItem>Kiewa Valley Hwy - Hydro Head Office</asp:ListItem>
                                        <asp:ListItem>Eildon Road - Eildon Power Station</asp:ListItem>
                                        <asp:ListItem>MELB664 - Level 6</asp:ListItem>
                                        <asp:ListItem>1331 Wallumbilla South Rd - Wallumbilla LPG Plant</asp:ListItem>
                                        <asp:ListItem>New England Highway - Liddell Power Station</asp:ListItem>
                                        <asp:ListItem>200 George Street - Sydney Corporate</asp:ListItem>
                                        <asp:ListItem>200 Mary St - Brisbane Corporate</asp:ListItem>
                                        <asp:ListItem>699 Bourke Street - Melbourne Corporate</asp:ListItem>
                                        <asp:ListItem>34 Griffiths Road - Macquarie Office</asp:ListItem>
                                        <asp:ListItem>727 Collins Street - Melbourne 727 Collins</asp:ListItem>
                                        <asp:ListItem>108 St Georges Terrace - Perth Corporate</asp:ListItem>
                                        <asp:ListItem>1/22-24 Beaumont Rd - Electroserv</asp:ListItem>
                                        <asp:ListItem>200 George Street</asp:ListItem>
                                        <asp:ListItem>Medhurst Road - Camden Gas Project</asp:ListItem>
                                        <asp:ListItem>226 Greenhill Road - Adelaide Corporate</asp:ListItem>
                                        <asp:ListItem>Barton's Lane - Loy Yang Power Station</asp:ListItem>
                                        <asp:ListItem>PO Box 41 - Silver Springs Gas Storage</asp:ListItem>
                                        <asp:ListItem>Barton's Lane - Loy Yang Mine</asp:ListItem>
                                        <asp:ListItem>Barton's Lane - Loy Yang Operations</asp:ListItem>
                                        <asp:ListItem>Bangalore, India (Non AGL Site) - Bangalore</asp:ListItem>
                                        <asp:ListItem>Bartons Lane - LY-Based Corporate</asp:ListItem>
                                        <asp:ListItem>108 St Georges Terrace - External Training Centre (WA)</asp:ListItem>
                                        <asp:ListItem>40 OHERNS RD - Somerton Power Station</asp:ListItem>
                                        <asp:ListItem>226 Greenhill Road - EASTWG01</asp:ListItem>

                                    </asp:DropDownList>--%>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"  class="validate" ErrorMessage="*Required" ControlToValidate="Site" ForeColor="Red" ValidationGroup="InfSub" InitialValue="Select" ></asp:RequiredFieldValidator>
                                     <asp:Label ID="Error15" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                </div>

                            <li>

                                <div>
                                    <asp:Label ID="Label30" runat="server" Text="Site Group"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSourceSiteGroup"  DataTextField="Site_Group" DataValueField="Site_Group"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceSiteGroup" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1111 %>" SelectCommand="SELECT DISTINCT [Site_Group] FROM [SIT_Site_Alias_Company_LookUp]"></asp:SqlDataSource>
                      
                                     </div>
                            </li>

                            <li>

                                <div>
                                    <asp:Label ID="Label31" runat="server" Text="Country"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSourceCountry"  DataTextField="Country" DataValueField="Country"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceCountry" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1111 %>" SelectCommand="SELECT DISTINCT [Country] FROM [SIT_Site_Alias_Company_LookUp]"></asp:SqlDataSource>
                      
                                     </div>
                            </li>

                                <li>

                                <div>
                                    <asp:Label ID="Label32" runat="server" Text="Region"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSourceRegion"  DataTextField="Region" DataValueField="Region"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceRegion" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1111 %>" SelectCommand="SELECT DISTINCT [Region] FROM [SIT_Site_Alias_Company_LookUp]"></asp:SqlDataSource>
                      
                                     </div>

                            </li>
                                


                                <div>
                                    <asp:Label ID="Label13" runat="server" Text="OEM Supported"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="OEM_Supported" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                        <asp:ListItem>Not Applicable</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server"  class="validate" ErrorMessage="*Required" ControlToValidate="OEM_Supported" ForeColor="Red" ValidationGroup="InfSub" InitialValue="Select" ></asp:RequiredFieldValidator>
                                     <asp:Label ID="Error16" runat="server" Text="*Cannot Be Empty" ForeColor="Red" Visible="false"></asp:Label>
                                </div>
                            </li>
                        </ul>

                    </div>
                        <div class="modal-containt  new-box-container"></div>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMDB_DB_DEVConnectionString %>" SelectCommand="SELECT * FROM [Infra_Att]"></asp:SqlDataSource>
                     
                        <asp:Button ID="Button7" runat="server" Text="Submit" class="button1 newbutton" OnClick="Infra_SumbitBtn_Click"  ValidationGroup="InfSub"/>
                        <div class="clear"></div>
                    <!-- Grid for INFRA_CI -->
                </div>



            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal3" data-keyboard="false" data-backdrop="static" role="dialog" >
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="top-part12">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image20" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"  onclick="pop6(0)"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <p class="heading12">Application to Infrastructure Relationship</p>
                     <div class="new-box">
                    <ul class="width100">

                                <li>

                                    <div>
                                        <asp:TextBox ID="TextBox11" runat="server" Visible="false"></asp:TextBox>
                                        <asp:DropDownList ID="DLApp" runat="server"></asp:DropDownList>
                                    </div>
                                    </li>

                                    <li>
                                    <div>is hosted on</div>
                                    
                                    <div>
                                        <asp:TextBox ID="TextBox12" runat="server" Visible="false"></asp:TextBox>
                                        <asp:DropDownList ID="DLinf1" runat="server"></asp:DropDownList>
                                    </div>
                                      </li>
                                        <li>
                                     <div>on environment</div>
                                    <div>
                                         <asp:DropDownList ID="DropDownList7" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>PROD</asp:ListItem>
                                        <asp:ListItem>NON PROD</asp:ListItem>
                                        <asp:ListItem>DR</asp:ListItem>
                                             </asp:DropDownList>
                                    </div>
                                </li>
                            </ul>
                         </div>

                    
                        <div class="modal-containt new-box-container"></div>

                        <asp:Button ID="Button8" runat="server" Text="Submit" CssClass="button1 newbutton" OnClick="AtoI_SumbitBtn_Click"  />
                            <div class="clear"></div>

                    

                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal4" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="top-part12">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image21" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
              <button type="button" class="close" data-dismiss="modal" onclick="pop7(0)">&times;</button>
                    </div>
                    <p class="heading12">Infrastructure to Infrastructure Relationship</p>
                    <div class="new-box">

                    <ul class="width100">

                                <li>

                                    <div>
                                        <asp:TextBox ID="TextBox13" runat="server" Visible="false"></asp:TextBox>
                                      <asp:DropDownList ID="DLinf3" runat="server"></asp:DropDownList>   
                                    </div>
                                    <div class="clear"></div>

                                    <div style="text-align: center"><b>is linked to Infrastructure CI</b></div>
                                    <div class="clear"></div>
                                    <div>
                                        <asp:TextBox ID="TextBox14" runat="server" Visible="false"></asp:TextBox>
                                     <asp:DropDownList ID="DLinf4" runat="server"></asp:DropDownList>   
                                    </div>
                                </li>
                            </ul>
                    </div>

                    
                        <div class="modal-containt new-box-container"> </div>
                            

                            <asp:Button ID="Button9" runat="server" Text="Submit" class="button1 newbutton" OnClick="ItoI_SumbitBtn_Click" />
                            <div class="clear"></div>

                       

                    

                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal5" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="top-part12">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image22" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
              <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <p class="heading12">Decommission of Infrastructure</p>
                    <div class="new-box">
                    <ul class="width100">
                                <li>

                                    <div>
                                        <asp:Label ID="Label18" runat="server" Text="Infrastructure Name"></asp:Label>
                                    </div>
                                    <div>
                                        <asp:TextBox ID="D_Infra" runat="server"></asp:TextBox>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <asp:Label ID="Label19" runat="server" Text="Type of Decommission"></asp:Label>
                                    </div>

                                    <div>
                                        <asp:DropDownList ID="DropDownList4" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Physical</asp:ListItem>
                                            <asp:ListItem>Logical</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </li>
                            </ul>
                        </div>

                    
                        <div class="modal-containt new-box-container"> </div>
                            

                            <asp:Button ID="Button10" runat="server" Text="Submit" class="button1 newbutton" OnClick="Dcom_SumbitBtn_Click" />


                            

                       
                  

                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal6" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="top-part12">
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                        <asp:Image ID="Image23" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
   <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <p class="heading12">Please select the category of application/Infrastructure/Relationship details to be updated</p>

                    <div class="modal-body">
                        <div class="modal-containt">
                            <div class="button-new">
                                <asp:Button ID="Button16" runat="server" Text="Application Attributes" Style="text-align: center" class="button1" />
                                <asp:Button ID="Button12" runat="server" Text="Infrastructure attributes" Style="text-align: center" class="button1" />
                                <asp:Button ID="Button14" runat="server" Text="Application to Infrastructure Relationship" Style="text-align: center" class="button1" />
                                <asp:Button ID="Button15" runat="server" Text="Infrastructure to Infrastructure Attributes" Style="text-align: center" class="button1" />
                            </div>

                            <%--  <asp:Button ID="Button11" runat="server" Text="Application Attributes"  style="text-align:center" class="button1" /><br />
              <asp:Button ID="Button12" runat="server" Text="Infrastructure attributes" style="text-align:center"  class="button1" /> <br />
              <asp:Button ID="Button14" runat="server" Text="Application to Infrastructure Relationship" style="text-align:center"  class="button1" /><br />
              <asp:Button ID="Button15" runat="server" Text="Infrastructure to Infrastructure Attributes" style="text-align:center" class="button1" /><br />--%>


                            <div class="clear"></div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal7" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="top-part12">
                        <asp:Image ID="Image14" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image24" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
   <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <p class="heading12">This page displays data based on CR number </p>

                    <div class="modal-body">
                        <div class="modal-containt">
                            <<ul>
                                <li>

                                    <div>
                                        <asp:Label ID="Label17" runat="server" Text="CR Number"></asp:Label>
                                    </div>
                                    <div>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </div>
                                </li>
                            </ul>

                            <div class="clear"></div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
          <!-- Modal -->
        <div class="modal fade" id="myModal123" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image15" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image25" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
             <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div> 
                        <p class="heading12">Please Select your action</p> 
                        <div class="new-box">
                            <button type="button" id="ButtonTry" class="button1 fltLeft big-btn" data-toggle="modal" data-target="#myModal3" onclick="pop(0)" >Create New Entry</button>  
                            <asp:Button ID="Button11" runat="server" CssClass="button1 fltLeft big-btn" Text="Amend existing entry" OnClick="move_toGrid" />
                        </div>

                        <div class="modal-containt new-box-container"></div>

                    </div>
                  
                   
                  
        </div>

        </div>
        </div>      

        
          <!-- Modal -->
        <div class="modal fade" id="myModal321" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                 <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image17" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image26" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
             <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div> 
                        <p class="heading12">Please Select your action</p> 
                        <div class="new-box">
                           <button type="button" id="ButtonTry2" class="button1 fltLeft big-btn" data-toggle="modal" data-target="#myModal4" onclick="pop1(0)">Create New Entry</button>  
                        <asp:Button ID="Button17" runat="server" CssClass="button1 fltLeft big-btn" Text="Amend existing entry" OnClick="move_toGrid1" />
                        </div>

                        <div class="modal-containt new-box-container"></div>

                    </div>
                  
                   
                  
        </div>

        </div>
        </div>

         
           <!-- Modal -->
        <div class="modal fade" id="myModal1to2" data-keyboard="false" data-backdrop="static" role="dialog" >
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image27" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image28" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div>
                         <p class="heading12">Does your CR involve procurement of an infrastructure</p>
                        <div class="new-box">
                            <button type="button" id="Btyes1" class="button1 fltLeft big-btn" data-toggle="modal" data-target="#myModal2" onclick="pop2(0)">Yes</button>  
                            <button type="button" id="BtNo1" class="button1 fltLeft big-btn" data-toggle="modal" data-target="#myModal2to3" onclick="pop2(0)">No</button> 
                         </div>
                        <div class="modal-containt new-box-container"></div>
                        
                    
                    </div>
                  
                   
                  
        </div>

        </div>
        </div>
         <!-- Modal -->
        <div class="modal fade" id="myModal2to3" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image29" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image30" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
                    <asp:Button ID="Button31" runat="server" Text="&times;" CssClass="close" BackColor="White"/>
                    <%-- <button type="button" class="close" data-dismiss="modal">&times;</button>--%>
                    </div>
                    <div>
                       <p class="heading12">Does your CR involve mapping a App to infra relationship</p>
                        <div class="new-box">
                            <button type="button" id="Btyes2" class="button1 fltLeft big-btn" data-toggle="modal" data-target="#myModal3" onclick="pop3(0)">Yes</button>  
                            <button type="button" id="BtNo2" class="button1 fltLeft big-btn" data-toggle="modal" data-target="#myModal3to4" onclick="pop3(0)">No</button>  
                        </div>
                        <div class="modal-containt new-box-container"> </div>
                    </div>
                  
                   
                  
        </div>

        </div>
        </div>
         <!-- Modal -->
        <div class="modal fade" id="myModal3to4" data-keyboard="false" data-backdrop="false" role="dialog">
        <div class="modal-dialog">
         <!-- Modal content-->
        <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image31" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image32" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
                        <asp:Button ID="Button30" runat="server" Text="&times;" CssClass="close" BackColor="White"/>
                      <%--  <button type="button" class="close" data-dismiss="modal">&times;</button>--%>
                    </div>
                    <div>
                      <p class="heading12">Does your CR involve mapping a Infra to infra relationship</p> 
                        <div class="new-box">
                            <button type="button" id="Btyes3" class="button1 fltLeft big-btn" data-toggle="modal" data-target="#myModal4" onclick="pop4(0)">Yes</button>  
                            <asp:Button ID="Button32" runat="server" Text="No" CssClass="button1 fltLeft big-btn"/>
                        </div>
                        <div class="modal-containt new-box-container"></div>
                    </div>
                  
                   
                  
        </div>

        </div>
        </div>

         <!-- Modal -->
        <div class="modal fade" id="Help1" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image13" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image38" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
             <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div>
                                                   <p class="heading12">Application Attribute Population Guidelines</p> 
                        <div class="modal-containt text-design">
                            
                                        This screen allows you to add certain information related to your application that needs to be mandatorily maintained at CMDB end. Here are the description of each of the fields that you would need to fill up:
 
<p>Application Category</p> This is field specific for TCS supported applications and is required for cost modelling for TCS contractual agreement and for SLA and support engagement. The expected values are GOLD, SILVER, BRONZE and No Categorization. Select ‘No Categorization’ if your application is not TCS Supported.
<p>Application Complexity</p> This is again a field specific for TCS supported applications and is required for cost modelling for TCS contractual agreement and for SLA and support engagement. The probable values are Simple, Medium, Complex, Custom A, Custom B, Custom F, Custom E, Custom D, API and Not Applicable. Select ‘Not Applicable’ if your application is not TCS Supported.
<p>Remedy Group</p> Please select the name of the Remedy Support Group that would support and manage the application going forward.
<p>Environment Instance</p> This field denotes the possible number of environments on which the application has been hosted. Please select the most appropriate combination as applicable. For example, if your application is not on both PROD and NON-PROD and you also have a DR built for the application, your selection for this field will be PROD-NONPROD-DR. 
<br /> 
<p style="color:#212121;">More information</p>
Please contact <a href="mailto:service_experience@agl.com.au">Service Experience</a> for more information or also reach out to GOV_ASSET_MGT team for further information.  
                    
                        <br />
                       


                            </div>
                    </div>
                  
                   
                  
        </div>

        </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="Help2" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image39" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image40" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
             <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div>
                                                   <p class="heading12">Addition of Infrastructure Attributes:</p> 
                        <div class="modal-containt">
                                        
This screen allows you to add certain information related to your newly procured Infrastructure that needs to be mandatorily maintained at CMDB end. Here are the description of each of the fields that you would need to fill up:
 
<br />&#9658;System Environment: This denotes the Environment specification of the said CI; for example whether the particular CI is for PROD, NON-PROD or DR.
<br />&#9658;Primary Capability: This field denotes the type of CI for example, Server, Switch, Router, storage., etc.
<br />&#9658;Owner: Please provide the name of the person from AGL IT/Business who is responsible to own the particular Infrastructure CI. 
<br />&#9658;Supported By: Please select the name of the Remedy Support Group that would support and manage the particular Infrastructure CI going forward.
<br />&#9658;System Role: This denotes system role of the particular Infrastructure CI; for example Pricing Engine UAT Server etc.
<br />&#9658;Site: Please provide the Location of the CI for example Melbourne, any GO site.
<br />&#9658;OEM Supported: This filed is used to identify whether the Infra CI has reached EOL/EOS; i.e whether it is still supported by the Hardware vendor. Select Not Applicable for an Azure Server.
 <br />
                            <br />
More information 
Please contact <a href="mailto:service_experience@agl.com.au">Service Experience</a> for more information or also reach out to GOV_ASSET_MGT team for further information.   
                    
                        <br />
                        <div class="clear">
                            
                        </div>
                            </div>
                    </div>
                  
                   
                  
        </div>

        </div>
        </div>
        
        <!-- Modal -->
        <div class="modal fade" id="Help3" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image41" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image42" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
             <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div>
                                                   <p class="heading12">Addition of Infrastructure Attributes:</p> 
                        <div class="modal-containt">
                                        
This screen captures the relationships between Application and its associated Infrastructure Components. 
                            <br />Select APP_ID and link to the Server on which it is hosted.
                    
                        <br />
                        <div class="clear">
                            
                        </div>
                            </div>
                    </div>
                  
                   
                  
        </div>

        </div>
        </div>
        
        <!-- Modal -->
        <div class="modal fade" id="Help4" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image43" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image44" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
             <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div>
                                                   <p class="heading12">Addition of Infrastructure Attributes:</p> 
                        <div class="modal-containt">
This screen captures the relationships between Infrastructure components.              
                        <br />
                        <div class="clear">
                            
                        </div>
                            </div>
                    </div>
                  
                   
                  
        </div>

        </div>
        </div>
         <!-- Modal -->
        <div class="modal fade" id="Decom2" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="top-part12">
                        <asp:Image ID="Image47" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image48" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
              <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <p class="heading12">Decommission of Application</p>
                    <div class="new-box">
                    <ul class="width100">
                                <li>

                                    <div>
                                        <asp:Label ID="Label26" runat="server" Text="Application Name"></asp:Label>
                                    </div>
                                    <div>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <asp:Label ID="Label27" runat="server" Text="Type of Decommission"></asp:Label>
                                    </div>

                                    <div>
                                        <asp:DropDownList ID="DropDownList8" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Physical</asp:ListItem>
                                            <asp:ListItem>Logical</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </li>
                            </ul>
                        </div>


                   
                        <div class="modal-containt new-box-container"></div>
                            

                            <asp:Button ID="Button27" runat="server" Text="Submit" class="button1 newbutton" OnClick="Dcom_SumbitBtn_Click" />


                           

                        
                    

                </div>
            </div>
        </div>
          <!-- Modal -->
        <div class="modal fade" id="Create" data-keyboard="false" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image49" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image50" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
             <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div> 
                        <p class="heading12">Please Select your action</p>
                        <div class="new-box">
                        <button type="button" id="InfraAdd" class="button1 fltLeft big-btn2" data-toggle="modal" data-target="#myModal2" onclick="pop5(0)" >Infrastructure</button>  
                        <button type="button" id="InfraAdd1" class="button1 fltLeft big-btn2" data-toggle="modal" data-target="#myModal3" onclick="pop5(0)">App to Infra relation</button>  
                        <button type="button" id="InfraAdd2" class="button1 fltLeft big-btn2" data-toggle="modal" data-target="#myModal4" onclick="pop5(0)">Infra to Infra</button>
                        </div>
                        <div class="modal-containt new-box-container"></div>

                                              
                    </div>
                  
                   
                  
        </div>

        </div>
        </div>  
         
        <!-- Modal -->
        <div class="modal fade" id="UpdateInf" data-keyboard="false" data-backdrop="static" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" onsubmit="return false">
                    <div class="top-part12">
                        <asp:Image ID="Image51" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                       <asp:Image ID="Image52" runat="server" ImageUrl="~/Photos and Logos/magneto-logo-w.png" Width="120px" class="logo1" />
             <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div>
                                                   <p class="heading12">Addition of Infrastructure Attributes:</p> 
                        <div class="modal-containt">
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="CR_Number" DataSourceID="SqlDataSource3">
           <Columns>
               <asp:BoundField DataField="CR_Number" HeaderText="CR_Number" ReadOnly="True" SortExpression="CR_Number" />
               <asp:BoundField DataField="CI_Name" HeaderText="CI_Name" SortExpression="CI_Name" />
               <asp:BoundField DataField="System_Environment" HeaderText="System_Environment" SortExpression="System_Environment" />
               <asp:BoundField DataField="Primary_Capability" HeaderText="Primary_Capability" SortExpression="Primary_Capability" />
               <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
               <asp:BoundField DataField="Supported_By" HeaderText="Supported_By" SortExpression="Supported_By" />
               <asp:BoundField DataField="System_Role" HeaderText="System_Role" SortExpression="System_Role" />
               <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" />
               <asp:BoundField DataField="OEM_Supported" HeaderText="OEM_Supported" SortExpression="OEM_Supported" />
               <asp:BoundField DataField="Transaction_ID" HeaderText="Transaction_ID" InsertVisible="False" ReadOnly="True" SortExpression="Transaction_ID" />
               <asp:BoundField DataField="Transaction_Timestamp" HeaderText="Transaction_Timestamp" SortExpression="Transaction_Timestamp" />
               <asp:BoundField DataField="Transaction_Status" HeaderText="Transaction_Status" SortExpression="Transaction_Status" />
           </Columns>
                  </asp:GridView>
                              <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CMDB_DB_DEVConnectionString %>" SelectCommand="SELECT * FROM [Audit_Infrastructure_CI]"></asp:SqlDataSource>
                        <br />
                        <div class="clear">
                            
                        </div>
                            </div>
                    </div>
                  
                   
                  
        </div>

        </div>
        </div>   

    </div>

     <div class="footer">
            
            <div><b>Administered by:</b> Service Experience Team, AGL e: serviceexperience@agl.com.au</div>
        </div> 

    </form>
</body>
</html>

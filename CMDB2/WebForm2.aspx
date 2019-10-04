<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CMDB2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>



    <title>Forms</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet"/>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
$(document).ready(function(){
  $("#L1").mouseenter(function(){
      $("#L1").fadeTo("fast", 0.3);
     
  });

  $("#L1").mouseleave(function () {
      $("#L1").fadeTo("fast", 1);
  });

  $("#L2").mouseenter(function () {
      $("#L2").fadeTo("fast", 0.3);
  });

  $("#L2").mouseleave(function () {
      $("#L2").fadeTo("fast", 1);
  });

  $("#L3").mouseenter(function () {
      $("#L3").fadeTo("fast", 0.3);
  });

  $("#L3").mouseleave(function () {
      $("#L3").fadeTo("fast", 1);
  });

  $("#L4").mouseenter(function () {
      $("#L4").fadeTo("fast", 0.3);
  });

  $("#L4").mouseleave(function () {
      $("#L4").fadeTo("fast", 1);
  });
  $("#L5").mouseenter(function () {
      $("#L5").fadeTo("fast", 0.3);
  });

  $("#L5").mouseleave(function () {
      $("#L5").fadeTo("fast", 1);
  });

  $("#L6").mouseenter(function () {
      $("#L6").fadeTo("fast", 0.3);
  });

  $("#L6").mouseleave(function () {
      $("#L6").fadeTo("fast", 1);
  });
});
</script>

  
    <style>
        html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code,
        del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li,
        fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
            background: transparent;
            border: 0;
            margin: 0;
            padding: 0;
            list-style: none;
            font-weight: normal;
            word-wrap: break-word;
            overflow-wrap: break-word;
            word-break: normal;
        }

        body {
            font-family:"Titillium Web",sans-serif;
            padding: 0;
            margin: 0;
            background: #ccc;
        }

        .clearfix::after {
            clear: both !important;
        }

        .container-wrapper {
            width: 100%;
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
            min-height: 580px;
        }

        .form-content {
            border: 3px solid #A7A9B3;
            border-radius: 6px;
            padding: 15px 0 20px 18px;
            width: auto;
            height: auto;
            box-shadow: 0 15px 25px rgba(0, 0, 0, .25);
            margin-top: 17px;
            margin-bottom: 40px;
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
            margin-bottom:10px;
        }



            .button-box ul li {
                float: left;
                width: 31%;
                height: 170px;
                margin-bottom: 25px;
                font-size: 15px;
                margin-right: 2%;
                background: #fff;
                /*border: 1px solid #0075CC;*/
                padding: 12px;
                border-radius:8px;
                text-align: center;
                cursor: pointer;
                /*background: #0075cc;*/
                color: #fff;
                position:relative;

            }

                .button-box ul li img{
                    width:100%;
                    height:100%;
                    position:absolute;
                    top:0;
                    left:0;
                    border-radius:8px;
                    z-index:1;
                }


                .button-box ul li:hover {
                    /*background: #0075CC;
                    box-shadow: 0px 3px 4px 0px #00DFED inset;
                    color: #fff;
                    cursor:pointer;*/
                }

             

                /*.button-box ul li .button {
                    background: none;
                    box-shadow: none;
                    border: 0;
                    font-size: 16px;
                    word-break: break-word;
                    overflow-wrap: break-word;
                    white-space: normal;
                    line-height: 27px;
                    border: 1px solid #fff;
                    border-radius: 6px;
                    padding: 6px 12px;
                    min-height: 66px;
                }*/
                .button-box ul li .layer{
                    background:#001CB0;
                    position:absolute;
                    left:0%;
                    top:0%;
                    z-index:2;
                    height:170px;
                    width:100%;
                    opacity:0.5;
                    border-radius:8px;
                }
                
                .button-box ul li .button {
                    background: none;
                    box-shadow: none;
                    border: 0;
                    font-size: 16px;
                    white-space: normal;
                    line-height: 27px;
                    padding: 6px 12px;
                    /*color:#00DFED;*/
                    color:#fff;
                    font-weight:bold;
                    position:absolute;
                    left:6%;
                    top:38%;
                    z-index:3
                    
                }


                    .button-box ul li .button:hover {
                        color: #fff !important;
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
            background-image: linear-gradient(to right, #001CB0, #00DFED) !important;
            border-radius: 6px 6px 0 0;
            height: 55px;
        }

        .heading12 {
            margin: 18px 0 2px 20px;
            font-weight: bold;
 
            font-size: 14px;
        }

        .modal-containt {
            background: #EFF0F4;
            padding: 16px;
            list-style: none;
            border-radius: 6px;
            margin:20px;
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
            width: 92% !important;
            margin-bottom: 5px !important;
        }

        .modal-containt ul li select {
            border: 1px solid #A7A9B3;
            border-radius: 6px;
            height: 26px;
            line-height: 26px;
            width: 100%;
        }

        .table-wrapper {
            /*display: block;
                     white-space: nowrap;*/
            overflow-x: auto;
            width: 94.5%;
        }

        .modal-containt table {
            margin: 10px 0;
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

        button.close {
            background: #fff;
            width: 20px;
            height: 20px;
            border-radius: 15px;
            position: relative;
            top: -7px;
            right: -7px;
            opacity:1!important;
        }
        button.close:hover{
            opacity:1!important;

        }
        .button-new .button1
        {
            float:left;
            width:40%;
            margin:0%;
            margin:15px 0 5px 25px;
            min-height:60px;
            border:1px solid #00DFED;
            font-weight:normal;
            font-size:15px;
        }
        .modal-body
        {
            padding:0px;
        }
        legend
        {
            width:auto;
        }
    </style>
</head>
    <body >
   <form id="form2" runat="server">  
         
  

    <div class="top-part">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Photos and Logos/logo.png" Width="86px" class="logo" />Magneto


    </div>

    <div><nav class="navBar"></nav></div>


    
    
   
   

        <div>
           
          <%--  <legend class="heading1">Please check all the boxes applicable for your CR</legend>--%>


            <div >

                <ul>
                    
                    <li>
                        <asp:GridView ID="GridView1" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="Transaction_ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="CR_NUMBER" HeaderText="CR_NUMBER" SortExpression="CR_NUMBER" />
                                <asp:BoundField DataField="App_ID" HeaderText="App_ID" SortExpression="App_ID" />
                                <asp:BoundField DataField="Application_Name" HeaderText="Application_Name" SortExpression="Application_Name" />
                                <asp:BoundField DataField="Application_Category" HeaderText="Application_Category" SortExpression="Application_Category" />
                                <asp:BoundField DataField="Application_Complexity" HeaderText="Application_Complexity" SortExpression="Application_Complexity" />
                                <asp:BoundField DataField="Remedy_Group" HeaderText="Remedy_Group" SortExpression="Remedy_Group" />
                                <asp:BoundField DataField="Application_Environment" HeaderText="Application_Environment" SortExpression="Application_Environment" />
                                <asp:BoundField DataField="Transaction_ID" HeaderText="Transaction_ID" InsertVisible="False" ReadOnly="True" SortExpression="Transaction_ID" />
                                <asp:BoundField DataField="Transaction_Timestamp" HeaderText="Transaction_Timestamp" SortExpression="Transaction_Timestamp" />
                                <asp:BoundField DataField="Transaction_Status" HeaderText="Transaction_Status" SortExpression="Transaction_Status" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMDB_DB_DEVConnectionString %>" SelectCommand="SELECT * FROM [Audit_Application_CI]"></asp:SqlDataSource>
                        
                    </li>

                    <li>
                        <asp:GridView ID="GridView2" visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="CR_Number" DataSourceID="SqlDataSource2">
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CMDB_DB_DEVConnectionString %>" SelectCommand="SELECT * FROM [Audit_Infrastructure_CI]"></asp:SqlDataSource>
                         </li>
                    <li>
                        <asp:GridView ID="GridView3" visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="Transaction_ID" DataSourceID="SqlDataSource3">
                            <Columns>
                                <asp:BoundField DataField="CR_Number" HeaderText="CR_Number" SortExpression="CR_Number" />
                                <asp:BoundField DataField="App_CI_Name" HeaderText="App_CI_Name" SortExpression="App_CI_Name" />
                                <asp:BoundField DataField="Infra_CI_Name" HeaderText="Infra_CI_Name" SortExpression="Infra_CI_Name" />
                                <asp:BoundField DataField="Transaction_ID" HeaderText="Transaction_ID" InsertVisible="False" ReadOnly="True" SortExpression="Transaction_ID" />
                                <asp:BoundField DataField="Transaction_Timestamp" HeaderText="Transaction_Timestamp" SortExpression="Transaction_Timestamp" />
                                <asp:BoundField DataField="Transaction_Status" HeaderText="Transaction_Status" SortExpression="Transaction_Status" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CMDB_DB_DEVConnectionString %>" SelectCommand="SELECT * FROM [Audit_Relationship_App_to_Infra]"></asp:SqlDataSource>
                        
                    </li>
                    <li>
                        <asp:GridView ID="GridView4" visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="Transaction_ID" DataSourceID="SqlDataSource4">
                            <Columns>
                                <asp:BoundField DataField="CR_Number" HeaderText="CR_Number" SortExpression="CR_Number" />
                                <asp:BoundField DataField="Parent_Infra_CI_Name" HeaderText="Parent_Infra_CI_Name" SortExpression="Parent_Infra_CI_Name" />
                                <asp:BoundField DataField="Child_Infra_CI_Name" HeaderText="Child_Infra_CI_Name" SortExpression="Child_Infra_CI_Name" />
                                <asp:BoundField DataField="Transaction_ID" HeaderText="Transaction_ID" InsertVisible="False" ReadOnly="True" SortExpression="Transaction_ID" />
                                <asp:BoundField DataField="Transaction_Timestamp" HeaderText="Transaction_Timestamp" SortExpression="Transaction_Timestamp" />
                                <asp:BoundField DataField="Transaction_Status" HeaderText="Transaction_Status" SortExpression="Transaction_Status" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CMDB_DB_DEVConnectionString %>" SelectCommand="SELECT * FROM [Audit_Relationship_Infra_to_Infra]"></asp:SqlDataSource>
                        <%--<asp:CheckBox ID="CheckBox4" runat="server" value="1" />
                        <asp:Label ID="Label4" runat="server" Text="Infrastructure to Infrastructure Relationship"></asp:Label>--%>
                    </li>

                 
                   

                </ul>
                <div class="clear"></div>

            </div>
                 <asp:Button ID="Button1" runat="server" Text="Proceed" CssClass="button1" />

        
          
            <br /><br /><br />
        </div>
    

  

   </form>           
</body>

</html>

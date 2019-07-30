<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="CMDB2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>



    <title>Forms</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code,
        del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li,
        fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
            background: transparent;
            border: 0;
            margin: 0;
            padding: 0;
            vertical-align: baseline;
            list-style: none;
            font-weight: normal;
            word-wrap: break-word;
            overflow-wrap: break-word;
            word-break: normal;
        }

        body {
            font-family: 'Titillium Web', sans-serif;
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
            margin-bottom: 30px;
        }



            /*.button-box ul li {
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
                     background-image: linear-gradient(#0075CC, #fff);
                     background-image: linear-gradient(to right, #00DFED, #fff);
                      background:#0075cc;
                     color:#fff;
                }*/

            .button-box ul li {
                float: left;
                width: 23%;
                min-height: 80px;
                margin-bottom: 25px;
                font-size: 15px;
                margin-right: 2%;
                background: #fff;
                border: 1px solid #0075CC;
                padding: 12px;
                border-radius: 6px;
                text-align: center;
                cursor: pointer;
                background: #0075cc;
                color: #fff;
            }


                .button-box ul li:hover {
                    /*background: #0075CC;*/
                    box-shadow: 0px 3px 4px 0px #00DFED inset;
                    color: #fff;
                    /*cursor:pointer;*/
                }

                /*.button-box ul li .button {
                    background: none;
                    box-shadow: none;
                    border: 0;
                    font-size: 18px;
                    word-break: break-word;
                    overflow-wrap: break-word;
                    white-space: normal;
                    line-height:27px;

                    border: 1px solid #fff;
                    border-radius: 6px;
                    padding: 15px;


                    
                }*/

                .button-box ul li .button {
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
            height: 50px;
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
    </style>
</head>
<body>

    <div class="container-wrapper">

        <div class="top-part">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Photos and Logos/logo.png" Width="86px" class="logo" />
            Magneto
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
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                        Magneto
             <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <p class="heading12">Please enter the details for Application</p>
                    

                    <div class="modal-containt">

                        <ul>
                            <li>
                                <div>
                                    <asp:Label ID="Label1" runat="server" Text="Application ID"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="Application_ID" runat="server"></asp:TextBox>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <asp:Label ID="Label2" runat="server" Text="Application Category"></asp:Label>
                                </div>

                                <div>
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem>GOLD</asp:ListItem>
                                        <asp:ListItem>SILVER</asp:ListItem>
                                        <asp:ListItem>BRONZE</asp:ListItem>
                                        <asp:ListItem>No Categorization</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label3" runat="server" Text="Application Complexity"></asp:Label>
                                </div>

                                <div>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>MEDIUM</asp:ListItem>
                                        <asp:ListItem>SIMPLE</asp:ListItem>
                                        <asp:ListItem>COMPLEX</asp:ListItem>
                                        <asp:ListItem>CUSTOM A</asp:ListItem>
                                        <asp:ListItem>CUSTOM B</asp:ListItem>
                                        <asp:ListItem>CUSTOM D</asp:ListItem>
                                        <asp:ListItem>CUSTOM E</asp:ListItem>
                                        <asp:ListItem>CUSTOM F</asp:ListItem>
                                        <asp:ListItem>API</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label4" runat="server" Text="Remedy Group"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="DropDownList3" runat="server">
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
                                    <br />
                                </div>

                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label5" runat="server" Text="Environment Instance"></asp:Label>
                                </div>

                                <div>
                                    <asp:DropDownList ID="Environment_Instance" runat="server">
                                        <asp:ListItem>PROD</asp:ListItem>
                                        <asp:ListItem>NON-PROD</asp:ListItem>
                                        <asp:ListItem>DR</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                </div>
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
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                        Magneto
          <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <p class="heading12">Please complete the Infrastructure attribute details</p>
                    

                    <div class="modal-containt">
                        <ul>
                            <li>

                                <div>
                                    <asp:Label ID="Label6" runat="server" Text="CI Name"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="CI_Name" runat="server"></asp:TextBox>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label7" runat="server" Text="System Environment"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="System_Environment" runat="server"></asp:TextBox>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <asp:Label ID="Label8" runat="server" Text="Primary Capability"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="Primary_Capability" runat="server"></asp:TextBox>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label9" runat="server" Text="Owner"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="Owner" runat="server"></asp:TextBox>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label10" runat="server" Text="Supported By"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="Supported_By" runat="server"></asp:TextBox>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label11" runat="server" Text="System Role"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="System_Role" runat="server"></asp:TextBox>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label12" runat="server" Text="Site"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="Site" runat="server">
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

                                    </asp:DropDownList>
                                </div>
                            </li>
                            <li>

                                <div>
                                    <asp:Label ID="Label13" runat="server" Text="OEM Supported"></asp:Label>
                                </div>
                                <div>
                                    <asp:DropDownList ID="OEM_Supported" runat="server">
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

                        <asp:Button ID="Button7" runat="server" Text="Submit" class="button1" />
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
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                        Magneto
              <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <p class="heading12">Application to Infrastructure Relationship</p>
                   

                    <div class="modal-body">
                        <div class="modal-containt">
                            <ul class="width100">
                                <li>
                                    <div>
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="clear"></div>
                                    <div style="text-align: center"><b>is hosted on </b></div>
                                    <div class="clear"></div>
                                    <div>
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                    </div>
                                </li>
                            </ul>

                            <asp:Button ID="Button8" runat="server" Text="Submit" CssClass="button1" />
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
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                        Magneto
              <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <p class="heading12">Infrastructure to Infrastructure Relationship</p>
                   

                    <div class="modal-body">
                        <div class="modal-containt">
                            <ul class="width100">
                                <li>

                                    <div>
                                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="clear"></div>

                                    <div style="text-align: center"><b>is linked to storage CI</b></div>
                                    <div class="clear"></div>
                                    <div>
                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>

                                    </div>
                                </li>
                            </ul>

                            <asp:Button ID="Button9" runat="server" Text="Submit" class="button1" />
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
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/Photos and Logos/agl-logo.png" Width="40px" class="logo" />
                        Magneto
              <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <p class="heading12">Type of Decommission being done</p>
                   

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

                            <asp:Button ID="Button10" runat="server" Text="Submit" class="button1" />


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

    </div>


    </form>
</body>
</html>

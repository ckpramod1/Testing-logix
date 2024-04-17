﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterForm.Master" AutoEventWireup="true" CodeBehind="SystemDetails.aspx.cs" Inherits="logix.Maintenance.SystemDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Theme/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../Theme/bootstrap/css/bootstrap-select.css" />

    <!-- Theme -->
    <link href="../Theme/assets/css/new_style.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/main.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../Theme/assets/css/fontawesome/font-awesome.min.css" />
    <link href="../Theme/assets/css/system.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/buttonicon.css" rel="stylesheet" type="text/css">
    <!--=== JavaScript ===-->

    <script type="text/javascript" src="../Theme/Content/assets/js/libs/jquery-1.10.2.min.js"></script>

    <!-- Smartphone Touch Events -->

    <!-- General -->
    <!-- Polyfill for min/max-width CSS3 Media Queries (only for IE8) -->
    <script type="text/javascript" src="../Theme/Content/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/slimscroll/jquery.slimscroll.horizontal.min.js"></script>


    <!-- App -->
    <script type="text/javascript" src="../js/helper.js"></script>

    <script>
        $(document).ready(function () {



            $('.selectpicker').selectpicker();

            "use strict";

            App.init(); // Init layout and core plugins
            Plugins.init(); // Init all plugins
            FormComponents.init(); // Init all form-specific plugins

            //$('select.styled').customSelect();

        });


    </script>







    <script src="../Scripts/Validation.js" type="text/javascript"></script>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="../Scripts/jquery-ui.min.js" type="text/javascript"></script>
    <link href="../Styles/jquery-ui.css" rel="stylesheet" type="text/css" />


    <link href="../Styles/SystemDetails.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/GridviewScroll.css" rel="stylesheet" />
    <script src="../Scripts/gridviewScroll.min.js" type="text/javascript"></script>

    <link href="../Styles/chosen.css" rel="stylesheet" />
    <script src="../Scripts/chosen.jquery.js" type="text/javascript"></script>

    <script type="text/javascript">
        function pageLoad(sender, args) {
            $(".chzn-select").chosen(); $(".chzn-select-deselect").chosen({ allow_single_deselect: true });
        }
    </script>

    <style type="text/css">
        a img {
            border: none;
        }

        ol li {
            list-style: decimal outside;
        }

        div#container {
            width: 780px;
            margin: 0 auto;
            padding: 1em 0;
        }

        div.side-by-side {
            width: 100%;
            margin-bottom: 1em;
        }

            div.side-by-side > div {
                float: left;
                width: 50%;
            }

                div.side-by-side > div > em {
                    margin-bottom: 10px;
                    display: block;
                }

        .clearfix:after {
            content: "\0020";
            display: block;
            height: 0;
            clear: both;
            overflow: hidden;
            visibility: hidden;
        }

        #logix_CPH_ddl_cmbfdd_chzn {
            width: 100% !important;
        }

        #logix_CPH_ddl_cmbCd_chzn {
            width: 100% !important;
        }
    </style>
    <style type="text/css">
        /*LOG DETAILS CSS*/


        .btn-logic1 {
            z-index: 2;
            border-radius: 0px;
        }

            .btn-logic1 a {
                border: medium none;
                line-height: normal;
                color: #4e4e4c !important;
                padding: 5px 0px 10px 28px;
                background: url(../Theme/assets/img/buttonIcon/log_ic1.png) no-repeat left 0px;
                margin: 0px 0px 2px 10px;
                font-size: 11px;
            }


        .modalPopupssLog {
            background-color: #FFFFFF;
            border: 1px solid #b1b1b1;
            width: 48.5%;
            height: 232px;
            margin-left: 1%;
            margin-top: -0.9%;
            overflow: auto;
        }

        .GridpnlLog {
            width: 100%;
        }

        .DivSecPanelLog {
            width: 20px;
            Height: 20px;
            border: 0px solid white;
            margin-right: 0%;
            margin-top: 0.5%;
            border-radius: 90px 90px 90px 90px;
            z-index: 999999;
            position: relative;
            float: right;
        }


            .DivSecPanelLog img {
                float: right;
                width: 16px !important;
                height: 16px !important;
            }


        .GridNew {
            font-family: sans-serif;
            font-size: 10pt;
            color: Black;
            margin-top: 0px;
            width: 100%;
        }

            .GridNew th {
                background-color: #dbdbdb !important;
                border-right: 1px solid #51789d;
                font-family: tahoma;
                padding: 2px 5px 2px 5px;
                font-size: 11px;
                color: #4e4c4c !important;
            }

            .GridNew td {
                border-right: 1px solid #dddddd;
                font-size: 11px;
                text-align: left;
                font-family: tahoma;
                padding: 2px 5px 2px 5px;
                margin: 0px;
                color: #4e4c4c;
                border-bottom: 1px solid #dddddd;
            }

        .LogHeadLbl {
            width: 65%;
            float: left;
            margin: 2px 0px 3px 4px;
        }

            .LogHeadLbl label {
                color: #af2b1a;
                font-weight: bold;
                font-size: 12px;
            }



        .LogHeadJob {
            width: auto;
            float: left;
            margin: 0px 0.5% 0px 0px;
        }

        .LogHeadJobInput label {
            font-size: 12px;
        }


        .LogHeadJobInput {
            width: auto;
            white-space: nowrap;
            float: left;
            margin: 1px 0.5% 0px 0px;
        }

            .LogHeadJobInput span {
                color: #1a65af;
                font-size: 12px;
                margin: 4px 0px 0px 0px;
            }




            .LogHeadJobInput label {
                font-size: 12px;
                font-family: sans-serif;
                color: #4e4e4c;
            }

        logix_CPH_PanelLog {
            top: 155px !important;
        }

        .widget.box {
            position: relative;
            top: -8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="logix_CPH" runat="server">


    <!-- Breadcrumbs line End -->
    <div>
        <div class="col-md-12  maindiv">

            <div class="widget box" runat="server">
                <div class="widget-header">
                    <div style="float: left; margin: 0px 0.5% 0px 0px;">
                        <h4 class="hide"><i class="icon-umbrella"></i>
                            <asp:Label ID="Label1" runat="server" Text="System Details"></asp:Label>
                        </h4>
                        <!-- Breadcrumbs line -->
                        <div class="crumbs">
                            <ul id="breadcrumbs" class="breadcrumb">
                                <li><i class="icon-home"></i><a href="#"></a>Home </li>
                                <li><a href="#" title="">Systems</a> </li>
                                <li class="current"><a href="#" title="">System Details</a> </li>
                            </ul>
                        </div>
                    </div>
                    <div style="float: right; margin: 0px -0.5% 0px 0px;" class="log ico-log-sm" >
                        <asp:LinkButton ID="logdetails" runat="server" ToolTip="Log" Style="text-decoration: none" OnClick="logdetails_Click"></asp:LinkButton>
                    </div>
                </div>
                <div class="widget-content">
                    <div class="FormGroupContent4 boxmodal">
                        <div class="UserID">
                            <asp:TextBox ID="txt_User" runat="server" CssClass="form-control" placeholder=" User ID" ToolTip="User ID"
                                OnTextChanged="txt_User_TextChanged" AutoPostBack="True" MaxLength="10" TabIndex="1"></asp:TextBox>
                        </div>
                        <div class="Username1">
                            <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder=" User Name" ToolTip="User Name"
                                AutoPostBack="True" MaxLength="10" TabIndex="2"></asp:TextBox>
                        </div>
                    </div>
                    <div class="FormGroupContent4 boxmodal">

                    <div class="FormGroupContent4">
                        <asp:TextBox ID="txt_division" runat="server" CssClass="form-control" ReadOnly="True" placeholder=" DivisionName" ToolTip="DivisionName"
                            MaxLength="50" TabIndex="3"></asp:TextBox>
                    </div>
                    <div class="FormGroupContent4">
                        <asp:TextBox ID="txt_branch" runat="server" CssClass="form-control" ReadOnly="True" placeholder=" Branch Name" ToolTip="Branch Name"
                            MaxLength="50" TabIndex="4"></asp:TextBox>
                    </div>
                    <div class="FormGroupContent4">
                        <asp:DropDownList ID="ddl_cmbPctype" runat="server" CssClass="chzn-select" data-placeholder="PC Type" TabIndex="5">
                            <asp:ListItem Value=""></asp:ListItem>
                            <asp:ListItem Value="D">DeskTop</asp:ListItem>
                            <asp:ListItem Value="L">LapTop</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                        </div>
                    <div class="FormGroupContent4 boxmodal">

                    <div class="FormGroupContent4">
                        <div class="Shipper1">
                            <asp:TextBox ID="txt_Processor" runat="server" CssClass="form-control" MaxLength="25" placeholder=" Processor" ToolTip="Processor" TabIndex="6"></asp:TextBox></div>
                        <div class="Consignee3">
                            <asp:TextBox ID="txt_Ram" runat="server" CssClass="form-control" MaxLength="20" placeholder=" RAM" ToolTip="RAM" TabIndex="7"></asp:TextBox></div>
                    </div>
                    <div class="FormGroupContent4">
                        <div class="Shipper1">
                            <asp:TextBox ID="txt_Mb" runat="server" CssClass="form-control" MaxLength="25" placeholder=" MotherBoard" ToolTip="MotherBoard" TabIndex="8"></asp:TextBox></div>
                        <div class="Consignee3">
                            <asp:TextBox ID="txt_Moniter" runat="server" CssClass="form-control" MaxLength="25" placeholder=" Moniter" ToolTip="Moniter" TabIndex="9"></asp:TextBox></div>
                    </div>
                        </div>
                    <div class="FormGroupContent4 boxmodal">

                    <div class="FormGroupContent4">
                        <asp:TextBox ID="txt_ip" runat="server" CssClass="form-control" MaxLength="20" placeholder=" IP Address" ToolTip="IP Address" TabIndex="10"></asp:TextBox>
                    </div>
                    <div class="FormGroupContent4">
                        <asp:TextBox ID="txt_DC" runat="server" CssClass="form-control" MaxLength="20" placeholder=" DataCard" ToolTip="DataCard" TabIndex="11"></asp:TextBox>
                    </div>
                        </div>
                    <div class="FormGroupContent4 boxmodal">

                    <div class="FormGroupContent4">
                        <div class="Shipper1">
                            <asp:TextBox ID="txt_HD" runat="server" CssClass="form-control" MaxLength="15" placeholder=" HardDisk" ToolTip="HardDisk" TabIndex="12"></asp:TextBox></div>
                        <div class="Consignee3">
                            <asp:DropDownList data-placeholder="FloppyDisk" ID="ddl_cmbfdd" runat="server" Width="100%" CssClass="chzn-select" TabIndex="13">
                                <asp:ListItem Value=""></asp:ListItem>
                                <asp:ListItem Value="N">NO</asp:ListItem>
                                <asp:ListItem Value="Y">YES</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                    </div>
                    <div class="FormGroupContent4">
                        <div class="Shipper1">
                            <asp:DropDownList data-placeholder="CD" ID="ddl_cmbCd" runat="server" Width="100%" CssClass="chzn-select" TabIndex="14">
                                <asp:ListItem Value=""></asp:ListItem>
                                <asp:ListItem Value="0">NONE</asp:ListItem>
                                <asp:ListItem Value="1">READ</asp:ListItem>
                                <asp:ListItem Value="2">READ/WRITE</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="Consignee3">
                            <asp:DropDownList data-placeholder="DVD" ID="ddl_cmbDvd" runat="server" Width="100%" CssClass="chzn-select" TabIndex="15">
                                <asp:ListItem Value=""></asp:ListItem>
                                <asp:ListItem Value="0">NONE</asp:ListItem>
                                <asp:ListItem Value="1">READ</asp:ListItem>
                                <asp:ListItem Value="2">READ/WRITE</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        </div>
                    <div class="FormGroupContent4">
                        <div class="right_btn">
                            <div class="btn ico-save" id="btn_save1" runat="server">
                                <asp:Button ID="btn_save" runat="server" ToolTip="Save" OnClick="btn_save_Click" TabIndex="16" />
                            </div>
                            <div class="btn ico-view">
                                <asp:Button ID="btn_view" runat="server" ToolTip="View" OnClick="btn_view_Click" TabIndex="17" />

                            </div>
                            <div class="btn ico-cancel" id="btn_back1" runat="server">
                                <asp:Button ID="btn_back" runat="server" ToolTip="Cancel" OnClick="btn_back_Click" TabIndex="18" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="hf_employeeid" runat="server" />

    <div id="PanelLog1" runat="server">
        <asp:Panel ID="PanelLog" runat="server" CssClass="modalPopup" BorderStyle="Solid" BorderWidth="2px" Style="display: none;">
            <div class="divRoated">
                <div class="LogHeadLbl">
                    <div class="LogHeadJob">
                        <label id="lbl" runat="server">User ID :</label>

                    </div>
                    <div class="LogHeadJobInput">

                        <asp:Label ID="JobInput" runat="server"></asp:Label>

                    </div>

                </div>
                <div class="DivSecPanel">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Theme/assets/img/buttonIcon/active/close-sm.png" Width="100%" Height="100%" />
                </div>

                <asp:Panel ID="Panel2" runat="server" CssClass="Gridpnl">

                    <asp:GridView ID="GridViewlog" CssClass="Grid FixedHeader" runat="server" AutoGenerateColumns="true"
                        ForeColor="Black" EmptyDataText="No Record Found" PageSize="20"
                        BackColor="White">
                        <Columns>
                        </Columns>
                        <EmptyDataRowStyle CssClass="EmptyRowStyle" />
                        <HeaderStyle CssClass="myGridHeader" />
                        <AlternatingRowStyle CssClass="GrdAltRow" />
                        <PagerStyle CssClass="GridviewScrollPager" />
                    </asp:GridView>

                </asp:Panel>
                <div class="Break"></div>
            </div>


        </asp:Panel>
    </div>
    <asp:Label ID="Label4" runat="server"></asp:Label>

    <asp:ModalPopupExtender ID="ModalPopupExtenderlog" runat="server" PopupControlID="PanelLog"
        DropShadow="false" TargetControlID="Label4" CancelControlID="Image3" BehaviorID="Test1">
    </asp:ModalPopupExtender>
</asp:Content>

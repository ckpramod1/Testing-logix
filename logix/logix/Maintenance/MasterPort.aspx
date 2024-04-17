﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterForm.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="MasterPort.aspx.cs" Inherits="logix.Maintenance.MasterPort" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Theme/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../Theme/bootstrap/css/bootstrap-select.css">

    <!-- Theme -->
    <link href="../Theme/assets/css/new_style.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/new_style_responsive.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/main.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../Theme/assets/css/fontawesome/font-awesome.min.css" />
    <link href="../Theme/assets/css/system.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/buttonicon.css" rel="stylesheet" type="text/css">
    <!--=== JavaScript ===-->

    <script type="text/javascript" src="../Theme/Content/assets/js/libs/jquery-1.10.2.min.js"></script>

    <!-- App -->
    <script type="text/javascript" src="../Theme/Content/assets/js/app.js"></script>
    <script type="text/javascript" src="../Theme/Content/assets/js/plugins.js"></script>
    <script type="text/javascript" src="../Theme/Content/assets/js/plugins.form-components.js"></script>
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

    <link href="../Styles/MasterPort.css" rel="Stylesheet" type="text/css" />
    <%--<script src="../Scripts/validationfortextbox.js" type="text/javascript"></script>--%>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="../Scripts/jquery-ui.min.js" type="text/javascript"></script>
    <link href="../Styles/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/validationfortextbox.js" type="text/javascript"></script>
    <link href="../Styles/button1.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/Validation.js" type="text/javascript"></script>
    <link href="../Styles/DropDownButton.css" rel="Stylesheet" type="text/css" />
    <link href="../Styles/GridviewScroll.css" rel="stylesheet" />
    <script src="../Scripts/gridviewScroll.min.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
        function pageLoad(sender, args) {

           <%-- $(document).ready(function () {
               $('#<%=grd1.ClientID%>').gridviewScroll({
                   width: 786,
                   height:205,
                   arrowsize: 30,

                   varrowtopimg: "../images/arrowvt.png",
                   varrowbottomimg: "../images/arrowvb.png",
                   harrowleftimg: "../images/arrowhl.png",
                   harrowrightimg: "../images/arrowhr.png"
               });
           });--%>

           $(document).ready(function () {
               $("#<%=txtcountry.ClientID %>").autocomplete({
                   source: function (request, response) {

                       $.ajax({
                           url: "MasterPort.aspx/GetCountry",
                           data: "{ 'prefix': '" + request.term + "'}",
                           dataType: "json",
                           type: "POST",
                           contentType: "application/json; charset=utf-8",
                           success: function (data) {

                               response($.map(data.d, function (item) {

                                   return {

                                       label: item.split('~')[0],
                                       val: item.split('~')[1]
                                   }
                               }))

                           },

                           error: function (response) {
                               alertify.alert(response.responseText);
                           },
                           failure: function (response) {
                               alertify.alert(response.responseText);
                           }
                       });
                   },
                   select: function (event, i) {
                       $("#<%=txtcountry.ClientID %>").val(i.item.label);
                       $("#<%=txtcountry.ClientID %>").change();
                       $("#<%=hdf_countryid.ClientID %>").val(i.item.val);

                   },
                   focus: function (event, i) {
                       $("#<%=txtcountry.ClientID %>").val(i.item.label);
                    $("#<%=hdf_countryid.ClientID %>").val(i.item.val);

                },
                   close: function (event, i) {
                       $("#<%=txtcountry.ClientID %>").val(i.item.label);
                    $("#<%=hdf_countryid.ClientID %>").val(i.item.val);

                },
                   minLength: 1
               });
           });

        $(document).ready(function () {
            $("#<%=txtdistrict.ClientID %>").autocomplete({
                source: function (request, response) {

                    $.ajax({
                        url: "MasterPort.aspx/GetDistrict",
                        data: "{ 'prefix': '" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {

                            response($.map(data.d, function (item) {

                                return {

                                    label: item.split('~')[0],
                                    val: item.split('~')[1]
                                }
                            }))

                        },

                        error: function (response) {
                            alertify.alert(response.responseText);
                        },
                        failure: function (response) {
                            alertify.alert(response.responseText);
                        }
                    });
                },
                select: function (event, i) {
                    $("#<%=txtdistrict.ClientID %>").val(i.item.label);
                    $("#<%=txtdistrict.ClientID %>").change();
                    $("#<%=hdf_districtid.ClientID %>").val(i.item.val);

                },
                focus: function (event, i) {
                    $("#<%=txtdistrict.ClientID %>").val(i.item.label);
                    $("#<%=hdf_districtid.ClientID %>").val(i.item.val);

                },
                close: function (event, i) {
                    $("#<%=txtdistrict.ClientID %>").val(i.item.label);
                    $("#<%=hdf_districtid.ClientID %>").val(i.item.val);

                },
                minLength: 1
            });
        });

        $(document).ready(function () {
            $("#<%=txtportname.ClientID %>").autocomplete({
               source: function (request, response) {

                   $.ajax({
                       url: "MasterPort.aspx/GetPortName",
                       data: "{ 'prefix': '" + request.term + "'}",
                       dataType: "json",
                       type: "POST",
                       contentType: "application/json; charset=utf-8",
                       //dataFilter: function (data) { return data; },
                       success: function (data) {

                           response($.map(data.d, function (item) {

                               return {

                                   label: item.split('~')[0],
                                   val: item.split('~')[1]
                               }
                           }))

                       },

                       error: function (response) {
                           alertify.alert(response.responseText);
                       },
                       failure: function (response) {
                           alertify.alert(response.responseText);
                       }
                   });
               },
               select: function (event, i) {
                   $("#<%=txtportname.ClientID %>").val(i.item.label);
                    $("#<%=txtportname.ClientID %>").change();
                    $("#<%=hdf_portid.ClientID %>").val(i.item.val);

                },
                focus: function (event, i) {
                    $("#<%=txtportname.ClientID %>").val(i.item.label);
                    $("#<%=hdf_portid.ClientID %>").val(i.item.val);

                },
                close: function (event, i) {
                    $("#<%=txtportname.ClientID %>").val(i.item.label);
                    $("#<%=hdf_portid.ClientID %>").val(i.item.val);

                },
                minLength: 1
            });
       });

        $(".dropdown img.flag").addClass("flag visibility");

        $(".dropdown dt a").click(function () {
            $(".dropdown dd ul").toggle();
        });

        $(".dropdown dd ul li a").click(function () {
            var text = $(this).html();
            $(".dropdown dt a span").html(text);
            $(".dropdown dd ul").hide();
            $("#result").html("Selected value is: " + getSelectedValue("sample"));
        });

        function getSelectedValue(id) {
            return $("#" + id).find("dt a span.value").html();
        }

        $(document).bind('click', function (e) {
            var $clicked = $(e.target);
            if (!$clicked.parents().hasClass("dropdown"))
                $(".dropdown dd ul").hide();
        });

        $("#flag Switcher").click(function () {
            $(".dropdown img.flag").toggleClass("flag visibility");
        });

    }
    </script>

    <script type="text/javascript">
        function TxtFocus() {

            var el = $("#<%=txt_Search.ClientID %>").get(0);
            var elemLen = el.value.length;
            el.selectionStart = elemLen;
            el.selectionEnd = elemLen;
            el.focus();
        }

        function GetDetail() {
            $.ajax({
                type: "POST",
                url: "../Maintenance/MasterPort.aspx/GetEmpName",
                data: '{Prefix: "' + $("#<%=txt_Search.ClientID %>").val() + '" }',
                 contentType: "application/json; charset=utf-8",
                 dataType: "json",
                 success: OnSuccess,
                 failure: function (response) {
                     //alertify.alert(response.d);
                 }

             });

         }

         function OnSuccess(response) {
             $("#<%=btn_search.ClientID %>").click();
        }

    </script>

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

      
            .divleft{
                 width: 48%;
            float: left;
            margin: 0px 0.5% 0px 0px;
            }

             .divright{
                 width: 51.5%;
            float: left;
            margin: 0px 0px 0px 0px;
            }
             .SectorInput {
    width: 70.5%;
    float: left;
    margin: 0px 0.5% 0px 0px;
}
             .STInput {
    width: 29%;
    float: left;
    margin: 0px 0px 0px 0px;
}
   
             div#logix_CPH_div_iframe .widget-content {
    top: 0px !important;
    padding-top:65px !important;
}
             .FixedButtonsss {
    width: calc(100vw - 665px) !important;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="logix_CPH" runat="server">

    <%--  <div class="div_total">--%>
    <asp:Panel ID="Panel1" runat="server">

        <!-- Breadcrumbs line End -->
        <div>
            <div class="col-md-12  maindiv">

                <div class="widget box" runat="server" id="div_iframe">
                    <div class="widget-header">
                        <div>
                        <div style="float: left; margin: 0px 0.5% 0px 0px;">
                            <h4 class="hide"><i class="icon-umbrella"></i>
                                <asp:Label ID="Label1" runat="server" Text="Port"></asp:Label></h4>
                             <!-- Breadcrumbs line -->
        <div class="crumbs">
            <ul id="breadcrumbs" class="breadcrumb">
                <li><i class="icon-home"></i><a href="#"></a>Home </li>
                <li><a href="#" title="">Maintenance</a> </li>
                <li class="current"><a href="#" title="">Port</a> </li>
            </ul>
        </div>
                        </div>
                        <div style="float: right; margin: 0px -0.5% 0px 0px;" class="log ico-log-sm" >
                            <asp:LinkButton ID="logdetails" runat="server" ToolTip="Log" Style="text-decoration: none" OnClick="logdetails_Click"></asp:LinkButton>
                        </div>
                            </div>


                                                <div class="FixedButtons">
    <div class="right_btn">
        <div class="btn ico-save" id="btnsave1" runat="server">
            <asp:Button ID="btnsave"  Text="Save" runat="server" ToolTip="Save" TabIndex="9"
                OnClick="btnsave_Click" />
        </div>
        <div class="btn ico-delete" id="btndelete_id" runat="server" >
            <asp:Button ID="btndelete"  Text="Delete"  runat="server" ToolTip="Delete" TabIndex="10" /></div>
        <div class="btn ico-view">
            <asp:Button ID="btnview" runat="server"  Text="View" ToolTip="View" TabIndex="11" OnClick="btnview_Click" /></div>
        <div class="btn ico-cancel" id="btnclose1" runat="server">
            <asp:Button ID="btnclose" runat="server" Text="Cancel" ToolTip="Cancel" TabIndex="12" OnClick="btnclose_Click" /></div>
        <div class="btn ico-send" style="display: none;" >
            <asp:Button ID="btn_search" runat="server" Text="Send"  OnClick="btn_search_Click" /></div>
    </div>
</div>

                    </div>
                    <div class="widget-content">
                        
                        <div class="FormGroupContent4">
                        <div class="divleft">
                        <div class="FormGroupContent4 boxmodal">
                             <div class="Amount6" style="width:50%" >
                                <asp:TextBox ID="txtportcode" runat="server" AutoPostBack="True" TabIndex="2" CssClass="form-control" onkeyup="CheckTextLength(this,6);" placeholder="Port Code" ToolTip="Port Code"></asp:TextBox></div>
                            <div class="STInput" style="width:49.5%">
                                <%-- placeholder changed from  Air Code to Air port code Praveen 30May2023 --%>
                                <asp:TextBox ID="txtaircode" runat="server" onkeypress="return ValidateAlpha (event,'Air Code');" CssClass="form-control" onkeyup="CheckTextLength(this,6);" TabIndex="3" placeholder="Air Port Code" ToolTip="Air Port Code"></asp:TextBox> 

                            </div>
                        </div>
                           
                            <div class="FormGroupContent4">
                            <div class="CurrencyInput" style="width:100%" >
                                <asp:TextBox ID="txtportname" runat="server" AutoPostBack="True" OnTextChanged="txtportname_TextChanged" onkeypress="return ValidateAlpha (event,'Port Name');" onkeyup="CheckTextLength(this,50);" TabIndex="1" CssClass="form-control" placeholder="Port Name" ToolTip="Port Name"></asp:TextBox></div>
                            </div>
                        <div class="FormGroupContent4">
                            <div class="CurrencyInput" style="width:35%" >
                                <asp:TextBox ID="txtdistrict" runat="server" AutoPostBack="True" MaxLength="30" OnTextChanged="txtdistrict_TextChanged" TabIndex="4" CssClass="form-control" placeholder="District" ToolTip="District"></asp:TextBox></div>
                            <div class="Amount6" style="width:35%" >
                                <asp:TextBox ID="txtstate" runat="server" Enabled="False" CssClass="form-control" placeholder="State" ToolTip="State" TabIndex="5"></asp:TextBox></div>
                            <div class="STInput" style="width:29%" >
                                <asp:TextBox ID="txtcountry" runat="server" CssClass="form-control" AutoPostBack="true" Enabled="true" placeholder="Country" ToolTip="Country" TabIndex="6" OnTextChanged="txtcountry_TextChanged"></asp:TextBox></div>
                        </div>
                          
                        <div class="FormGroupContent4 boxmodal">
                            <div class="SectorInput">
                                <asp:TextBox ID="txtsector" runat="server" CssClass="form-control" Enabled="False" placeholder="Sector" ToolTip="Sector" TabIndex="7"></asp:TextBox></div>
                            <div class="STInput">
                                <asp:TextBox ID="txtstdcode" runat="server" BorderColor="#999997" onkeyup="CheckTextLength(this,10);" onkeypress="return isNumberKey (event)" CssClass="form-control" TabIndex="8" placeholder="Std Code" ToolTip="Std Code"></asp:TextBox></div>
                        </div>
                        


                         
                                <div class="bordertopNew"></div>
                           
                            <div class="FormGroupContent4 boxmodal">

                        <div class="FormGroupContent4">

                            <asp:TextBox ID="txt_Search" runat="server" placeholder="Search" ToolTip="Search" CssClass="form-control" MaxLength="100" AutoPostBack="true" onkeyup="GetDetail();" TabIndex="13"></asp:TextBox>
                        </div>
                        <div class="FormGroupContent4">
                            <div class="gridpnl MB0">
                                <asp:GridView CssClass="Grid FixedHeader" ID="grd1" runat="server" AutoGenerateColumns="False" Width="100%" ForeColor="Black" ShowHeaderWhenEmpty="true" OnPageIndexChanging="grd1_PageIndexChanging" AllowPaging="false" PageSize="12">
                                    <Columns>
                                        <asp:BoundField DataField="portname" HeaderText="Port">
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle Font-Bold="false" HorizontalAlign="Justify" />
                                        </asp:BoundField>
                                        <%--   <asp:BoundField DataField="portcode" HeaderText="Port Code">
        <HeaderStyle  Wrap="true"/>
        <ItemStyle Font-Bold="false" HorizontalAlign="Justify"  Wrap="false"/>
        </asp:BoundField>
        <asp:BoundField DataField="portname" HeaderText="Port Name">
        <HeaderStyle  Wrap="true"/>
         <ItemStyle Font-Bold="false" HorizontalAlign="Justify"   Wrap="false"/>
        </asp:BoundField>
        <asp:BoundField DataField="districtname" HeaderText="District">
        <HeaderStyle Wrap="true"/>
         <ItemStyle Font-Bold="false" HorizontalAlign="Justify"   Wrap="false"/>
        </asp:BoundField>
        <asp:BoundField DataField="statename" HeaderText="State">
        <HeaderStyle wrap="true"/>
        <ItemStyle Font-Bold="false" HorizontalAlign="Justify"   Wrap="false"/>
        </asp:BoundField>
        <asp:BoundField DataField="countryname" HeaderText="Country">
        <HeaderStyle Wrap="true"/>
         <ItemStyle Font-Bold="false" HorizontalAlign="Justify"  Wrap="false"/>
        </asp:BoundField>--%>
                                    </Columns>
                                    <EmptyDataRowStyle CssClass="EmptyRowStyle" />
                                    <HeaderStyle CssClass="GridviewScrollHeader" />
                                    <AlternatingRowStyle CssClass="GrdAltRow" />

                                    <%--<AlternatingRowStyle CssClass="GrdRowStyle" /> 
                <HeaderStyle CssClass="GridviewScrollHeader" /> 
            <RowStyle CssClass="GridviewScrollItem" /> --%>
                                </asp:GridView>
                            </div>
                        </div>
                            </div>
                        <div class="FormGroupContent4">
                            <div runat="server" id="signup" visible="false" style="width: 14%; margin-left: 84.5%; margin-right: 2%; margin-top: 0.2%;">
                                <dl id="sample" class="dropdown">
                                    <dt><a href="#"><span>Export To </span></a></dt>
                                    <dd>
                                        <ul>
                                            <li>
                                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="Excelfunforserver_Click">Excel</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="pdffunforserver_Click">PDF</asp:LinkButton></li>
                                        </ul>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="FormGroupContent4">
                            <asp:HiddenField ID="hdf_portid" runat="server" />
                            <asp:HiddenField ID="hdf_districtid" runat="server" />
                            <asp:HiddenField ID="hdf_stateid" runat="server" />
                            <asp:HiddenField ID="hdf_countryid" runat="server" />
                            <asp:HiddenField ID="hdf_sectorid" runat="server" />
                        </div>
                           </div>
          

                 
                                      <div class="divright">
                        
                                          </div>
                            </div>

                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

    <div id="PanelLog1" runat="server">
        <asp:Panel ID="PanelLog" runat="server" CssClass="modalPopup" BorderStyle="Solid" BorderWidth="2px" Style="display: none;">
            <div class="divRoated">
                <div class="LogHeadLbl">
                    <div class="LogHeadJob">
                        <label id="lbl" runat="server">Port Name:</label>

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

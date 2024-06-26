﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterForm.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="FIEventsnew.aspx.cs" Inherits="logix.FI.FIEventsnew" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Theme/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../Theme/bootstrap/css/bootstrap-select.css" />

    <!-- Theme -->
    <link href="../Theme/assets/css/new_style.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/new_style_responsive.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/main.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../Theme/assets/css/fontawesome/font-awesome.min.css" />
    <link href="../Theme/assets/css/system.css" rel="stylesheet" type="text/css" />
    <link href="../Theme/assets/css/buttonicon.css" rel="stylesheet" type="text/css" />
    <!--=== JavaScript ===-->

    <script type="text/javascript" src="../Theme/Content/assets/js/libs/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/bootstrap/js/bootstrap-select.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/assets/js/libs/lodash.compat.min.js"></script>

    <!-- Smartphone Touch Events -->
    <script type="text/javascript" src="../Theme/Content/plugins/touchpunch/jquery.ui.touch-punch.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/event.swipe/jquery.event.move.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/event.swipe/jquery.event.swipe.js"></script>

    <!-- General -->
    <script type="text/javascript" src="../Theme/Content/assets/js/libs/breakpoints.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/respond/respond.min.js"></script>
    <!-- Polyfill for min/max-width CSS3 Media Queries (only for IE8) -->
    <script type="text/javascript" src="../Theme/Content/plugins/cookie/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/slimscroll/jquery.slimscroll.horizontal.min.js"></script>

    <!-- Page specific plugins -->
    <!-- Charts -->
    <script type="text/javascript" src="../Theme/Content/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/daterangepicker/moment.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/daterangepicker/daterangepicker.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/blockui/jquery.blockUI.min.js"></script>

    <!-- Forms -->
    <script type="text/javascript" src="../Theme/Content/plugins/typeahead/typeahead.min.js"></script>
    <!-- AutoComplete -->
    <script type="text/javascript" src="../Theme/Content/plugins/autosize/jquery.autosize.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/inputlimiter/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/uniform/jquery.uniform.min.js"></script>
    <!-- Styled radio and checkboxes -->
    <script type="text/javascript" src="../Theme/Content/plugins/tagsinput/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/select2/select2.min.js"></script>
    <!-- Styled select boxes -->
    <script type="text/javascript" src="../Theme/Content/plugins/fileinput/fileinput.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/duallistbox/jquery.duallistbox.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/bootstrap-inputmask/jquery.inputmask.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/bootstrap-wysihtml5/wysihtml5.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/bootstrap-multiselect/bootstrap-multiselect.min.js"></script>

    <!-- Globalize -->
    <script type="text/javascript" src="../Theme/Content/plugins/globalize/globalize.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/globalize/cultures/globalize.culture.de-DE.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/globalize/cultures/globalize.culture.ja-JP.js"></script>

    <!-- App -->
    <script type="text/javascript" src="../Theme/Content/assets/js/app.js"></script>
    <script type="text/javascript" src="../Theme/Content/assets/js/plugins.js"></script>
    <script type="text/javascript" src="../Theme/Content/assets/js/plugins.form-components.js"></script>
        <script type="text/javascript" src="../js/helper.js"></script>
    <script type="text/javascript" src="../js/TextField.js"></script>

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

    <link href="../Styles/FIEvents.css" rel="stylesheet" />
    <link href="../Styles/GridviewScroll.css" rel="stylesheet" />
    <link href="../Styles/chosen.css" rel="stylesheet" />
    <script src="../Scripts/chosen.jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        function pageLoad(sender, args) {
            $(".chzn-select").chosen(); $(".chzn-select-deselect").chosen({ allow_single_deselect: true });
            $(document).ready(function () {
                $("#<%=txtCfs.ClientID %>").autocomplete({

                    source: function (request, response) {
                        $("#<%=hf_cfs.ClientID %>").val(0);
                        $.ajax({
                            url: "../FI/FIEvents.aspx/GetCfs",
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
                                //alertify.alert(response.responseText);
                            },
                            failure: function (response) {
                                //alertify.alert(response.responseText);
                            }

                        });
                    },

                    select: function (event, i) {
                        $("#<%=txtCfs.ClientID %>").val($.trim(i.item.label.split(',')[0]));
                         $("#<%=txtCfs.ClientID %>").change();
                         $("#<%=hf_cfs.ClientID %>").val(i.item.val);
                     },
                    focus: function (event, i) {
                        $("#<%=txtCfs.ClientID %>").val($.trim(i.item.label.split(',')[0]));
                        $("#<%=hf_cfs.ClientID %>").val(i.item.val);
                    },
                    change: function (event, i) {
                        if (i.item) {
                            $("#<%=txtCfs.ClientID %>").val($.trim(i.item.label.split(',')[0]));
                            $("#<%=hf_cfs.ClientID %>").val(i.item.val);

                        }

                    },
                    close: function (event, i) {
                        var result = $("#<%=txtCfs.ClientID %>").val().toString().split(',')[0];
                        $("#<%=txtCfs.ClientID %>").val($.trim(result));

                    },
                    minLength: 1
                });
            });

        }
    </script>
    <style type="text/css">
        .hide {
            display: none;
        }

        #logix_CPH_ddlEvents_chzn {
            width: 100% !important;
        }

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
                font-size: 11px;
            }

        .LogHeadJob {
            width: auto;
            float: left;
            margin: 0px 0.5% 0px 0px;
        }

        .LogHeadJobInput label {
            font-size: 11px;
        }

        .LogHeadJobInput {
            width: 15%;
            float: left;
            margin: 1px 0.5% 0px 0px;
        }

            .LogHeadJobInput span {
                color: #1a65af;
                font-size: 11px;
                margin: 4px 0px 0px 0px;
            }

        .EventsDrop {
            width: 19%;
            float: left;
            margin: 0px;
        }

        .LogHeadJobInput label {
            font-size: 11px;
            font-family: sans-serif;
            color: #4e4e4c;
        }

        .MawblCal {
            width: 7%;
            float: right;
            margin: 0px 0% 0px 0px;
        }

        span#mailcontent {
            top: 0%;
            position: absolute;
            left: 0%;
            background-color: #fff;
            border: 1px solid #b1b1b1;
            padding: 10px;
            width: 100%;
        }

        span#logix_CPH_mailcontent {
            width: 1044px;
            margin: 0px auto;
            padding: 10px;
            border: 1px solid #000;
            background-color: #fff;
            z-index: 9999;
            position: absolute;
            left: 14%;
            overflow: auto;
            top: 1%;
            height: 549px;
        }

        .MT15 {
            margin: 15px 0px 0px 0px;
        }

        .chzn-drop {
            height: 180px !important;
        }

        .chzn-container-single .chzn-single span {
            color: #000 !important;
        }

        .EventsDrop {
            width: 19%;
            float: left;
            margin: 0px 0px 0px 0px;
        }
        .FinalHead {
    top: 0px;
}
        

/*New Design - Buttons*/

 
.FixedButtonsss {
    position: fixed;
    top: 30px;
    left: 0;
    background: #fff;
    z-index: 10;
    box-shadow: 0px 0px 20px rgb(0 0 0 / 10%);
    width: calc(100vw - 5px);
    border-bottom: 0.5px solid #00000010;
    padding: 1px 0 5px 10px;
}
div#logix_CPH_div_iframe .widget-content {
    top: 0 !important;
    padding-top: 45px !important;
}
 

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="logix_CPH" runat="server">

    <!-- Breadcrumbs line End -->
    <div >
        <div class="col-md-12  maindiv">

            <div class="widget box" runat="server" id="div_iframe">
                <div class="widget-header">
                    <div style="float: left; margin: 0px 0.5% 0px 0px;">
                        <h4 class="hide"><i class="icon-umbrella"></i>
                            <asp:Label ID="lbl_Header" runat="server" Text="Events"></asp:Label></h4>
                          <!-- Breadcrumbs line -->
    <div class="crumbs">
        <ul id="breadcrumbs" class="breadcrumb">
            <li><i class="icon-home"></i><a href="#"></a>Home </li>
            <li><a href="#" title="">Customer Support</a> </li>
            <li><a href="#" id="HeaderLabel1" runat="server"></a></li>
            <li class="current"><a href="#" title="">Events</a> </li>
        </ul>
    </div>
                    </div>
                    <div style="float: right; margin: 0px -0.5% 0px 0px;" class="log ico-log-sm" >
                        <asp:LinkButton ID="logdetails" runat="server" ToolTip="Log" Style="text-decoration: none" OnClick="logdetails_Click"></asp:LinkButton>
                    </div>

                </div>

                <div class="widget-content">
                    <div class="FormGroupContent4 FixedButtons">
                        <div class="right_btn">
                            <div class="btn ico-update" id="visblehid">
                                <asp:Button ID="btn_update" runat="server" Text="Update" ToolTip="Update" OnClick="btn_update_Click" />
                            </div>
                            <div class="btn ico-cancel" id="btn_cancel1" runat="server">
                                <asp:Button ID="btn_Cancel" runat="server" Text="Cancel"  ToolTip="Cancel/Back" OnClick="btn_Cancel_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="FormGroupContent4 boxmodal">
                        <div class="EventsDrop">
                            <asp:Label ID="Label1" runat="server" Text="Events"> </asp:Label>
                            <asp:DropDownList ID="ddlEvents" runat="server" AutoPostBack="true" data-placeholder="Events" CssClass="chzn-select" ToolTip="Events" OnSelectedIndexChanged="ddlEvents_SelectedIndexChanged">
                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                            </asp:DropDownList>

                        </div>

                        <div class="MawblCal DateR">
                            <asp:Label ID="Label2" runat="server" Text="Date"> </asp:Label>
                            <asp:TextBox ID="txt_dtdate" runat="server" CssClass="form-control" placeholder="" ToolTip="Date" TabIndex="4"></asp:TextBox>
                        </div>
                        <div class="CFS2" style="display: none;">
                            <asp:TextBox ID="txtCfs" runat="server" AutoPostBack="true" placeholder="CFS" ToolTip="CFS" CssClass="form-control" OnTextChanged="txtCfs_TextChanged"></asp:TextBox>
                        </div>
                    </div>
                    <div class="FormGroupContent4" style="display: none;">
                        <div class="JobInput16">
                            <asp:TextBox ID="txtjob" runat="server" placeholder="Job" ToolTip="Job" AutoPostBack="true" CssClass="form-control" OnTextChanged="txtjob_TextChanged" TabIndex="1"></asp:TextBox>
                        </div>

                        <div class="ETA">
                            <asp:TextBox ID="txtEta" runat="server" placeholder="ETA" ToolTip="ETA" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="FormGroupContent4" style="display: none;">
                        <div class="ConC">
                            <asp:TextBox ID="txtContainer" runat="server" placeholder="Container" ReadOnly="true" ToolTip="Container" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="SizeC">
                            <asp:TextBox ID="txtsize" runat="server" placeholder="Size" ToolTip="Size" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="SealC">
                            <asp:TextBox ID="txtSeal" runat="server" placeholder="Seal" ReadOnly="true" ToolTip="Seal" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="SealCal1">
                            <asp:TextBox ID="txtdestuff" runat="server" placeholder="Destuff" ToolTip="Destuff" CssClass="form-control"></asp:TextBox>
                            <asp:CalendarExtender ID="dt_date2" runat="server" TargetControlID="txtdestuff"
                                Format="dd/MM/yyyy"></asp:CalendarExtender>
                        </div>
                        <div class="btn ico-update">
                            <asp:Button ID="btnAdd" runat="server" ToolTip="Update" OnClick="btnAdd_Click" TabIndex="2" />
                        </div>
                    </div>
                    <div class="FormGroupContent4 boxmodal">
                        <div class="gridpnl">
                        <asp:GridView ID="grd" runat="server" AutoGenerateColumns="False" Width="100%" HorizontalAlign="Left" PageSize="15"
                            CssClass="Grid FixedHeader"  AllowPaging="false" OnPageIndexChanging="grd_PageIndexChanging" ShowHeaderWhenEmpty="true" OnRowDataBound="grd_RowDataBound" OnSelectedIndexChanged="grd_SelectedIndexChanged">
                            <Columns>

                                <asp:BoundField DataField="Jobno" HeaderText="Job #">
                                    <HeaderStyle Width="100px" HorizontalAlign="Center" />
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>

                                <asp:TemplateField HeaderText="BLno #">
                                    <ItemTemplate>
                                        <div style="overflow: hidden; text-overflow: ellipsis; width: 50px">
                                            <asp:Label ID="BLno" runat="server" Text='<%# Bind("BLno") %>' ToolTip='<%# Bind("BLno") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <HeaderStyle Wrap="false" Width="100px" HorizontalAlign="Center" />
                                    <ItemStyle Wrap="false" Width="100px" HorizontalAlign="Left"></ItemStyle>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="MBLno #">
                                    <ItemTemplate>
                                        <div style="overflow: hidden; text-overflow: ellipsis; width: 50px">
                                            <asp:Label ID="MBLno" runat="server" Text='<%# Bind("MBLno") %>' ToolTip='<%# Bind("MBLno") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <HeaderStyle Wrap="false" Width="100px" HorizontalAlign="Center" />
                                    <ItemStyle Wrap="false" Width="100px"  HorizontalAlign="Left"></ItemStyle>
                                </asp:TemplateField>

                                <%--<asp:BoundField DataField="vessel" HeaderText="Vsl/Voy">
                    </asp:BoundField>--%>

                                <asp:TemplateField HeaderText="Vessel VS Voy">
                                    <ItemTemplate>
                                        <div style="overflow: hidden; text-overflow: ellipsis; width: 100px">
                                            <asp:Label ID="VesselVoy" runat="server" Text='<%# Bind("VesselVoy") %>' ToolTip='<%# Bind("VesselVoy") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <HeaderStyle Wrap="false" Width="200px" HorizontalAlign="Center" />
                                    <ItemStyle Wrap="false"  Width="200px" HorizontalAlign="Left"></ItemStyle>
                                </asp:TemplateField>

                                <%--<asp:BoundField DataField="agent" HeaderText="Agent">
                    </asp:BoundField>--%>

                                <asp:TemplateField HeaderText="Vessel Name">
                                    <ItemTemplate>
                                        <div style="overflow: hidden; text-overflow: ellipsis; width: 100px">
                                            <asp:Label ID="vesselname" runat="server" Text='<%# Bind("vesselname") %>' ToolTip='<%# Bind("vesselname") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <HeaderStyle Wrap="false" Width="200px" HorizontalAlign="Center" />
                                    <ItemStyle Wrap="false"  Width="200px" HorizontalAlign="Left"></ItemStyle>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="POD">
                                    <ItemTemplate>
                                        <div style="overflow: hidden; text-overflow: ellipsis; width: 100px">
                                            <asp:Label ID="pod" runat="server" Text='<%# Bind("pod") %>' ToolTip='<%# Bind("pod") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <HeaderStyle Wrap="false" Width="100px" HorizontalAlign="Center" />
                                    <ItemStyle Wrap="false" HorizontalAlign="Left"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="POL">
                                    <ItemTemplate>
                                        <div style="overflow: hidden; text-overflow: ellipsis; width: 100px">
                                            <asp:Label ID="pol" runat="server" Text='<%# Bind("pol") %>' ToolTip='<%# Bind("pol") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <HeaderStyle Wrap="false" Width="100px" HorizontalAlign="Center" />
                                    <ItemStyle Wrap="false" HorizontalAlign="Left"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="MLO">
                                    <ItemTemplate>
                                        <div style="overflow: hidden; text-overflow: ellipsis; width: 100px">
                                            <asp:Label ID="MLOname" runat="server" Text='<%# Bind("MLOname") %>' ToolTip='<%# Bind("MLOname") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <HeaderStyle Wrap="false" Width="100px" HorizontalAlign="Center" />
                                    <ItemStyle Wrap="false" HorizontalAlign="Left"></ItemStyle>
                                </asp:TemplateField>
                                <%--  <asp:TemplateField HeaderText="BL#">
                                    <ItemTemplate>
                                        <div style="overflow: hidden; text-overflow: ellipsis; width: 200px">
                                            <asp:Label ID="blno" runat="server" Text='<%# Bind("blno") %>' ToolTip='<%# Bind("blno") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <HeaderStyle Wrap="false" width="200px" HorizontalAlign="Center" />
                                    <ItemStyle Wrap="false" HorizontalAlign="Left"></ItemStyle>
                                </asp:TemplateField>--%>
                                <asp:BoundField DataField="date1" HeaderText="Date">
                                    <HeaderStyle Width="25px" HorizontalAlign="Center" />
                                </asp:BoundField>

                                <%--<asp:BoundField DataField="mlo" HeaderText="M L O">
                    </asp:BoundField>--%>

                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="Chk_Select" runat="server" AutoPostBack="True" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" Width="5%" />
                                </asp:TemplateField>

                            </Columns>
                            <EmptyDataRowStyle CssClass="EmptyRowStyle" />
                            <HeaderStyle CssClass="" />
                            <AlternatingRowStyle CssClass="GrdAltRow" />
                            <PagerStyle CssClass="GridviewScrollPager" />
                        </asp:GridView>
                            </div>
                    </div>
                    <div class="FormGroupContent" style="display: none;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="Grid FixedHeader"  Width="100%" ForeColor="Black" PageSize="15" BackColor="White" ShowHeaderWhenEmpty="true" AllowPaging="false" OnPageIndexChanging="GridView1_PageIndexChanging">
                            <Columns>

                                <asp:BoundField DataField="jobno" HeaderText="Job #">
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>

                                <asp:BoundField DataField="blno" HeaderText="BL #">
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>

                                <asp:BoundField DataField="consignee" HeaderText="Consignee">
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>

                                <%-- <asp:BoundField DataField="consignee" HeaderText="AgentID">
                        <HeaderStyle Wrap="true" HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>--%>

                                <asp:BoundField DataField="vesselname" HeaderText="Vsl/voy">
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>

                                <asp:BoundField DataField="arrived" HeaderText="Arrived On">
                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>

                                <asp:BoundField DataField="dodate" HeaderText="DO Date" />

                                <%--<asp:BoundField DataField="cbm" HeaderText="CBM">
                        <HeaderStyle Wrap="true" HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>--%>

                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="grdSelect" runat="server" Width="60px" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                            <EmptyDataRowStyle CssClass="EmptyRowStyle" />
                            <HeaderStyle CssClass="" />
                            <AlternatingRowStyle CssClass="GrdAltRow" />
                            <PagerSettings Mode="NumericFirstLast" PageButtonCount="2" />
                        </asp:GridView>
                    </div>
                    <div class="FormGroupContent" style="display: none;">
                        <asp:GridView ID="grdStuff" runat="server" AutoGenerateColumns="False" Width="100%" HorizontalAlign="Left" ShowHeaderWhenEmpty="true" CssClass="Grid FixedHeader"  OnRowDataBound="grdStuff_RowDataBound" OnSelectedIndexChanged="grdStuff_SelectedIndexChanged">
                            <Columns>

                                <asp:BoundField DataField="containerno" HeaderText="Container#">
                                    <ItemStyle HorizontalAlign="Center" Width="250px" />
                                </asp:BoundField>

                                <asp:BoundField DataField="sizetype" HeaderText="Size">
                                    <ItemStyle HorizontalAlign="Center" Width="150px" />
                                </asp:BoundField>

                                <asp:BoundField DataField="sealno" HeaderText="Seal #">
                                    <ItemStyle HorizontalAlign="Center" Width="250px" />
                                </asp:BoundField>

                                <asp:BoundField DataField="destuff" HeaderText="Destuff" DataFormatString="{0:dd/MM/yyyy}">
                                    <ItemStyle HorizontalAlign="Center" Width="150px" />
                                </asp:BoundField>

                            </Columns>
                            <EmptyDataRowStyle CssClass="EmptyRowStyle" />
                            <HeaderStyle CssClass="" />
                            <AlternatingRowStyle CssClass="GrdAltRow" />
                            <PagerStyle CssClass="GridviewScrollPager" />
                        </asp:GridView>
                    </div>
                  

                    <div class="FormGroupContent4" style="display: none;">
                        <div class="CargoPick">
                            <asp:TextBox ID="txtCargopickedon" runat="server" placeholder="CarcoPickedOn" ToolTip="CarcoPickedOn" CssClass="form-control"></asp:TextBox>
                            <asp:CalendarExtender ID="dtvalidity" runat="server" TargetControlID="txtCargopickedon" Format="dd/MM/yyyy"></asp:CalendarExtender>

                        </div>

                    </div>

                    <asp:Panel ID="PanelLog" runat="server" CssClass="modalPopup" BorderStyle="Solid" BorderWidth="2px" Style="display: none;">
                        <div class="divRoated">
                            <div class="LogHeadLbl">
                                <div class="LogHeadJob">
                                    <label>Job # :</label>

                                </div>
                                <div class="LogHeadJobInput">

                                    <asp:Label ID="JobInput" runat="server"></asp:Label>

                                </div>

                            </div>
                            <div class="DivSecPanel">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Theme/assets/img/buttonIcon/active/close-sm.png" Width="100%" Height="100%" />
                            </div>

                            <asp:Panel ID="Panel1" runat="server" CssClass="Gridpnl">

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
                    <asp:Label ID="Label4" runat="server"></asp:Label>

                    <asp:ModalPopupExtender ID="ModalPopupExtenderlog" runat="server" PopupControlID="PanelLog"
                        DropShadow="false" TargetControlID="Label4" CancelControlID="Image2" BehaviorID="Test1">
                    </asp:ModalPopupExtender>
                </div>
            </div>
            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_dtdate" Format="dd/MM/yyyy"></asp:CalendarExtender>
        </div>
    </div>

    <asp:Label ID="mailcontent" runat="server" Visible="false"></asp:Label>
    <div>

        <asp:HiddenField ID="hf_jobno" runat="server" />
        <asp:HiddenField ID="hf_blno" runat="server" />
        <asp:HiddenField ID="hf_cfs" runat="server" />
        <asp:HiddenField ID="hf_docno" runat="server" />

        <asp:HiddenField ID="hid_date" runat="server" />
    </div>

</asp:Content>

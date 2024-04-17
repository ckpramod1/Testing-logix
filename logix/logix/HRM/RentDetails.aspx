﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterForm.Master" AutoEventWireup="true"
    CodeBehind="RentDetails.aspx.cs" Inherits="logix.HRM.RentDetails" %>

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
     <link href="../Theme/newTheme/css/systemnewdeign.css" rel="stylesheet" />
    <!--=== JavaScript ===-->

    <script type="text/javascript" src="../Theme/Content/assets/js/libs/jquery-1.10.2.min.js"></script>

    <!-- Smartphone Touch Events -->

    <!-- General -->
    <!-- Polyfill for min/max-width CSS3 Media Queries (only for IE8) -->
    <script type="text/javascript" src="../Theme/Content/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/slimscroll/jquery.slimscroll.horizontal.min.js"></script>

  
    <!-- App -->

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







    <link href="../Styles/RentDetails.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/chosen.css" rel="stylesheet" />
    <script src="../Scripts/chosen.jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        function pageLoad(sender, args) {
            $(".chzn-select").chosen(); $(".chzn-select-deselect").chosen({ allow_single_deselect: true });
        }
    </script>
    <style type="text/css">
        .RentDrop {
    float: left;
    margin: 0 0.5% 0 0;
    width: 8%;
}
        .RentLbl {
    float: left;
    margin: 0 0.5% 0 0;
    width: 12.5%;
}

        .RentEmp {
    width: 4%;
    float: left;
    margin: 0px 0.5% 0px 0px;
}

.RentReceived {
    width: 12.5%;
    float: left;
    margin: 0px 0.5% 0px 0px;
}
.RentPaid {
    width: 12%;
    float: left;
    margin: 0px 0.5% 0px 0px;
}
.RentBasic {
    width: 13%;
    float: left;
    margin: 0px 0% 0px 0px;
}

.RentBasic1 {
    width: 15%;
    float: left;
    margin: 0px 0% 0px 0px;
}

.MTCtrl20 {
    margin-top: 20px !important;
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
             width:65%;
             float:left;
             margin:2px 0px 3px 4px;

         }

         .LogHeadLbl label
         {
             color:#af2b1a;
             font-weight:bold;
             font-size:12px;
         }



         .LogHeadJob {
             width:auto;
             float:left;
             margin:0px 0.5% 0px 0px;
         }

         .LogHeadJobInput label {
             font-size:12px;             
            
         }


           .LogHeadJobInput {
             width:15%;
             float:left;
             margin:1px 0.5% 0px 0px;
         }

             .LogHeadJobInput span {
                 color:#1a65af;
                 font-size:12px;
                 margin:4px 0px 0px 0px;
             }




             .LogHeadJobInput label {
                 font-size:12px;
                 font-family:sans-serif;
                 color:#4e4e4c;
             }

             logix_CPH_PanelLog {
             border-width: 2px;
             border-style: solid;
             position: fixed;
             z-index: 100001;
             left: 352px;
             top: 187px !important;
         }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="logix_CPH" runat="server">

      <!-- Breadcrumbs line -->
          <div class="crumbs">
        <ul id="breadcrumbs" class="breadcrumb">
              <li><i class="icon-home"></i><a href="#"></a>Home </li>
            <li><a href="#">HRM</a></li>
              <li><a href="#" title="">IT Workings</a> </li>
              <li class="current">Rent Details</li>
            </ul>
      </div>
    <!-- Breadcrumbs line End -->

    
    <div class="FormBg">
    <div class="FormHead">
      <h3><img src="../Theme/newTheme/img/rentdetails_ic.png" /> <asp:Label ID="lbl" runat="server" Text="Rent Details"></asp:Label>
       
          <div style="float: right; margin: 0px -0.5% 0px 0px;" class="log ico-log-sm" >
                        <asp:LinkButton ID="logdetails" runat="server" ToolTip="Log" Style="text-decoration: none" OnClick="logdetails_Click"></asp:LinkButton>
                    </div>

      </h3>
    </div>
        <div class="Form-ControlBg">
                    <div class="FormGroupContent4">
                 <div class="RentLbl MTCtrl20"><asp:Label ID="lbl_income" runat="server" Text="[Income Tax Exemptions]"></asp:Label></div>
                 <div class="RentDrop">  
                     
                     <div class="LabelWidth">Year</div>
                     <div class="FieldInput"> <asp:DropDownList ID="ddl_Year" runat="server"  
            AppendDataBoundItems="True" AutoPostBack="True"  ToolTip="year" data-placeholder="year"
            onselectedindexchanged="ddl_Year_SelectedIndexChanged" CssClass="chzn-select">
        </asp:DropDownList></div>
                    </div>
                 <div class="RentInLbl MTCtrl20"><asp:Label ID="lbl_Rent" runat="server" Text="Rent Details for the Financial Year"></asp:Label></div>
                 </div>
               <div class="FormGroupContent4">
                   <div class="RentEmp">
                       <div class="LabelWidth MTCtrl6"> <asp:LinkButton ID="lnk_empcode" runat="server" Style="text-decoration: none;"  ForeColor="Red"  PostBackUrl="~/HRM/EmployeeFind.aspx">EmpCode</asp:LinkButton></div>
                      </div>
                   <div class="RentEmpInput">
                       <div class="LabelWidth">Emp Code</div>
                       <div class="FieldInput"><asp:TextBox ID="txt_Empcode" runat="server" AutoPostBack="True" ToolTip="Empcode" placeholder="" CssClass="form-control" ontextchanged="txt_Empcode_TextChanged"></asp:TextBox></div>
                       </div>
                   <div class="RentName">
                       <div class="LabelWidth">Name</div>
                       <div class="FieldInput"> <asp:TextBox ID="txt_Name" runat="server" ReadOnly="True" ToolTip="Name"  placeholder="" CssClass="form-control"></asp:TextBox></div>
                      </div>
                   <div class="RentComp">
                       
                       <div class="LabelWidth">Company</div>
                       <div class="FieldInput"><asp:TextBox ID="txt_Company" runat="server" ReadOnly="True" ToolTip="Company" placeholder="" CssClass="form-control"></asp:TextBox></div>
                       </div>
                   <div class="RentDept">
                       <div class="LabelWidth">Dept</div>
                       <div class="FieldInput"><asp:TextBox ID="txt_Dept" runat="server" ToolTip="Dept" placeholder="" CssClass="form-control"></asp:TextBox></div>
                       </div>
                   <div class="RentDesi">
                       
                       <div class="LabelWidth">Desg</div>
                       <div class="FieldInput"><asp:TextBox ID="txt_Desg" runat="server" ReadOnly="True" ToolTip="Desg" placeholder="" CssClass="form-control"></asp:TextBox></div>
                       </div>
                   <div class="RentGrade">
                       <div class="LabelWidth">Grade</div>
                       <div class="FieldInput"><asp:TextBox ID="txt_Grade" runat="server" ToolTip="Grade" placeholder="" CssClass="form-control"></asp:TextBox></div>
                       </div>
                   <div class="RentBasic1">
                       <div class="LabelWidth">Basic</div>
                       <div class="FieldInput"><asp:TextBox ID="txt_Basic" runat="server" ReadOnly="True" style="text-align:right" ToolTip="Basic" placeholder="" CssClass="form-control"></asp:TextBox></div>
                       </div>
                   </div>
               <div class="FormGroupContent4">
                   <div class="RentActual">
                       <div class="LabelWidth">Actual Rent Paid (Year)</div>
                       <div class="FieldInput"><asp:TextBox ID="txt_ActualRent" runat="server" AutoPostBack="True" style="text-align:right;"  ToolTip="Actual Rent Paid(Year)" placeholder="" CssClass="form-control"
            ontextchanged="txt_ActualRent_TextChanged"></asp:TextBox></div>
                       </div>
                   <div class="RentReceived">
                       <div class="LabelWidth">Rent Received</div>
                       <div class="FieldInput"><asp:TextBox ID="txt_RentReceived" runat="server" ReadOnly="True" style="text-align:right;" ToolTip="Rent Received"  placeholder="" CssClass="form-control"></asp:TextBox></div>
                       </div>
                   <div class="RentPaid">
                       <div class="LabelWidth">Rent Paid Minus 10% Of Basic</div>
                       <div class="FieldInput"><asp:TextBox ID="txt_RentPaid" runat="server" style="text-align:right;" ReadOnly="True" ToolTip="Rent Paid minus 10 % Of Basic" placeholder="" CssClass="form-control"></asp:TextBox></div>
                       </div>
                   <div class="RentBasic">
                       <div class="LabelWidth">50% / 40% of Basic</div>
                       <div class="FieldInput"><asp:TextBox ID="txt_Basic50" runat="server" style="text-align:right;" ToolTip="50% / 40% of Basic" placeholder=""  CssClass="form-control"></asp:TextBox></div>
                       </div>
                   </div>
              <div class="FormGroupContent4">
                  <div class="RentTax">
                      
                      
                      <asp:Label ID="lbl_TaxExp" runat="server" Text="Tax Exemption - Whichever is lower from the above "></asp:Label></div>
                  <div class="right_btn MT0 MB05">
                      
                      
                      <div class="btn ico-update"> <asp:Button ID="btn_update" runat="server" ToolTip="Update" onclick="btn_update_Click"  /> </div>
                     
                      <div class="btn ico-view"><asp:Button ID="btn_View" runat="server" ToolTip="View" onclick="btn_View_Click"  /></div>
                       <div class="btn ico-cancel" id="btn_cancel1" runat="server"><asp:Button ID="btn_cancel" runat="server" ToolTip="Cancel" onclick="btn_cancel_Click" /></div>
                  </div>
                  </div>
              <div class="FormGroupContent4">
                  <div class="RentTaxLbl"></div>
                  <asp:Panel ID="pln_Emp" runat="server" class="div_frame" Style="display: none;">
        <div class="div_close">
            <asp:Image ID="Close_Emp" runat="server" ImageAlign="Baseline" ImageUrl="~/images/GrdClose.gif" />
        </div>
        <div class="div_Break">
        </div>
        <div class="div_frame">
            <iframe id="iframecost" runat="server" src="" frameborder="0" class="frames" style="background-color: #FFFFFF">
            </iframe>
        </div>
    </asp:Panel>
              </div>
            </div>
        </div>




       <div >
        <div class="col-md-12  maindiv"> 
    
     <div class="widget box" runat ="server">
     <div class="widget-header">
                  <h4><i class="icon-umbrella"></i> </h4>
                </div>
          <div class="widget-content">
   
              </div>
         </div>
            </div>
           </div>

    <asp:Panel ID="PanelLog" runat="server" CssClass="modalPopup" BorderStyle="Solid" BorderWidth="2px" Style="display: none;">
                        <div class="divRoated">
                            <div class="LogHeadLbl">
                                <div class="LogHeadJob">
                                    <label>Rent Details #</label>

                                </div>
                                <div class="LogHeadJobInput">

                                    <asp:Label ID="JobInput" runat="server"></asp:Label>

                                </div>

                            </div>
                            <div class="DivSecPanel">
                                <asp:Image ID="imglog" runat="server" ImageUrl="~/Theme/assets/img/buttonIcon/active/close-sm.png" Width="100%" Height="100%" />
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
                   


     <asp:Label ID="Label3" runat="server"></asp:Label>

    <asp:ModalPopupExtender ID="ModalPopupExtenderlog" runat="server" PopupControlID="PanelLog"
        DropShadow="false" TargetControlID="Label3" CancelControlID="imglog" BehaviorID="Test1">
    </asp:ModalPopupExtender>

    <asp:HiddenField ID="hid" runat="server" />
    <asp:HiddenField ID="hid_Empid" runat="server" />
    <asp:HiddenField ID="hid_Amount" runat="server" />
    
</asp:Content>
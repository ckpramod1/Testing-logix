﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterForm.Master" AutoEventWireup="true" CodeBehind="EmployeeBenefits.aspx.cs" Inherits="logix.HRM.EmployeeBenefits" %>

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
    <link href="../Styles/VoucherRegister.css" rel="stylesheet" />
     <link href="../Theme/assets/css/buttonicon.css" rel="stylesheet" type="text/css">
       <link href="../Theme/newTheme/css/systemnewdeign.css" rel="stylesheet" />
    <!--=== JavaScript ===-->

  <%--  <script type="text/javascript" src="../Theme/Content/assets/js/libs/jquery-1.10.2.min.js"></script>--%>

    <!-- Smartphone Touch Events -->

    <!-- General -->
    <!-- Polyfill for min/max-width CSS3 Media Queries (only for IE8) -->
    <script type="text/javascript" src="../Theme/Content/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="../Theme/Content/plugins/slimscroll/jquery.slimscroll.horizontal.min.js"></script>

  
    <!-- App -->

     <script type="text/javascript">
         $(document).ready(function () {



             $('.selectpicker').selectpicker();

             "use strict";

             App.init(); // Init layout and core plugins
             Plugins.init(); // Init all plugins
             FormComponents.init(); // Init all form-specific plugins

             //$('select.styled').customSelect();

         });


    </script>

    <style type="text/css">


            .ajax__tab_xp .ajax__tab_header .ajax__tab_active .ajax__tab_tab {background-image:none!important; padding:0px 5px 0px 5px!important; border-top:2px solid #0077c9;
    }


    .Tab_Text_Multiline1 p {
    padding: 5px 5px 0 15px;
}
        .Tab_Text_Multiline2 {width:100%; height:100px;
        }

    .ajax__tab_xp .ajax__tab_header .ajax__tab_active .ajax__tab_inner{background-image:none!important; padding-bottom:1px; border-left:1px solid #b1b1b1;
    }
    .ajax__tab_xp .ajax__tab_header .ajax__tab_inner {padding-left:0px!important;
    }
    .ajax__tab_xp .ajax__tab_header .ajax__tab_tab {padding:0px!important;
    }
    .ajax__tab_xp .ajax__tab_header .ajax__tab_active .ajax__tab_outer {background-image:none!important; margin:0px 5px 0px 0px; border-right:1px solid #b1b1b1;
    }
    .ajax__tab_xp .ajax__tab_header .ajax__tab_outer {padding-right:0px!important;
    }
    .ajax__tab_active {padding:0px 0px 0px 0px!important;
    }
    #Tab_header > span {
    margin: 0 3px 0 0;
}
    #TabContainer1_header > span {
    margin: 0 6px 0 0;
}
    #__tab_Tab_TabPanel1 > span {
    color: #4c4c4c;
    font-size: 11px;
    padding: 2px 5px;
    margin:0px 0px 0px 0px;
}

    #__tab_Tab_TabPanel8 > span {
         color: #4c4c4c;
    font-size: 11px;
    padding: 2px 5px;
    margin:0px 0px 0px 0px;
    }
    .ajax__tab_tab {
         color: #4c4c4c;
    font-size: 11px;
    padding: 2px 5px!important;
    margin:0px 0px 0px 0px;
    font-weight:normal;
    }
    #__tab_Tab_TabPanel2 > span {
            color: #4c4c4c;
    font-size: 11px;
    padding: 2px 5px;
    margin:0px 0px 0px 0px;
    }
    #__tab_Tab_TabPanel3 > span {
        color: #4c4c4c;
    font-size: 11px;
    padding: 2px 5px;
    margin:0px 0px 0px 0px;
    }
    #__tab_Tab_TabPanel7 > span{
        color: #4c4c4c;
    font-size: 11px;
    padding: 2px 5px;
    margin:0px 0px 0px 0px;
    }
    #__tab_Tab_TabPanel4 > span {
            color: #4c4c4c;
    font-size: 11px;
    padding: 2px 5px;
    margin:0px 0px 0px 0px;
    }
    #__tab_Tab_TabPanel5 > span {
        color: #4c4c4c;
    font-size: 11px;
    padding: 2px 5px;
    margin:0px 0px 0px 0px;
    }
    #__tab_Tab_TabPanel6 > span
    {
        color: #4c4c4c;
    font-size: 11px;
    padding: 2px 5px;
    margin:0px 0px 0px 0px;
    }

    #__tab_TabContainer1_TabPanel9 > span {
        color: #4c4c4c;
    font-size: 11px;
    padding: 2px 2px;
    margin:0px 0px 0px 0px;
    }
    #__tab_TabContainer1_TabPanel10 > span{
        color: #4c4c4c;
    font-size: 11px;
    padding: 2px 2px;
    margin:0px 0px 0px 0px;
    }
    #__tab_TabContainer1_TabPanel11 > span{
        color: #4c4c4c;
    font-size: 11px;
    padding: 2px 2px;
    margin:0px 0px 0px 0px;
    }
    #__tab_TabContainer1_TabPanel12 > span{
        color: #4c4c4c;
    font-size: 11px;
    padding: 2px 2px;
    margin:0px 0px 0px 0px;
    }
    #__tab_TabContainer1_TabPanel13 > span{
        color: #4c4c4c;
    font-size: 11px;
    padding: 2px 2px;
    margin:0px 0px 0px 0px;
    }

    #__tab_TabContainer2_TabPanel14 > span {
         color: #4c4c4c;
    font-size: 11px;
    padding: 2px 2px;
    margin:0px 0px 0px 0px;
    }
    #__tab_TabContainer2_TabPanel15 > span{
         color: #4c4c4c;
    font-size: 11px;
    padding: 2px 2px;
    margin:0px 0px 0px 0px;
    }
    #__tab_TabContainer2_TabPanel16 > span{
         color: #4c4c4c;
    font-size: 11px;
    padding: 2px 2px;
    margin:0px 0px 0px 0px;
    }
    #__tab_TabContainer2_TabPanel17 > span{
         color: #4c4c4c;
    font-size: 11px;
    padding: 2px 2px;
    margin:0px 0px 0px 0px;
    }
    #TabContainer2_header > span {
    margin: 0 5px 0 0;
}
        .ajax__tab_xp .ajax__tab_header {font-family:sans-serif!important;
        }
    .ajax__tab_xp .ajax__tab_header .ajax__tab_tab {background-image:none!important;
    }
    .ajax__tab_xp .ajax__tab_header .ajax__tab_inner{background-image:none!important;
    }
    .ajax__tab_xp .ajax__tab_header .ajax__tab_outer{background-image:none!important;
    }

        .logix_CPH_Tab_TabPanel8_tab {margin:0px 2px 0px 2px;
        }

        .ajax__tab_xp .ajax__tab_header .ajax__tab_active .ajax__tab_outer {padding:0px 0px 0px 0px;
        }



        #__tab_logix_CPH_Tab_TabPanel8 > span {padding:2px 5px;
        }

        #__tab_logix_CPH_Tab_TabPanel1 > span{padding:2px 5px;
        }
        #logix_CPH_Tab_header > span {padding:0px 5px 0px 5px;
        }
        #__tab_logix_CPH_Tab_TabPanel2 > span{padding:0px 5px 0px 5px;
        }
       #__tab_logix_CPH_Tab_TabPanel3 > span{padding:0px 5px 0px 5px;
        }
       #__tab_logix_CPH_Tab_TabPanel4 > span{padding:0px 5px 0px 5px;
        }
      #__tab_logix_CPH_Tab_TabPanel5 > span{padding:0px 5px 0px 5px;
        }
      #__tab_logix_CPH_Tab_TabPanel6 > span{padding:0px 5px 0px 5px;
        }
      #__tab_logix_CPH_Tab_TabPanel7 > span{padding:0px 5px 0px 5px;
        }
        .div_Head {font-weight:normal;
        }
         .ajax__tab_xp .ajax__tab_body {border-left:1px solid #b1b1b1!important;border-right:1px solid #b1b1b1!important;border-bottom:1px solid #b1b1b1!important;
        }

        .FormGroupContent4 textarea {
            height:100px!important;
        }
        
        .div_txtRef {
    float: left;
    width: 100%;
    margin-left: 0%;
    margin-top: 0.5%;
    margin-bottom: 0.5%;
    min-height: 100%;
    height: 334px;
}
        

 .FormGroupContent4 .div_txtRef textarea {
            height:272px!important;
        }


    </style>






    <link href="../Styles/EmployeeBenefits.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="logix_CPH" runat="server">



     <!-- Breadcrumbs line -->
          <div class="crumbs">
        <ul id="breadcrumbs" class="breadcrumb">
              <li><i class="icon-home"></i><a href="#"></a>Home </li>
            <li><a href="#">HRM</a></li>
              <li><a href="#" title="">Utility</a> </li>
              <li class="current">Employee Benefits</li>
            </ul>
      </div>
    <!-- Breadcrumbs line End -->

     <div class="FormBg">
    <div class="FormHead">
      <h3><img src="../Theme/newTheme/img/employeebenefits_ic.png" /> <asp:Label ID="lbl_Header" runat="server" Text="Employee Benefits"></asp:Label>
        
      </h3>
    </div>
        <div class="Form-ControlBg">  
             <div class="FormGroupContent4">
                 <div class="div_Head MB05">
        <div class="FormGroupContentComp">
              <asp:TabContainer ID="Tab" runat="server" Width="100%" ActiveTabIndex="5">
     
                <asp:TabPanel ID="TabPanel9" runat="server" HeaderText="STATUTORY" TabIndex="0">
                                                <ContentTemplate>

                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_PF" runat="server" Text="PF"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_MissionESI">
                                                        <asp:TextBox ID="txt_PF" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="Label2" runat="server" Text="ESI"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_MissionESI" >
                                                        <asp:TextBox ID="txt_Employee" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>

                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Gratutity" runat="server" Text="GRATUITY"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_MissionESI">
                                                        <asp:TextBox ID="txt_Gratutity" runat="server" CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Bonus" runat="server" Text="Bonus"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_MissionESI">
                                                        <asp:TextBox ID="txt_Bonus" runat="server" CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>


                                                </ContentTemplate>
                                            </asp:TabPanel>
                                            <asp:TabPanel ID="TabPanel10" runat="server" HeaderText="REIMBURSEMENTS">
                                                <ContentTemplate>

                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Lunch" runat="server" Text="SODEXO"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_MissionRE">
                                                        <asp:TextBox ID="txt_Lunch" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>

                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Driver" runat="server" Text="DRIVER REIMBURSEMENTS"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_MissionRE">
                                                        <asp:TextBox ID="txt_Driver" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Entertain" runat="server" Text="ENTERTAINMENT REIMBURSEMENTS"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_MissionRE">
                                                        <asp:TextBox ID="txt_Entertain" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="Label10" runat="server" Text="VEHICLE MAINTENANCE REIMBURSEMENTS"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_MissionRE">
                                                        <asp:TextBox ID="txtvmr" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>

                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Travel" runat="server" Text="TRAVEL"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_MissionRE">
                                                        <asp:TextBox ID="txt_Travel" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>


                                                    <div class="div_break">
                                                    </div>

                                                </ContentTemplate>
                                            </asp:TabPanel>
                                            
                                            <asp:TabPanel ID="TabPanel14" runat="server" HeaderText="Insurance" TabIndex="0">
                                                <ContentTemplate>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Group" runat="server" Text="GROUP PERSONAL ACCIDENT INSURANCE COVER"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txtN1">
                                                        <asp:TextBox ID="txt_Group" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Employee" runat="server" Text="GROUP TERM LIFE INSURANCE"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_Mission">
                                                        <asp:TextBox ID="txt_grplifeins" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Medical" runat="server" Text="GROUP MEDICLAIM POLICY"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_Mission">
                                                        <asp:TextBox ID="txt_Medical" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>

                                                       <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_Mission">
                                                        <asp:TextBox ID="TextBox1" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    

                                                </ContentTemplate>
                                            </asp:TabPanel>
                                            <asp:TabPanel ID="TabPanel15" runat="server" HeaderText="Earn Leave Encashment">
                                                <ContentTemplate>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="Label1" runat="server" Text="Earn Leave Encashment"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt_Mission">
                                                        <asp:TextBox ID="txt_Leaveemployee" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>

                                                </ContentTemplate>
                                            </asp:TabPanel>
                                            <asp:TabPanel ID="TabPanel16" runat="server" HeaderText="Employee Wedding">
                                                <ContentTemplate>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Wedding" runat="server" Text="EMPLOYEE WEDDING"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txt" style="margin:0px 0px 0px 0px;">
                                                        <asp:TextBox ID="txt_Wedding" runat="server" CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>

                                                </ContentTemplate>
                                            </asp:TabPanel>
                                            <asp:TabPanel ID="TabPanel17" runat="server" HeaderText="Employee Referral">
                                                <ContentTemplate>
                                                    <div class="div_label" style="color: #df2b2b;">
                                                        <asp:Label ID="lbl_Referral" runat="server" Text="EMPLOYEE REFERRAL"></asp:Label>
                                                    </div>
                                                    <div class="div_break">
                                                    </div>
                                                    <div class="div_txtRef">
                                                        <asp:TextBox ID="txt_Referral" runat="server"  CssClass="Tab_Text_Multiline2" TextMode="MultiLine"></asp:TextBox>
                                                    </div>

                                                </ContentTemplate>
                                            </asp:TabPanel>
             

        </asp:TabContainer>
            </div>

                   <div class="FormGroupContent4">
                       <div class="right_btn MT0 MB05">
                           <div class="btn ico-save" id="btn_save1" runat="server">
                           <asp:Button ID="btn_Save" runat="server" ToolTip="Save" onclick="btn_Save_Click" />
                               </div>
                           </div>
                   </div> 

                   </div>
                 </div>
            </div>
         </div>
</asp:Content>
 
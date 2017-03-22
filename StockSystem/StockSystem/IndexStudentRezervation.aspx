<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexStudentRezervation.aspx.cs" Inherits="StockSystem.IndexStudentRezervation" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" 
    TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>
<style type="text/css">
    .auto-style15 {
        width: 137px;
    }
    .auto-style16 {
        width: 143px;
    }
    .auto-style17 {
        width: 144px;
    }
    .auto-style18 {
        width: 148px;
    }
    .auto-style19 {
        width: 149px;
    }
    .auto-style20 {
        width: 150px;
    }
    .auto-style21 {
        width: 338px
    }
</style>
<form runat="server">
<html lang="en">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Stock Tracking System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/StudentRezervation.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="Scripts/PhoneChecker.js" type="text/javascript"></script>
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="IndexStudent.aspx"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Öğrenci Malzeme Takip </a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <asp:Label ID="loginName" runat="server" Text="Label"></asp:Label> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> <asp:Button ID="logOutButton" runat="server" Text="Logout" OnClick="logOutButton_Click" /> </a>
                        </li>
                    </ul>
                </li>
            </ul>
            

            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="IndexStudent.aspx"><i class="fa fa-fw fa-dashboard"></i> Rezervasyon Durumu </a>
                    </li>
                    <li>
                        <a href="IndexStudent.aspx"><i class="fa fa-fw fa-edit"></i> Rezervasyon Detayları </a>
                    </li>
                    <li class="active">
                        <a href="IndexStudentRezervation.aspx"><i class="fa fa-fw fa-dashboard"></i> Yeni Rezervasyon </a>
                    </li>                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

                     <asp:Wizard ID="wzStudent" runat="server" ActiveStepIndex="0" DisplaySideBar="False" FinishCompleteButtonText="Rezervasyonu Kaydet" FinishPreviousButtonText="Önceki Adım" StartNextButtonText="Kaydet ve İlerle" StepNextButtonText="Kaydet ve İlerle" StepPreviousButtonText="Önceki Adım" OnNextButtonClick="wzStudent_NextButtonClick" OnPreviousButtonClick="wzStudent_PreviousButtonClick" OnFinishButtonClick="wzStudent_FinishButtonClick" CssClass="table-responsive" OnActiveStepChanged="wzStudent_ActiveStepChanged">
                         <WizardSteps>
                             <asp:WizardStep ID="wzStudentDetails" runat="server" Title="Öğrenci Bilgileri">
                                  <table class="table-responsive">
                <tr>
                    <td aria-expanded="false" class="auto-style4" rowspan="6">
                        <img alt="" src="" style="padding: 0px; margin: 0px; height: 231px; width: 188px; position: inherit; z-index: auto;" />
                    </td>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style2" style="margin: 8px; padding: 8px; border-spacing: inherit; font-weight: bold;">&nbsp;TC :</td>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style6" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox ID="tcTxtbox" runat="server"  Enabled="False" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" class="auto-style2" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit; font-weight: bold;">Rezervasyon ID :</td>
                    <td aria-expanded="false" class="auto-style6" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox ID="rzTxtbox" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td aria-expanded="false" class="auto-style2" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit; font-weight: bold;">Ad:</td>
                    <td aria-expanded="false" class="auto-style6" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox ID="nameTxtbox" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                  <tr>
                    <td aria-expanded="false" class="auto-style2" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit; font-weight: bold;">Soyad:</td>
                    <td aria-expanded="false" class="auto-style6" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox ID="surnameTxtbox" runat="server" CssClass="auto-style13" Enabled="False"></asp:TextBox>
                      </td>
                </tr>
                  <tr>
                    <td aria-expanded="false" class="auto-style2" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit; font-weight: bold;">Bölüm:</td>
                    <td aria-expanded="false" class="auto-style6" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox ID="dptTxtbox" runat="server" Enabled="False"></asp:TextBox>
                      </td>
                </tr>
                <tr>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style2" style="margin: 8px; padding: 8px;border-spacing: inherit; font-weight: bold;">
                        Telefon(*):</td>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style6" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox ID="telTxtbox" placeholder="(555)555-5555" runat="server" autofocus="true" onkeydown="javascript:backspacerDOWN(this,event);" onkeyup="javascript:backspacerUP(this,event);" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                
                    </td>
                      <td>
                
                    </td>
                      <td class="auto-style3">
                
                    </td>
                     <td>
                         &nbsp;</td>
            
                </tr>
                 <tr>
                    <td>
                
                    </td>
                      <td>
                
                    </td>
                      <td class="auto-style3">
                
                    </td>
                     <td>
 

                    </td>
            
                </tr>
            </table>
    

               </div>
                                 

                             </asp:WizardStep>
                             <asp:WizardStep ID="wzStudentCourseAndAssistant" runat="server" Title="Öğrenci Ders Ve Danışman Bilgileri">
                                   <br />
                                   <asp:SqlDataSource ID="SqlDataSourceWorkType" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT [calisma_turu] FROM [OgrenciCalismaTuru]"></asp:SqlDataSource>

                                   <asp:SqlDataSource ID="SqlDataSourceCourses" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT [ders_adi] FROM [Dersler]"></asp:SqlDataSource>

                                   <asp:SqlDataSource ID="SqlDataSourceDanisman" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT [danisman_adi] FROM [Danisman]"></asp:SqlDataSource>
<table style="width:100%;">
    <tr>
                                           <td class="auto-style21">
                                               &nbsp;</td>
                                           <td>
                                               <asp:CheckBox ID="cbOzel" runat="server" AutoPostBack="True" CausesValidation="True" Font-Bold="True" OnCheckedChanged="cbOzel_CheckedChanged" Text="Bireysel Çalışma" />
                                           </td>
                                       </tr>
     <tr>
                                           <td class="auto-style21">
                                               <asp:Label ID="lblDers2" runat="server" Text="(*) Ders :"></asp:Label>
                                           </td>
                                           <td>
                                               <asp:TextBox ID="txtDersSecimi" runat="server" Width="238px"></asp:TextBox>
                                           </td>
                                       </tr>
                                       <tr>
                                            <td class="auto-style21">
                                                <asp:Label ID="lblDersKodu" runat="server" Text="(*) Ders Kodu:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtDersKodu" runat="server" Width="238px"></asp:TextBox>
                                            </td>
    <tr>
        <td class="auto-style21">
            <asp:Label ID="lblDanisman2" runat="server" Text="(*) Danışmanı:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtDanisman2" runat="server" Width="238px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">
            <asp:Label ID="lblCalismatürü" runat="server" Text=" (*) Çalışma türü :"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="Ddlcalismatürü" runat="server" DataSourceID="SqlDataSourceWorkType" DataTextField="calisma_turu" DataValueField="calisma_turu" Height="20px" OnDataBound="Ddlcalismatürü_DataBound" OnSelectedIndexChanged="Ddlcalismatürü_SelectedIndexChanged" Width="181px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">
            <asp:Label ID="lblDersler" runat="server" Text="(*) Dersler :"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DdlDersler" runat="server" DataSourceID="SqlDataSourceCourses" DataTextField="ders_adi" DataValueField="ders_adi" Height="20px" OnDataBound="DdlDersler_DataBound" Width="325px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">
            <asp:Label ID="lblDanisman" runat="server" Text="(*) Danışman Öğretim Üyesi :"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlDanisman" runat="server" DataSourceID="SqlDataSourceDanisman" DataTextField="danisman_adi" DataValueField="danisman_adi" OnDataBound="ddlDanisman_DataBound" Width="325px">
            </asp:DropDownList>
        </td>
    </tr>
                                   </table>
                                   <br />
                     <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                              

<br />
   
    

               </div>

                                 

                             </asp:WizardStep>
                              <asp:WizardStep ID="wzStudentGroupDetails" runat="server" Title="Öğrenci Grup Bilgileri">
                                  
                                   <table style="width:100%;">
                             <tr>
                                 <td class="auto-style4" style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TC:</td>
                                 <td class="auto-style15">
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:TextBox ID="tcSecilenOgrenci" runat="server"></asp:TextBox> </td>
                                 <td class="auto-style6"></td>
                             </tr>
                             <tr>
                                 <td class="auto-style16"></td>
                                 <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:Button ID="btnAdd" runat="server" Text="Ekle" Width="63px" OnClick="btnAdd_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     </td>
                                 <td class="auto-style18"></td>
                             </tr>
                             <tr>
                                 <td class="auto-style1">&nbsp;</td>
                                 <td class="auto-style15">&nbsp;</td>
                                 <td>&nbsp;</td>
                             </tr>
                         </table>
                     <asp:Panel ID="Panel1" runat="server" Height="262px">
                         <table class="auto-style19">
                             <tr>
                                 <td class="auto-style20">
                                     &nbsp;</td>
                                 
                             </tr>
                             <tr>
                                 <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                                     <asp:GridView ID="gwSecilenOgrenci" runat="server" CellPadding="4" ForeColor="#333333" Height="16px" Width="770px" OnRowDeleting="gwSecilenOgrenci_RowDeleting" OnRowCreated="gwSecilenOgrenci_RowCreated">
                                         <AlternatingRowStyle BackColor="White" />
                                         <Columns>
                                             <asp:CommandField SelectText="Seç" ShowSelectButton="True" />
                                             <asp:CommandField DeleteText="Sil" ShowDeleteButton="True" />
                                         </Columns>
                                         <EditRowStyle BackColor="#2461BF" />
                                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                         <RowStyle BackColor="#EFF3FB" />
                                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                     </asp:GridView>
                       
                                 </td>
                               
                             </tr>
                        
                         </table>
                     </asp:Panel>
                </div>

            </div>

                              </asp:WizardStep>
                              <asp:WizardStep ID="wzStudentMaterial" runat="server" Title="Öğrenci Malzeme Bilgileri">
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="lblMalzemelist" runat="server" Text="Malzeme Listesi (Türü)" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList runat="server" Width="135px" ID="DdlMalzemeList" DataSourceID="SqlDataSource" DataTextField="tip_adi" DataValueField="tip_id" AutoPostBack="True" OnSelectedIndexChanged="DdlMalzemeList_SelectedIndexChanged" Height="17px" OnDataBound="DdlMalzemeList_DataBound">
    <asp:ListItem>Tümü</asp:ListItem>
</asp:DropDownList>
                                   <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT [tip_adi], [tip_id] FROM [MalzemeTipi]"></asp:SqlDataSource>
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT Malzeme.malzeme_id, Malzeme.malzeme_adi, Malzeme.malzeme_serino, Malzeme.malzeme_kodu, MalzemeDurumu.durum_adi, MalzemeTipi.tip_adi, OgrenciCalismaTuru.calisma_turu FROM Malzeme INNER JOIN MalzemeDurumu ON Malzeme.malzeme_durumu = MalzemeDurumu.durum_id INNER JOIN MalzemeTipi ON Malzeme.malzeme_tipi = MalzemeTipi.tip_id INNER JOIN OgrenciCalismaTuru ON Malzeme.malzeme_calisma_grubu = OgrenciCalismaTuru.calisma_id"></asp:SqlDataSource>
                                   <asp:SqlDataSource ID="SqlDataSourceMaterialType" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT [tip_adi] FROM [MalzemeTipi]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
<table class="auto-style1">
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <div style="width: 100%; height: 400px; overflow: scroll">
            <asp:GridView ID="GridViewMalzemeList" runat="server" Height="97px" Width="699px" OnSelectedIndexChanged="GridViewMalzemeList_SelectedIndexChanged" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnPageIndexChanging="GridViewMalzemeList_PageIndexChanging" CellSpacing="2" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="malzeme_id" HeaderText="malzeme_id" ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol" SortExpression="malzeme_id" >
<HeaderStyle CssClass="hiddencol"></HeaderStyle>

<ItemStyle CssClass="hiddencol"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="malzeme_adi" HeaderText="Malzeme Adı" SortExpression="malzeme_adi" />
                    <asp:BoundField DataField="malzeme_serino" HeaderText="Malzeme Serino" SortExpression="malzeme_serino" />
                    <asp:BoundField DataField="malzeme_kodu" HeaderText="Malzeme Kodu" SortExpression="malzeme_kodu" />
                    <asp:BoundField DataField="MalzemeTipi.tip_adi" HeaderText="Malzeme Tipi" SortExpression="MalzemeTipi.tip_adi" />
                    <asp:BoundField DataField="OgrenciCalismaTuru.calisma_turu" HeaderText="Çalışma Türü" SortExpression="OgrenciCalismaTuru.calisma_turu" />
                    <asp:CommandField ShowSelectButton="True" SelectText="Seç" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                </div>
        </td>
        <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="AÇIKLAMA:"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtNote" runat="server" Height="90px" TextMode="MultiLine" Width="510px"></asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="blAlışTarihi" runat="server" Text="Alış Tarihi" Font-Bold="True"></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAlisTarihi" runat="server"  ></asp:TextBox>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="lblİadeTarihi" runat="server" Text="İade Tarihi" Font-Bold="True"></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtVerisTarihi" runat="server" ></asp:TextBox>
            
            <ajaxToolkit:CalendarExtender ID="ajaxCalendarAlisTarihi"  Format="dd/MM/yyyy" TargetControlID="txtAlisTarihi"  runat="server" />
            <ajaxToolkit:CalendarExtender   ID="ajaxCalendarVerisTarihi"  Format="dd/MM/yyyy" TargetControlID="txtVerisTarihi"  runat="server" />
        </td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSeçilenMalzemeList" runat="server" Text="* Seçilen Malzeme Listesi"></asp:Label>
            <br />
        </td>
        <td class="auto-style12">
            
        </td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridViewSeçilenMalzemeList" runat="server" Height="87px" Width="687px" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridViewSeçilenMalzemeList_RowDeleting" OnRowCreated="GridViewSeçilenMalzemeList_RowCreated">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField DeleteText="Çıkart" ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </td>
        <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBoxOduncAlma" runat="server" Text="" >
</asp:CheckBox>    
            <asp:Button ID="btnOduncKilavuz" runat="server" BorderStyle="None" Text="Ödünç Alma Kılavuzu'nu okudum ve kabul ediyorum." Width="352px" OnClick="btnOduncKilavuz_Click" />
                         <ajaxToolkit:modalpopupextender id="mpeOdunc" runat="server"  
	 popupcontrolid="pnlPopup2" TargetControlID="btnHukuksalDokuman"
	 drag="true" 
	backgroundcssclass="ModalPopupBG">
</ajaxToolkit:modalpopupextender>


<asp:panel id="pnlPopup2" style="display: none" runat="server">
	<div class="HellowWorldPopup">
                <div class="PopupHeader2" id="PopupHeader2">Header</div>
                <div class="PopupBody">
                <textarea id="TextArea2" class="tvHukuksal" > xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</textarea>
                </div>
                <div class="Controls">


                    <asp:Button ID="btnOkay2" runat="server" Text="Kabul ediyorum" onClick="btnOkay2_Click" />
                    <asp:Button ID="btnIptal2" runat="server" Text="İptal" />
		</div>
        </div>
</asp:panel>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBoxHukuksal" runat="server" Text="">
</asp:CheckBox>
            <asp:Button ID="btnHukuksalDokuman" runat="server" Text="Hukuksal Döküman'ı okudum ve kabul ediyorum." Width="327px" BorderStyle="None" OnClick="btnHukuksalDokuman_Click" Height="16px" />
             <ajaxToolkit:modalpopupextender id="mpeHukuksal" runat="server"  
	 popupcontrolid="pnlPopup" TargetControlID="btnHukuksalDokuman"
	 drag="true" 
	backgroundcssclass="ModalPopupBG">
</ajaxToolkit:modalpopupextender>


<asp:panel id="pnlPopup" style="display: none" runat="server">
	<div class="HellowWorldPopup">
                <div class="PopupHeader" id="PopupHeader">Header</div>
                <div class="PopupBody">
                <textarea id="TextArea1" class="tvHukuksal" > Otomasyon programı ile seçtiğim ve kullanmak üzere, dersin amacına
uygun kullanmak koşuluyla, eksiksiz ve arızasız olarak teslim alacağım
cihazlara herhangi bir zarar vermeyeceğimi, uygun şartlarda
kullanacağımı, beyan edilen iade tarihinde eksiksiz ve hasarsız olarak
teslim edeceğimi, mücbir sebepler (deprem, sel, vb.) dışında teslim
aldığım cihazlarda hatalı kullanımlardan dolayı doğabilecek zararları
karşılayacağımı ve cihazları teslim ederken bu arızaları görevlilere
bildireceğimi, aksi durumlarda hakkımda Anadolu Üniversitesi Öğrenci
Disiplin Yönetmeliği'nin uygulanacağını ve cihazları hiçbir mücbir
sebepten dolayı oluşacak geçerli mazeretler dışında geç teslim ettiğimde
fakültenin donanım olanaklarından gecikmenin yaşandığı ilgili dönem
süresince yararlanamayacağımı kabul ve taahhüt ederim.</textarea>
                </div>
                <div class="Controls">


                    <asp:Button ID="btnOkay" runat="server" Text="Kabul ediyorum" onClick="btnOkay_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="İptal" />
		</div>
        </div>
</asp:panel>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            </td>
        <td class="auto-style8"></td>
    </tr>
</table>
   
    


                                  

                              </asp:WizardStep>
                         </WizardSteps>
    
     <HeaderTemplate>
               <ul id="wizHeader">
                   <asp:Repeater ID="SideBarList" runat="server">
                       <ItemTemplate>
                           <li><a class="<%# GetClassForWizardStep(Container.DataItem) %>" title="<%#Eval("Name")%>">
                               <%# Eval("Name")%></a> </li>
                       </ItemTemplate>
                   </asp:Repeater>
               </ul>
           </HeaderTemplate>
                     </asp:Wizard>
           




    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
        </div>
    </div>


</body>

</html>
    </form>
<p>
    &nbsp;</p>
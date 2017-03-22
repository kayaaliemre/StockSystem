<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexLecturerReservationDetails.aspx.cs" Inherits="StockSystem.IndexLecturerReservationDetails" %>

<!DOCTYPE html>

<style type="text/css">
    .auto-style1 {
        width: 592px;
    }
    .auto-style2 {
        width: 1250px;
    }
    .auto-style3 {
        width: 100%;
        height: 734px;
    }
    .auto-style4 {
        width: 549px;
    }
    .auto-style5 {
        width: 495px
    }
    .auto-style6 {
        height: 250px;
    }
</style>

<form runat="server">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Stock Tracking System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body style="height: 808px">

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
                <a class="navbar-brand" href="IndexLecturer.aspx"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Danışman Malzeme Takip </a>
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
                    <li >
                        <a href="IndexLecturer.aspx"><i class="fa fa-fw fa-dashboard"></i> Rezervasyon Bilgileri</a>
                    </li>
                    <li class="active">
                        <a href="IndexLecturer.aspx"><i class="fa fa-fw fa-edit"></i> Rezervasyon Detayları ve Onay</a>
                    </li>
                    <li>
                        <a href="IndexLecturer.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Diğer İşlemler </a>
                    </li>                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper" class="auto-style1">

             <div class="container-fluid">
             <div class="panel panel-primary">
                  <div class="panel-heading">
                                <h3 class="panel-title">Rezervasyon Bilgileri</h3>
                            </div>
               
              <table class="auto-style35">
              
                
                <tr>
                    <td aria-expanded="false" class="auto-style2" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <table class="auto-style3">
                            <tr>
                                <td>
        <asp:Panel runat="server" Height="310px" ID="Panel1" CssClass="auto-style13" GroupingText="Grup Lideri" Width="505px" Font-Bold="True">
            <table class="auto-style20">
                <tr>
                    <td aria-expanded="false" class="auto-style4" rowspan="6">
                        <img alt="" src="" style="padding: 0px; margin: 0px; height: 231px; width: 188px; position: inherit; z-index: auto;" />
                    </td>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style5" style="margin: 8px; padding: 8px; border-spacing: inherit;">Rezervasyon ID :&nbsp; </td>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style27" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="tcTxtbox" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" class="auto-style5" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">TC :</td>
                    <td aria-expanded="false" class="auto-style27" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="rzTxtbox" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" class="auto-style5" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">Ad:</td>
                    <td aria-expanded="false" class="auto-style27" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="nameTxtbox" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" class="auto-style5" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">Soyad:</td>
                    <td aria-expanded="false" class="auto-style16" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="surnameTxtbox" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" class="auto-style5" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">Bölüm:</td>
                    <td aria-expanded="false" class="auto-style27" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="dptTxtbox" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style5" style="margin: 8px; padding: 8px;border-spacing: inherit;">Telefon(*):</td>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style27" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="telTxtbox" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
                                </td>
                                <td>
          <asp:Panel ID="Panel4" runat="server" GroupingText="Çalışma Grubu" Height="286px" Width="626px" CssClass="auto-style13">
             <asp:GridView ID="gwCalisma" runat="server" Height="257px" Width="624px" CssClass="auto-style22" CellPadding="4" ForeColor="#333333"   >
                <AlternatingRowStyle BackColor="White" />
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
          </asp:Panel>
         
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    
                                    
                                    
          <asp:Panel ID="Panel3" runat="server" GroupingText="Ders Bilgisi" Height="161px" Width="493px" Font-Bold="True">
              &nbsp;&nbsp;&nbsp;Çalışma Türü:&nbsp;&nbsp;
              <asp:TextBox ID="txtCalisma" runat="server" Enabled="False"></asp:TextBox>
              <br />
              <br />
              &nbsp;&nbsp;&nbsp;Ders:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
              <asp:TextBox ID="txtDers" runat="server" Enabled="False"></asp:TextBox>
              <br />
              <br />
              <br />
              <br />
              <br />
          </asp:Panel>
                                </td>
                                <td class="auto-style6">
                        <asp:Panel ID="Panel8" runat="server" CssClass="auto-style37" GroupingText="Seçilen Malzeme Bilgisi" Height="212px" Width="624px" >
                            <asp:GridView ID="gwSecilenMalzeme" runat="server" Height="96px" Width="567px" CssClass="auto-style22" CellPadding="4" ForeColor="#333333" OnRowDeleting="gwSecilenMalzeme_RowDeleting" OnRowCreated="gwSecilenMalzeme_RowCreated"   >
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
                        </asp:Panel>
                                </td>
                                <td class="auto-style6"></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="AÇIKLAMA:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtNote" runat="server" Height="108px" TextMode="MultiLine" Width="486px" Enabled="False"></asp:TextBox>
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td>&nbsp;&nbsp;<br />
                                    <br />
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="btnGeri" runat="server" Text="Geri" BackColor="#6699FF" Width="171px" Height="44px" OnClick="btnGeri_Click"/>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="btnOnayla" runat="server" Text="Onayla" BackColor="#009900" Width="171px" Height="44px" OnClick="btnOnayla_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="btnReddet" runat="server" BackColor="Red" Height="46px" Text="Reddet" Width="167px" OnClick="btnReddet_Click" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
              </table>
            </div>
           
                    <td aria-expanded="false" class="auto-style33" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                    </td>
           
                <tr>
                    <td aria-expanded="false" class="auto-style34" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                    </td>
                    <td aria-expanded="false" class="auto-style31" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                    </td>
                </tr>
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          

            </div>
            <!-- /.container-fluid -->

        </div>
        
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>
    </div>

</body>

</html>
    </form>


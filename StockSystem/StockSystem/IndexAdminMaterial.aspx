﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexAdminMaterial.aspx.cs" Inherits="StockSystem.IndexAdminMaterial" %>
<!DOCTYPE html>

<style type="text/css">
    .auto-style1 {
        width: 64%;
        height: 316px;
        overflow: scroll;
    }
</style>

<form runat="server">
<!DOCTYPE html>
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
                <a class="navbar-brand" href="IndexStocker.aspx"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Admin Malzeme Takip </a>
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
                        <a href="IndexAdmin.aspx"><i class="fa fa-fw fa-dashboard"></i> Yönetici İşlemleri </a>
                    </li>
                    <li class="active">
                        <a href="IndexAdminMaterial.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Malzeme İşlemleri </a>
                    </li>
                    <li>
                        <a href="IndexAdmin.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Diğer İşlemler </a>
                    </li>                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

             <div class="panel panel-primary">
                  <div class="panel-heading">
                                <h3 class="panel-title">Malzeme İşlemleri</h3>
                            </div>
                <asp:Panel ID="panelMalzeme" runat="server" Height="271px" Width="762px"  HorizontalAlign="Center" style="margin-left:150px;">
            <table style="width:500px; height:100px; align-content:center;">
                 <tr>
                    <td style="text-align:right; height:40px;" > <asp:Label ID="Label2" runat="server" Text="Malzeme Adı" Font-Bold="True"></asp:Label></td>
                    <td style="text-align:left; height:40px;"> <asp:TextBox ID="tbMalzemeAdı" runat="server" Height="25px" Width="200px" BackColor="#CCEEFF"></asp:TextBox></td>
                      <td style="height:40px;"> <asp:Button ID="btnMalzemeKaydet" runat="server" Height="30px" Text="Kaydet" Width="100px" OnClick="btnMalzemeKaydet_Click" /> </td>
                    
                </tr>
                 <tr>
                    <td style="text-align:right; height:40px;"><asp:Label ID="Label4" runat="server" Text="Malzeme Seri No" Font-Bold="True"></asp:Label> </td>
                    <td style="text-align:left; height:40px;">  <asp:TextBox ID="tbMalzemeSeriNo" runat="server"  Width="200px" Height="25px" BackColor="#CCEEFF" ></asp:TextBox></td>
                    
                     <td style="height:40px;"> <asp:Button ID="btnMalzemeGüncelle" runat="server" Height="30px" Text="Güncelle" Width="100px" OnClick="btnMalzemeGüncelle_Click" /></td>
                </tr>
                <tr>
                    <td style="text-align:right; height:40px;"><asp:Label ID="Label1"  runat="server" Text="Malzeme Kodu" Font-Bold="True"></asp:Label></td>
                    <td style="text-align:left; height:40px;" > <asp:TextBox ID="tbMalzemeKodu"  runat="server" Height="25px" Width="200px" BackColor="#CCEEFF"></asp:TextBox> </td>
                    <td style="height:40px;"><asp:Button ID="btnMalzemeSil" runat="server" Height="30px" Text="Sil" Width="100px" OnClick="btnMalzemeSil_Click" /></td>
                </tr>
                <tr>
                    <td style="text-align:right; height:40px;"><asp:Label ID="Label5" runat="server" Text="Malzeme Durumu" Font-Bold="True"></asp:Label> </td>
                    <td style="text-align:left; height:40px;">  <asp:DropDownList ID="ddMalzemeDurumu" runat="server" Height="25px" Width="200px" BackColor="#CCEEFF" DataSourceID="SqlDataSourceMaterialState" DataTextField="durum_adi" DataValueField="durum_adi" TabIndex="1"> </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceMaterialState" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT [durum_adi] FROM [MalzemeDurumu]"></asp:SqlDataSource>
                    </td>
                    <td style="height:40px;">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:right; height:40px;"><asp:Label ID="lblbilmem" runat="server" Text="Malzeme Tipi" Font-Bold="True"></asp:Label></td>
                    <td style="text-align:left; height:40px;"><asp:DropDownList ID="ddlMalzemeTipi" runat="server" Height="25px" Width="200px" BackColor="#CCEEFF" DataMember="DefaultView" DataSourceID="SqlDataSourceMaterialType" DataTextField="tip_adi" DataValueField="tip_adi" TabIndex="1"> </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceMaterialType" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT [tip_adi] FROM [MalzemeTipi]"></asp:SqlDataSource>
                    </td>
                   
                </tr>
                
               
                <tr>
                    <td style="text-align:right; height:40px;"><asp:Label ID="lblMalzemeCalisma" runat="server" Text="Malzeme Calışma Türü" Font-Bold="True"></asp:Label> </td>
                    <td style="text-align:left; height:40px;">  <asp:DropDownList ID="ddlMalzemeCalisma" runat="server" Height="25px" Width="200px" BackColor="#CCEEFF" DataSourceID="SqlDataSourceMaterialWorkType" DataTextField="calisma_turu" DataValueField="calisma_turu" TabIndex="1"> </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSourceMaterialWorkType" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT [calisma_turu] FROM [OgrenciCalismaTuru]"></asp:SqlDataSource>
                         </td>
                </tr>
            </table>
                      </asp:Panel>
         
                  <table style="width:100%;">
                      <tr>
                          <td>
         <div class="auto-style1">
            <asp:GridView ID="gwMalzeme" runat="server" Height="236px" Width="761px" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceMaterial" ForeColor="#333333" DataMember="DefaultView" AllowSorting="True" PageSize="20" OnSelectedIndexChanged="gwMalzeme_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="malzeme_id" HeaderText="malzeme_id" Visible="False" />
                    <asp:BoundField DataField="malzeme_adi" HeaderText="Malzeme Adı" SortExpression="malzeme_adi" />
                    <asp:BoundField DataField="malzeme_serino" HeaderText="Malzeme Serino" SortExpression="malzeme_serino" />
                    <asp:BoundField DataField="malzeme_kodu" HeaderText="Malzeme Kodu" SortExpression="malzeme_kodu" />
                    <asp:BoundField DataField="durum_adi" HeaderText="Malzeme Durumu" SortExpression="durum_adi" />
                    <asp:BoundField DataField="tip_adi" HeaderText="Malzeme Tipi" SortExpression="tip_adi" />
                    <asp:BoundField DataField="calisma_turu" HeaderText="Çalışma Türü" SortExpression="calisma_turu" />
                    <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" SelectText="Seç" ShowSelectButton="True" UpdateText="Güncelle" />
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
                          <td>&nbsp;</td>
                      </tr>


                  </table>
          
                  <asp:SqlDataSource ID="SqlDataSourceMaterial" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT Malzeme.malzeme_adi, Malzeme.malzeme_serino, Malzeme.malzeme_kodu, MalzemeDurumu.durum_adi, MalzemeTipi.tip_adi, OgrenciCalismaTuru.calisma_turu, Malzeme.malzeme_id FROM Malzeme INNER JOIN MalzemeDurumu ON Malzeme.malzeme_durumu = MalzemeDurumu.durum_id INNER JOIN MalzemeTipi ON Malzeme.malzeme_tipi = MalzemeTipi.tip_id INNER JOIN OgrenciCalismaTuru ON Malzeme.malzeme_calisma_grubu = OgrenciCalismaTuru.calisma_id" DeleteCommand="DELETE FROM Malzeme WHERE malzeme_id = @malzeme_id" UpdateCommand="UPDATE Malzeme SET malzeme_adi = @malzeme_adi, malzeme_serino = @malzeme_serino, malzeme_kodu = @malzeme_kodu FROM Malzeme INNER JOIN MalzemeDurumu ON Malzeme.malzeme_durumu = MalzemeDurumu.durum_id INNER JOIN MalzemeTipi ON Malzeme.malzeme_tipi = MalzemeTipi.tip_id INNER JOIN OgrenciCalismaTuru ON Malzeme.malzeme_calisma_grubu = OgrenciCalismaTuru.calisma_id WHERE (Malzeme.malzeme_id = @malzeme_id)">
                      <DeleteParameters>
                          <asp:Parameter Name="malzeme_id" />
                      </DeleteParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="malzeme_adi" />
                          <asp:Parameter Name="malzeme_serino" />
                          <asp:Parameter Name="malzeme_kodu" />
                          <asp:Parameter Name="malzeme_id" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
          
</div>
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>
    

</body>

</html>
    </form>
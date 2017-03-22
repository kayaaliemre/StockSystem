<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexDean.aspx.cs" Inherits="StockSystem.IndexDean" %>

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
                <a class="navbar-brand" href="IndexDekan.aspx"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Dekan Malzeme Takip </a>
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
              
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active" >
                        <a href="IndexDean.aspx"><i class="fa fa-fw fa-dashboard"></i> Rezervasyon Bilgileri</a>
                    </li>
                    <li>
                        <a href="IndexDean.aspx"><i class="fa fa-fw fa-edit"></i> Rezervasyon Detayları ve Onay</a>
                    </li>
                    <li>
                        <a href="IndexDean.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Diğer İşlemler </a>
                    </li>                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
            </ul>
        </nav>

        <div id="page-wrapper">

          <div class="container-fluid">
             <div class="panel panel-primary">
                  <div class="panel-heading">
                                <h3 class="panel-title">Dekan İşlemleri</h3>
                            </div>
                <table>
            <tr>
                <td>
                    <asp:Label ID="lblAra" runat="server" Text="Rezervasyon Numarası  ya da TC giriniz :" Font-Bold="True"></asp:Label> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </td>
                <td>
                    <asp:TextBox ID="tbInput" runat="server" Width="213px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Ara" Width="49px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnTumu" runat="server" Text="Tümünü Listele" OnClick="btnTumu_Click" />
                </td>
                <td>
                    &nbsp;</td>
                
            </tr>
        </table>
            <asp:Panel ID="pnlTexboxs" runat="server" Height="600px" Width="1103px"   HorizontalAlign="Center" style="margin-left:50px;">

                            <asp:SqlDataSource ID="SqlDataSourceDean" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id, OgrenciRezervasyonBilgileri.kullanıcı_id, Ogrenci.kullanıcı_adi, Ogrenci.kullanıcı_soyadi, OgrenciRezervasyonBilgileri.kullanici_alis_tarihi, OgrenciRezervasyonBilgileri.kullanici_teslim_tarihi, OgrenciRezervasyonBilgileri.kullanici_telefon, RezervasyonDanismanOnayDurumu.onay_durumu AS Expr1, RezervasyonDekanOnayDurumu.onay_durumu FROM OgrenciRezervasyonBilgileri INNER JOIN Ogrenci ON OgrenciRezervasyonBilgileri.kullanıcı_id = Ogrenci.kullanıcı_id INNER JOIN OgrenciRezervasyonİliskisi ON OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id = OgrenciRezervasyonİliskisi.kullanıcı_rezervasyon_id INNER JOIN OgrenciRezervasyonDurumu ON OgrenciRezervasyonİliskisi.rezervasyon_id = OgrenciRezervasyonDurumu.rezervasyon_id INNER JOIN RezervasyonDanismanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_danisman_onay_durumu = RezervasyonDanismanOnayDurumu.onay_id INNER JOIN RezervasyonDekanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_dekan_onay_durumu = RezervasyonDekanOnayDurumu.onay_id WHERE (RezervasyonDanismanOnayDurumu.onay_id = 1)">
                            </asp:SqlDataSource>

                            <br />
                            <br />
                            <br />
                <div style="width: 100%; height: 400px; overflow: scroll">
                            <asp:SqlDataSource ID="sqlDsReservasionId" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id, OgrenciRezervasyonBilgileri.kullanıcı_id, Ogrenci.kullanıcı_adi, Ogrenci.kullanıcı_soyadi, OgrenciRezervasyonBilgileri.kullanici_alis_tarihi, OgrenciRezervasyonBilgileri.kullanici_teslim_tarihi, OgrenciRezervasyonBilgileri.kullanici_telefon, RezervasyonDanismanOnayDurumu.onay_durumu AS Expr1, RezervasyonDekanOnayDurumu.onay_durumu FROM OgrenciRezervasyonBilgileri INNER JOIN Ogrenci ON OgrenciRezervasyonBilgileri.kullanıcı_id = Ogrenci.kullanıcı_id INNER JOIN OgrenciRezervasyonİliskisi ON OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id = OgrenciRezervasyonİliskisi.kullanıcı_rezervasyon_id INNER JOIN OgrenciRezervasyonDurumu ON OgrenciRezervasyonİliskisi.rezervasyon_id = OgrenciRezervasyonDurumu.rezervasyon_id INNER JOIN RezervasyonDanismanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_danisman_onay_durumu = RezervasyonDanismanOnayDurumu.onay_id INNER JOIN RezervasyonDekanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_dekan_onay_durumu = RezervasyonDekanOnayDurumu.onay_id 
WHERE (OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id = @rezervasyonId)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="tbInput" Name="rezervasyonId" PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqldsOgrenciTC" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id, OgrenciRezervasyonBilgileri.kullanıcı_id, Ogrenci.kullanıcı_adi, Ogrenci.kullanıcı_soyadi, OgrenciRezervasyonBilgileri.kullanici_alis_tarihi, OgrenciRezervasyonBilgileri.kullanici_teslim_tarihi, OgrenciRezervasyonBilgileri.kullanici_telefon, RezervasyonDanismanOnayDurumu.onay_durumu AS Expr1, RezervasyonDekanOnayDurumu.onay_durumu FROM OgrenciRezervasyonBilgileri INNER JOIN Ogrenci ON OgrenciRezervasyonBilgileri.kullanıcı_id = Ogrenci.kullanıcı_id INNER JOIN OgrenciRezervasyonİliskisi ON OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id = OgrenciRezervasyonİliskisi.kullanıcı_rezervasyon_id INNER JOIN OgrenciRezervasyonDurumu ON OgrenciRezervasyonİliskisi.rezervasyon_id = OgrenciRezervasyonDurumu.rezervasyon_id INNER JOIN RezervasyonDanismanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_danisman_onay_durumu = RezervasyonDanismanOnayDurumu.onay_id INNER JOIN RezervasyonDekanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_dekan_onay_durumu = RezervasyonDekanOnayDurumu.onay_id 
WHERE (OgrenciRezervasyonBilgileri.kullanıcı_id  = @ogrenciTc)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="tbInput" Name="ogrenciTc" PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="gwRezervasyonluOgrenciler" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="kullanıcı_rezervasyon_id" DataSourceID="SqlDataSourceDean" ForeColor="#333333" Height="135px" OnRowDataBound="gwRezervasyonluOgrenciler_RowDataBound" Width="1068px" OnSelectedIndexChanged="gwRezervasyonluOgrenciler_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="kullanıcı_rezervasyon_id" HeaderText="Rezervasyon Id" ReadOnly="True" SortExpression="kullanıcı_rezervasyon_id" />
                                    <asp:BoundField DataField="kullanıcı_id" HeaderText="TC" SortExpression="kullanıcı_id" />
                                    <asp:BoundField DataField="kullanıcı_adi" HeaderText="Adı" SortExpression="kullanıcı_adi" />
                                    <asp:BoundField DataField="kullanıcı_soyadi" HeaderText="Soyadı" SortExpression="kullanıcı_soyadi" />
                                    <asp:BoundField DataField="kullanici_alis_tarihi" HeaderText="Alış Tarihi" SortExpression="kullanici_alis_tarihi" />
                                    <asp:BoundField DataField="kullanici_teslim_tarihi" HeaderText="Teslim Tarihi" SortExpression="kullanici_teslim_tarihi" />
                                    <asp:BoundField DataField="kullanici_telefon" HeaderText="Telefonu" SortExpression="kullanici_telefon" />
                                    <asp:BoundField DataField="Expr1" HeaderText="Danışman Onayı" SortExpression="Expr1" />
                                    <asp:BoundField DataField="onay_durumu" HeaderText="Dekan Onayı" SortExpression="onay_durumu" />
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
            </asp:Panel>


     </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
          </div>
        </div>
 


</body>

    </form>

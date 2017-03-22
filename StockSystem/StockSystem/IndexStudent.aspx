<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexStudent.aspx.cs" Inherits="StockSystem.IndexStudent" %>

<!DOCTYPE html>

<style type="text/css">
    .auto-style3 {
        height: 517px;
    }
    .auto-style4 {
        width: 1140px;
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

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" >

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
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Öğrenci Malzeme Takip </a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">    
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
            <div class="collapse navbar-collapse" data-target=".navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="IndexStudent.aspx"><i class="fa fa-fw fa-dashboard"></i> Rezervasyon Durumu </a>
                    </li>
                    <li>
                        <a href="IndexStudent.aspx"><i class="fa fa-fw fa-edit"></i> Rezervasyon Detayları </a>
                    </li>
                    <li>
                        <a href="IndexStudentRezervation.aspx"><i class="fa fa-fw fa-dashboard"></i> Yeni Rezervasyon </a>
                    </li>                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper" class="auto-style3">

 <div class="container-fluid">
             <div class="panel panel-primary"  height:100%; overflow:auto; width:100%;>
                  <div class="panel-heading">
                                <h3 class="panel-title">Rezervasyon İşlemleri</h3>
 
</div>
                  &nbsp;<br />
                  <br />
                 <div class ="table-responsive">
                  <asp:GridView ID="gwRezervasyonluOgrenciler" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="kullanıcı_rezervasyon_id" DataSourceID="SqlDataSourceRezervasyonDetaylari" ForeColor="#333333" Height="171px" Width="1169px" OnSelectedIndexChanged="gwRezervasyonluOgrenciler_SelectedIndexChanged" OnRowDataBound="gwRezervasyonluOgrenciler_RowDataBound" HorizontalAlign="Justify">
                      <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:BoundField DataField="kullanıcı_rezervasyon_id" HeaderText="Rezervasyon Id" ReadOnly="True" SortExpression="kullanıcı_rezervasyon_id" />
                          <asp:BoundField DataField="kullanıcı_id" HeaderText="TC" SortExpression="kullanıcı_id" />
                          <asp:BoundField DataField="kullanıcı_adi" HeaderText="Adı" SortExpression="kullanıcı_adi" />
                          <asp:BoundField DataField="kullanıcı_soyadi" HeaderText="Soyadı" SortExpression="kullanıcı_soyadi" />
                          <asp:BoundField DataField="kullanici_alis_tarihi" HeaderText="Alış Tarihi" SortExpression="kullanici_alis_tarihi" />
                          <asp:BoundField DataField="kullanici_teslim_tarihi" HeaderText="Teslim Tarihi" SortExpression="kullanici_teslim_tarihi" />
                          <asp:BoundField DataField="kullanici_telefon" HeaderText="Telefon" SortExpression="kullanici_telefon" />
                          <asp:BoundField DataField="onay_durumu" HeaderText="Danışman Onayı" SortExpression="onay_durumu" />
                          <asp:BoundField DataField="Expr1" HeaderText="Dekan Onayı" SortExpression="Expr1" />
                          <asp:BoundField DataField="teslim_durumu" HeaderText="Teslim Durumu" SortExpression="teslim_durumu" />
                          <asp:CommandField SelectText="Görüntüle" ShowSelectButton="True" />
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
                  <asp:SqlDataSource ID="SqlDataSourceRezervasyonDetaylari" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id, OgrenciRezervasyonBilgileri.kullanıcı_id, Ogrenci.kullanıcı_adi, Ogrenci.kullanıcı_soyadi, OgrenciRezervasyonBilgileri.kullanici_alis_tarihi, OgrenciRezervasyonBilgileri.kullanici_teslim_tarihi, OgrenciRezervasyonBilgileri.kullanici_telefon, RezervasyonDanismanOnayDurumu.onay_durumu, RezervasyonDekanOnayDurumu.onay_durumu AS Expr1, DepocuTeslimDurumu.teslim_durumu FROM DepocuTeslimDurumu INNER JOIN OgrenciRezervasyonDurumu ON DepocuTeslimDurumu.teslim_id = OgrenciRezervasyonDurumu.rezervasyon_teslim_durumu INNER JOIN OgrenciRezervasyonİliskisi ON OgrenciRezervasyonDurumu.rezervasyon_id = OgrenciRezervasyonİliskisi.rezervasyon_id INNER JOIN OgrenciRezervasyonBilgileri ON OgrenciRezervasyonİliskisi.kullanıcı_rezervasyon_id = OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id INNER JOIN RezervasyonDanismanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_danisman_onay_durumu = RezervasyonDanismanOnayDurumu.onay_id INNER JOIN RezervasyonDekanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_dekan_onay_durumu = RezervasyonDekanOnayDurumu.onay_id INNER JOIN Ogrenci ON OgrenciRezervasyonBilgileri.kullanıcı_id = Ogrenci.kullanıcı_id Where OgrenciRezervasyonBilgileri.kullanıcı_id = @kullanıcı_id">
                      <SelectParameters>
                          <asp:SessionParameter Name="kullanıcı_id" SessionField="userStudent" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <br />
                  <br />
                  <br />
                  <table style="width:100%;">
                      <tr>
                          <td class="auto-style4"></td>
                          <td>
                              <asp:Button ID="btnYeniRezervasyon" runat="server" CssClass="col-xs-offset-0" Text="Yeni Rezervasyon Yap" OnClick="btnYeniRezervasyon_Click" />
                          </td>
                      </tr>
                  </table>
                  <br />
                  <br />
                  <br />
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

</html>
    </form>
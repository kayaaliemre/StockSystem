<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexStockerDeliverStudent.aspx.cs" Inherits="StockSystem.IndexStockerDeliverStudent" %>

<!DOCTYPE html>

<style type="text/css">
    .auto-style1 {
        height: 347px;
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

 

</head>

<body style="height: 406px">

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
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Depo Malzeme Takip </a>
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
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="logOutButton_Click" /> </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
              <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="IndexStocker.aspx"><i class="fa fa-fw fa-dashboard"></i> Malzeme İşlemleri </a>
                    </li>
                     <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Öğrenci Teslim İşlemleri <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="IndexStockerDeliverStudent.aspx?id=3">Teslim Alma İşlemleri</a>
                            </li>
                            <li>
                                <a href="IndexStockerDeliverStudent.aspx?id=4">Teslim Etme İşlemleri</a>
                            </li>
                        </ul>
                    </li> 
                    <li>
                        <a href="IndexStocker.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Diğer İşlemler </a>
                    </li>    
                                   
                </ul>
            </div>
       
        </nav>

        
       
        <div id="page-wrapper" class="auto-style1">

            <div class="container-fluid">


               <asp:Panel ID="Panel1" runat="server" Height="341px">
                           <table>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Rezervasyon Numarası  ya da TC giriniz :" Font-Bold="True"></asp:Label> 
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
                   <asp:GridView ID="gvDepocuTeslim" runat="server" AutoGenerateColumns="False" DataKeyNames="kullanıcı_rezervasyon_id" DataSourceID="sqlDsAll" OnSelectedIndexChanged="gvDepocuTeslim_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" Height="173px" Width="1187px" OnRowDataBound="gvDepocuTeslim_RowDataBound">
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
                           <asp:BoundField DataField="onay_durumu1" HeaderText="Dekan Onayı" SortExpression="onay_durumu1" />
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
                  <asp:SqlDataSource ID="sqlDsAll" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id, OgrenciRezervasyonBilgileri.kullanıcı_id, Ogrenci.kullanıcı_adi, Ogrenci.kullanıcı_soyadi, OgrenciRezervasyonBilgileri.kullanici_alis_tarihi, OgrenciRezervasyonBilgileri.kullanici_teslim_tarihi, OgrenciRezervasyonBilgileri.kullanici_telefon, RezervasyonDanismanOnayDurumu.onay_durumu, RezervasyonDekanOnayDurumu.onay_durumu, DepocuTeslimDurumu.teslim_durumu FROM OgrenciRezervasyonDurumu INNER JOIN DepocuTeslimDurumu ON OgrenciRezervasyonDurumu.rezervasyon_teslim_durumu = DepocuTeslimDurumu.teslim_id INNER JOIN OgrenciRezervasyonİliskisi ON OgrenciRezervasyonDurumu.rezervasyon_id = OgrenciRezervasyonİliskisi.rezervasyon_id INNER JOIN OgrenciRezervasyonBilgileri ON OgrenciRezervasyonİliskisi.kullanıcı_rezervasyon_id = OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id INNER JOIN RezervasyonDanismanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_danisman_onay_durumu = RezervasyonDanismanOnayDurumu.onay_id INNER JOIN RezervasyonDekanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_dekan_onay_durumu = RezervasyonDekanOnayDurumu.onay_id INNER JOIN Ogrenci ON OgrenciRezervasyonBilgileri.kullanıcı_id = Ogrenci.kullanıcı_id where OgrenciRezervasyonİliskisi.rezervasyon_id =@rezervasyonId">
                      <SelectParameters>
                          <asp:QueryStringParameter Name="rezervasyonId" QueryStringField="id" />
                      </SelectParameters>
                   </asp:SqlDataSource>
                           <asp:SqlDataSource ID="sqlDsReservasionId" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id, OgrenciRezervasyonBilgileri.kullanıcı_id, Ogrenci.kullanıcı_adi, Ogrenci.kullanıcı_soyadi, OgrenciRezervasyonBilgileri.kullanici_alis_tarihi, OgrenciRezervasyonBilgileri.kullanici_teslim_tarihi, OgrenciRezervasyonBilgileri.kullanici_telefon, RezervasyonDanismanOnayDurumu.onay_durumu, RezervasyonDekanOnayDurumu.onay_durumu, DepocuTeslimDurumu.teslim_durumu FROM OgrenciRezervasyonDurumu INNER JOIN DepocuTeslimDurumu ON OgrenciRezervasyonDurumu.rezervasyon_teslim_durumu = DepocuTeslimDurumu.teslim_id INNER JOIN OgrenciRezervasyonİliskisi ON OgrenciRezervasyonDurumu.rezervasyon_id = OgrenciRezervasyonİliskisi.rezervasyon_id INNER JOIN OgrenciRezervasyonBilgileri ON OgrenciRezervasyonİliskisi.kullanıcı_rezervasyon_id = OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id INNER JOIN RezervasyonDanismanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_danisman_onay_durumu = RezervasyonDanismanOnayDurumu.onay_id INNER JOIN RezervasyonDekanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_dekan_onay_durumu = RezervasyonDekanOnayDurumu.onay_id INNER JOIN Ogrenci ON OgrenciRezervasyonBilgileri.kullanıcı_id = Ogrenci.kullanıcı_id
WHERE (OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id = @rezervasyonId)">
                               <SelectParameters>
                                   <asp:ControlParameter ControlID="tbInput" Name="rezervasyonId" PropertyName="Text" />
                               </SelectParameters>
                           </asp:SqlDataSource>
                           <asp:SqlDataSource ID="SqldsOgrenciTC" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id, OgrenciRezervasyonBilgileri.kullanıcı_id, Ogrenci.kullanıcı_adi, Ogrenci.kullanıcı_soyadi, OgrenciRezervasyonBilgileri.kullanici_alis_tarihi, OgrenciRezervasyonBilgileri.kullanici_teslim_tarihi, OgrenciRezervasyonBilgileri.kullanici_telefon, RezervasyonDanismanOnayDurumu.onay_durumu, RezervasyonDekanOnayDurumu.onay_durumu, DepocuTeslimDurumu.teslim_durumu FROM OgrenciRezervasyonDurumu INNER JOIN DepocuTeslimDurumu ON OgrenciRezervasyonDurumu.rezervasyon_teslim_durumu = DepocuTeslimDurumu.teslim_id INNER JOIN OgrenciRezervasyonİliskisi ON OgrenciRezervasyonDurumu.rezervasyon_id = OgrenciRezervasyonİliskisi.rezervasyon_id INNER JOIN OgrenciRezervasyonBilgileri ON OgrenciRezervasyonİliskisi.kullanıcı_rezervasyon_id = OgrenciRezervasyonBilgileri.kullanıcı_rezervasyon_id INNER JOIN RezervasyonDanismanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_danisman_onay_durumu = RezervasyonDanismanOnayDurumu.onay_id INNER JOIN RezervasyonDekanOnayDurumu ON OgrenciRezervasyonDurumu.rezervasyon_dekan_onay_durumu = RezervasyonDekanOnayDurumu.onay_id INNER JOIN Ogrenci ON OgrenciRezervasyonBilgileri.kullanıcı_id = Ogrenci.kullanıcı_id
WHERE (OgrenciRezervasyonBilgileri.kullanıcı_id  = @ogrenciTc)">
                               <SelectParameters>
                                   <asp:ControlParameter ControlID="tbInput" Name="ogrenciTc" PropertyName="Text" />
                               </SelectParameters>
                           </asp:SqlDataSource>
                </asp:Panel>
            </div>
            <!-- /.container-fluid -->

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



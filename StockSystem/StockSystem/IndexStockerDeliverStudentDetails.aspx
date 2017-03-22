<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexStockerDeliverStudentDetails.aspx.cs" Inherits="StockSystem.IndexStockerDeliverStudentDetails" %>

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
        height: 221px;
    }
    .auto-style6 {
        width: 421px;
    }
    .auto-style7 {
        height: 212px;
        width: 154px;
        position: inherit;
        z-index: auto;
        margin-top: 0px;
    }
    .auto-style8 {
        width: 169px
    }
    .auto-style14 {
        width: 121px;
    }
    .auto-style16 {
        width: 128px;
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

<body style="height: 710px">

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
                 <a class="navbar-brand" href="IndexStocker.aspx">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
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
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper" class="auto-style1">

             <div class="container-fluid">
             <div class="panel panel-primary">
                  <div class="panel-heading">
                                <h3 class="panel-title">Öğrenci Teslim Bilgileri</h3>
                            </div>
              <table class="auto-style35">
              
                
                <tr>
                    <td aria-expanded="false" class="auto-style2" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style6">
        <asp:Panel runat="server" Height="332px" ID="Panel1" GroupingText="Grup Lideri" Width="515px" Font-Bold="True" CssClass="text-xs-center">
            <table class="auto-style20">
                <tr>
                    <td aria-expanded="false" class="auto-style8" rowspan="6">
                        <img alt="" src="" style="padding: 0px; margin-left: 0px; margin-right: 0px; margin-bottom: 0px;" class="auto-style7" />
                    </td>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style16" style="margin: 8px; padding: 8px; border-spacing: inherit;">Rezervasyon ID :&nbsp; </td>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style14" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="rzTxtbox" Width="147px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" class="auto-style16" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">TC :</td>
                    <td aria-expanded="false" class="auto-style14" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="tcTxtbox" Enabled="False" Width="146px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" class="auto-style16" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">Ad:</td>
                    <td aria-expanded="false" class="auto-style14" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="nameTxtbox" Enabled="False" Width="146px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" class="auto-style16" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">Soyad:</td>
                    <td aria-expanded="false" class="auto-style14" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="surnameTxtbox" Enabled="False" Width="146px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" class="auto-style16" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">Bölüm:</td>
                    <td aria-expanded="false" class="auto-style14" aria-setsize="20" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="dptTxtbox" Enabled="False" Width="146px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style16" style="margin: 8px; padding: 8px;border-spacing: inherit;">Telefon:</td>
                    <td aria-expanded="false" aria-setsize="20" class="auto-style14" style="margin: 8px; padding: 8px; border-spacing: inherit;">
                        <asp:TextBox runat="server" ID="telTxtbox" Enabled="False" Width="146px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
                               
                                  
                                &nbsp;</td>
                                <td>
                
                                    &nbsp;
                
                                    <asp:GridView ID="gvDepocuTeslim" runat="server" AutoGenerateColumns="False" DataKeyNames="malzeme_id" DataSourceID="SqlDataSource1" Height="289px" Width="554px"
                                        caption="<center>Alınan Malzemeler</center>" captionalign="Top" CellPadding="4" ForeColor="#333333" >
                                        <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="malzeme_id" HeaderText="Malzeme Id" InsertVisible="False" ReadOnly="True" SortExpression="malzeme_id" />
                <asp:BoundField DataField="malzeme_adi" HeaderText="Malzeme Adı" SortExpression="malzeme_adi" />
                <asp:BoundField DataField="malzeme_serino" HeaderText="Malzeme SeriNo" SortExpression="malzeme_serino" />
                <asp:BoundField DataField="malzeme_kodu" HeaderText="Malzeme Kodu" SortExpression="malzeme_kodu" />
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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT M.malzeme_id, M.malzeme_adi, M.malzeme_serino, M.malzeme_kodu FROM Malzeme AS M INNER JOIN OgrenciSecilenMalzeme AS O ON M.malzeme_id = O.secilen_malzeme_id WHERE (O.kullanıcı_rezervasyon_id = @userRezervationId)">
            <SelectParameters>
                <asp:SessionParameter Name="userRezervationId" SessionField="userReservationId" />
            </SelectParameters>
        </asp:SqlDataSource>

                      
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnGeri" runat="server" Text="Geri" BackColor="#6699FF" Width="171px" Height="44px" OnClick="btnGeri_Click"/>

                      
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnTeslim" runat="server" Text="Teslim Et" BackColor="#009900" Width="171px" Height="44px" OnClick="btnTeslim_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnYazdır" runat="server" Height="44px" Text="YAZDIR" Width="171px" BackColor="Red" OnClick="btnYazdır_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                
                            </tr>
                        </table>
              </table>
               

            </div>
           

            </div>

        </div>
    </div>
   
</body>

</html>
</form>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexAdmin.aspx.cs" Inherits="StockSystem.IndexAdmin" %>
<style type="text/css">
    .auto-style1 {
        width: 141%;
        height: 396px;
        margin-left: 0px;
        margin-top: 0px;
    }
    .auto-style2 {
        width: 450px
    }
    .auto-style3 {
        height: 40px;
        width: 305px;
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
                <a class="navbar-brand" href="IndexAdmin.aspx"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
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
                    <li class="active">
                        <a href="IndexAdmin.aspx"><i class="fa fa-fw fa-dashboard"></i> Yönetici İşlemleri </a>
                    </li>
                    <li>
                        <a href="IndexAdminMaterial.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Malzeme İşlemleri </a>
                    </li>
                    <li>
                        <a href="IndexAdminOthers.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Diğer İşlemler </a>
                    </li>                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

          <div class="container-fluid">
             <div class="panel panel-primary">
                  <div class="panel-heading">
                                <h3 class="panel-title">Yönetici İşlemleri</h3>
                            </div>
               
            <asp:Panel ID="pnlTexboxs" runat="server" Height="632px" Width="607px"   HorizontalAlign="Center" style="margin-left:150px;">
            <table style="width:400px; height:100px; align-content:center;" >
                <tr>
                    <td style="text-align:right; height:40px;">
                        <asp:Label ID="Label18" runat="server" Text="TC:" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="text-align:left; " class="auto-style3">
                        <asp:TextBox ID="tbSistemTcNo" runat="server" BackColor="#CCEEFF" Height="25px" Width="200px" AutoPostBack="True" MaxLength="11" TextMode="Number"></asp:TextBox></td>
                    
                     <td style="height:40px;">&nbsp;</td>
                </tr>
                <tr>
                    <td  style="text-align:right; height:40px;">
                        <asp:Label ID="Label19" runat="server" Text="Adı:" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="text-align:left; " class="auto-style3">
                        <asp:TextBox ID="tbSistemAdı" runat="server" BackColor="#CCEEFF" Height="25px" Width="200px"></asp:TextBox></td>
                     <td style="height:40px;">&nbsp;</td>
                </tr>
                <tr>
                    <td  style="text-align:right; height:40px;">
                        <asp:Label ID="Label20" runat="server" Text="Soyadı:" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="text-align:left; " class="auto-style3">
                        <asp:TextBox ID="tbSistemSoyadı" runat="server" BackColor="#CCEEFF" Height="25px" Width="200px"></asp:TextBox></td>
                     <td style="height:40px;">&nbsp;</td>
                </tr>
                <tr>
                    <td  style="text-align:right;">
                        <asp:Label ID="Label21" runat="server" Text="Rolü:" Font-Bold="True"></asp:Label>
                    </td>
                     <td style="text-align:left; height:40px;">
                        <asp:DropDownList ID="ddlSistemRolu" runat="server" Width="200px" BackColor="#CCEEFF" Height="25px" AutoPostBack="True" OnSelectedIndexChanged="ddlSistemRolu_SelectedIndexChanged">
                            <asp:ListItem>Yönetici</asp:ListItem>
                            <asp:ListItem>Depo Sorumlusu</asp:ListItem>
                            <asp:ListItem>Danışman</asp:ListItem>
                            <asp:ListItem>Dekanlık</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                   
                </tr>
                  <tr>
                    <td  style="text-align:right;">
                        <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="text-align:left; " class="auto-style3">
                        
                        <asp:TextBox ID="tbEmail" runat="server" BackColor="#CCEEFF" Height="25px" Width="200px" TextMode="Email" ></asp:TextBox>
                        
                    </td>
                   
                </tr>
               
            </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSistemKaydet0" runat="server" Height="30px" OnClick="btnSistemKaydet_Click" Text="Kaydet" Width="120px" CssClass="btn-primary" />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:GridView ID="gwAdmin" runat="server" AutoGenerateColumns="False" DataKeyNames="userId" DataSourceID="SqlDataSourceAdmin" DataMember="DefaultView" Caption="Admins" CaptionAlign="Top" CellPadding="4" ForeColor="#333333" Width="397px" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="userId" HeaderText="TC" ReadOnly="True" SortExpression="userId" />
                                    <asp:BoundField DataField="userName" HeaderText="Adı" SortExpression="userName" />
                                    <asp:BoundField DataField="userSurname" HeaderText="Soyadı" SortExpression="userSurname" />
                                    <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" SelectText="Seç" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Güncelle" />
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
                            <asp:SqlDataSource ID="SqlDataSourceAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT [userId], [userName], [userSurname] FROM [LoginAdmin]" DeleteCommand="DELETE FROM [LoginAdmin] WHERE [userId] = @userId" InsertCommand="INSERT INTO [LoginAdmin] ([userId], [userName], [userSurname]) VALUES (@userId, @userName, @userSurname)" UpdateCommand="UPDATE [LoginAdmin] SET [userName] = @userName, [userSurname] = @userSurname WHERE [userId] = @userId">
                                <DeleteParameters>
                                    <asp:Parameter Name="userId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="userId" Type="Int32" />
                                    <asp:Parameter Name="userName" Type="String" />
                                    <asp:Parameter Name="userSurname" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="userName" Type="String" />
                                    <asp:Parameter Name="userSurname" Type="String" />
                                    <asp:Parameter Name="userId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:GridView ID="gwStocker" runat="server" AutoGenerateColumns="False" DataKeyNames="userId" DataMember="DefaultView" DataSourceID="SqlDataSourceStocker" Width="386px" Caption="Depocu" CaptionAlign="Top" CellPadding="4" ForeColor="#333333">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="userId" HeaderText="TC" ReadOnly="True" SortExpression="userId" />
                                    <asp:BoundField DataField="userName" HeaderText="Adı" SortExpression="userName" />
                                    <asp:BoundField DataField="userSurname" HeaderText="Soyadı" SortExpression="userSurname" />
                                    <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" SelectText="Seç" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Güncelle" />
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
                            <asp:SqlDataSource ID="SqlDataSourceStocker" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" SelectCommand="SELECT [userId], [userName], [userSurname] FROM [LoginStocker]" DeleteCommand="DELETE FROM [LoginStocker] WHERE [userId] = @userId" InsertCommand="INSERT INTO [LoginStocker] ([userId], [userName], [userSurname]) VALUES (@userId, @userName, @userSurname)" UpdateCommand="UPDATE [LoginStocker] SET [userName] = @userName, [userSurname] = @userSurname WHERE [userId] = @userId">
                                <DeleteParameters>
                                    <asp:Parameter Name="userId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="userId" Type="Int32" />
                                    <asp:Parameter Name="userName" Type="String" />
                                    <asp:Parameter Name="userSurname" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="userName" Type="String" />
                                    <asp:Parameter Name="userSurname" Type="String" />
                                    <asp:Parameter Name="userId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                        
                    </tr>
                    
                    
                    <tr>
                        <td>
                            <asp:GridView ID="gwDean" runat="server" CellPadding="4" ForeColor="#333333" Height="128px" Width="390px" AutoGenerateColumns="False" Caption="Dekanlık" DataKeyNames="userId" DataSourceID="SqlDataSourceDean">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="userId" HeaderText="TC" ReadOnly="True" SortExpression="userId" />
                                    <asp:BoundField DataField="userName" HeaderText="Adı" SortExpression="userName" />
                                    <asp:BoundField DataField="userSurname" HeaderText="Soyadı" SortExpression="userSurname" />
                                    <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzelt" InsertText="Ekle" SelectText="Seç" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Güncelle" />
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
                            <asp:SqlDataSource ID="SqlDataSourceDean" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" DeleteCommand="DELETE FROM [LoginDean] WHERE [userId] = @userId" InsertCommand="INSERT INTO [LoginDean] ([userId], [userName], [userSurname]) VALUES (@userId, @userName, @userSurname)" SelectCommand="SELECT [userId], [userName], [userSurname] FROM [LoginDean]" UpdateCommand="UPDATE [LoginDean] SET [userName] = @userName, [userSurname] = @userSurname WHERE [userId] = @userId">
                                <DeleteParameters>
                                    <asp:Parameter Name="userId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="userId" Type="Int32" />
                                    <asp:Parameter Name="userName" Type="String" />
                                    <asp:Parameter Name="userSurname" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="userName" Type="String" />
                                    <asp:Parameter Name="userSurname" Type="String" />
                                    <asp:Parameter Name="userId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            

                            <asp:GridView ID="gwDanisman" runat="server" AllowSorting="True" AutoGenerateColumns="False" Caption="Danışmanlar" CellPadding="4" DataKeyNames="danisman_id" DataSourceID="SqlDataSourceLecturer" ForeColor="#333333" Height="104px" Width="399px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="danisman_id" HeaderText="TC" ReadOnly="True" SortExpression="danisman_id" />
                                    <asp:BoundField DataField="danisman_adi" HeaderText="Adı" SortExpression="danisman_adi" />
                                    <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" SelectText="Seç" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Güncelle" />
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
                            <asp:SqlDataSource ID="SqlDataSourceLecturer" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyWorksConnectionString %>" DeleteCommand="DELETE FROM [Danisman] WHERE [danisman_id] = @danisman_id" InsertCommand="INSERT INTO [Danisman] ([danisman_id], [danisman_adi]) VALUES (@danisman_id, @danisman_adi)" SelectCommand="SELECT [danisman_id], [danisman_adi] FROM [Danisman]" UpdateCommand="UPDATE [Danisman] SET [danisman_adi] = @danisman_adi WHERE [danisman_id] = @danisman_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="danisman_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="danisman_id" Type="Int32" />
                                    <asp:Parameter Name="danisman_adi" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="danisman_adi" Type="String" />
                                    <asp:Parameter Name="danisman_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            

                        </td>
                    </tr>

                                
                </table>
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
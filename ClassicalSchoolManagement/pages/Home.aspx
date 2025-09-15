<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs"
    Inherits="Home" MasterPageFile="~/master/Master3.Master" %>

<%@ Register TagPrefix="art" TagName="SideBarContainer" Src="~/design/SideMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="~/design/DefaultHeader.ascx" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>




<asp:Content ID="titleContent" ContentPlaceHolderID="TitleContentPlaceHolder" runat="Server">
    Acceuil
</asp:Content>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <art:DefaultHeader ID="DefaultHeader" runat="server" />
</asp:Content>

<asp:Content ID="SideBarContent" ContentPlaceHolderID="SideBarPlaceHolder" runat="Server">
    <art:SideBarContainer runat="server" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="Server">
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js"></script>
    <!-- Sparkline -->
    <script src="../plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- ChartJS 1.0.1 -->
    <script src="../plugins/chartjs/Chart.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js"></script>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../bootstrap/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="../bootstrap/css/ionicons.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="../plugins/jvectormap/jquery-jvectormap-1.2.2.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css" />
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <!-- daterange picker -->
    <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker-bs3.css">
    <link rel="stylesheet" href="../plugins/datepicker/css/bootstrap-datepicker3.css">



    <style type="text/css">
        .buttonDesign {
            border-radius: 20px;
        }

            .buttonDesign:hover {
                -webkit-box-shadow: 0px 0px 20px #3678A3;
                -moz-box-shadow: 0px 0px 20px #3678A3;
                box-shadow: 0px 0px 20px #3678A3;
                cursor: pointer;
            }
    </style>
</asp:Content>



<asp:Content ID="HomeContent" ContentPlaceHolderID="DynamicContainerContentPlaceHolder" runat="Server">
    <div class="container-fluid">
        <!-- Main content -->
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lblCountStudent" Text="0" runat="server"></asp:Label><sup style="font-size: 20px"></sup></h3>
                        <p>
                            <asp:Literal runat="server" Text="Elève(s)"></asp:Literal>
                        </p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person"></i>
                    </div>
                    <a href="../Pages/SearchStudents.aspx" class="small-box-footer">
                        <asp:Literal runat="server"
                            Text="Voir Plus"></asp:Literal>
                        <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lblCountTeacher" Text="0" runat="server"></asp:Label><sup style="font-size: 20px"></sup></h3>
                        <p>
                            <asp:Literal runat="server" Text="Professeur(s)"></asp:Literal>
                        </p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person"></i>
                    </div>
                    <a href="../Pages/SearchTeachers.aspx" class="small-box-footer">
                        <asp:Literal runat="server"
                            Text="Voir Plus"></asp:Literal>
                        <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lblCountStaff" Text="0" runat="server"></asp:Label><sup style="font-size: 20px"></sup></h3>
                        <p>
                            <asp:Literal runat="server" Text="Personnels"></asp:Literal>
                        </p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person"></i>
                    </div>
                    <a href="#" class="small-box-footer">
                        <asp:Literal runat="server"
                            Text="Voir Plus"></asp:Literal>
                        <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-md-3 col-sm-6 col-xs-12" style="visibility: hidden">
                <!-- small box -->
                <div class="small-box bg-blue-gradient">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="Label3" Text="0.00" runat="server"></asp:Label><sup style="font-size: 20px">&dollar;</sup></h3>
                        <p>
                            <asp:Literal runat="server" Text="Economat"></asp:Literal>
                        </p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-cash-outline"></i>
                    </div>
                    <a href="../Pages/Payment.aspx?menu=Economat" class="small-box-footer">
                        <asp:Literal runat="server"
                            Text="Voir Plus"></asp:Literal>
                        <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->


        </div>

        <%--        <!-- /.row -->
        <div class="row">

            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- small box -->
                <div class="small-box bg-red-active">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="Label4" runat="server"></asp:Label><sup style="font-size: 20px"></sup></h3>
                        <p>
                            <asp:Literal runat="server" Text="Professeur"></asp:Literal>
                        </p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-people"></i>
                    </div>
                    <a href="../Pages/RegisterTeachers.aspx?menu=Professeur" class="small-box-footer">
                        <asp:Literal runat="server"
                            Text="Voir Plus"></asp:Literal>
                        <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- small box -->
                <div class="small-box bg-teal-gradient">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="Label5" runat="server"></asp:Label><sup style="font-size: 20px"></sup></h3>
                        <p>
                            <asp:Literal runat="server" Text="Parametres"></asp:Literal>
                        </p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-settings-outline"></i>
                    </div>
                    <a href="../Pages/ManageGroupe.aspx?menu=Parametres" class="small-box-footer">
                        <asp:Literal runat="server"
                            Text="Voir Plus"></asp:Literal>
                        <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>--%>
        <!-- ./col -->
    </div>
    <!-- /.row -->




</asp:Content>

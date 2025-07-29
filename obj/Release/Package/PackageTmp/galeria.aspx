<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="galeria.aspx.vb" Inherits="PortalCT.galeria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Galeria</title>

    <link id="icone" rel="icon" href="imagens/favicon.ico" type="image/ico" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/custom-styles.css" rel="stylesheet" />
    <link href="css/sb-admin.css" rel="stylesheet" />
    <link href="css/morris.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="Style/prettyPhoto.css" media="screen" />

    <script src="js/jquery-3.1.0.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Arquivos utilizados pelo jQuery lightBox plugin -->
    <script type="text/javascript" src="Scripts/jquery.prettyPhoto.js" charset="utf-8"></script>
    <style type="text/css">
        .style1 {
            width: 100%;
        }

        .style2 {
            font-family: "Trebuchet MS";
            font-size: x-large;
            color: #0033CC;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Cabechalho -->
            <div class="navbar-fixed-top">
                <div style="font-weight: 700;" class="auto-style20">
                    <div class="row" style="position: relative; text-align: center; clip: rect(auto, auto, 10%, auto)">
                        <div class="col-lg-12 " style="background-color: #337ab7; padding-top: 1%; padding-bottom: 1%">

                            <!-- Imagem -->
                            <a href="#">
                                <img id="Image1" src="imagens/logo_branco.png" align="left" /></a>
                            <!-- Fim Imagem -->

                            <!-- Titulo -->
                            <label style="color: #FFFFFF; position: relative; font-family: 'Arial Black'; font-size: 28px; top: 10%;">Galeria de Imagens</label>
                            <!-- Fim Titulo -->

                            <!-- Configuracao Usuario -->
                            <ul class="nav navbar-top-links navbar-right">
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                        <i class="fa fa-user fa-fw" style="font-size: 18px"></i><i class="fa fa-caret-down"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li>
                                            <asp:Label ID="lbluser" class="fa fa-user fa-fw" Style="margin-left: 15%" runat="server" Text="Label" ForeColor="#339966"></asp:Label></li>
                                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>Configuracoes</a></li>
                                        <li class="divider"></li>
                                    </ul>
                                </li>
                            </ul>
                            <!-- Fim Configuracao Usuario -->


                        </div>
                    </div>
                </div>
                <!-- Menu -->
                <div class="container" style="margin-left: 5%;">
                    <div class="row">
                        <div class="btn-group btn-breadcrum">
                            <a href="http://portalct.casaeterra.com/dashboard.aspx" class="btn btn-default"><i class="glyphicon glyphicon-home"></i></a>
                            <a href="default.aspx" class="btn btn-info">DashBoard</a>
                        </div>
                    </div>
                    <!-- Fim Menu -->
                </div>
            </div>
            <div style="margin-top: 8%">
                <div class="row">
                    <asp:Label ID="lblevento" runat="server" style="margin-left:3%" Text="Evento :" Font-Bold="True" Font-Names="Arial Narrow" ForeColor="Blue"></asp:Label>
                    <asp:DropDownList ID="drdEvento" style="width:50%" class="btn btn-info" runat="server" AutoPostBack="True" ToolTip="Escolha o Evento"></asp:DropDownList>
                </div>
                 <div id="banner-fade" style="margin-top: 3%">
                    <ul class="bjqs">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <%--                <a href='<%# Eval("Name", "imagens/fotos1/{0}")%>' rel="prettyPhoto[pp_gal]" title="Você pode incluir títulos nas imagens.">                                --%>
                                <%--                    <img src='<%# DataBinder.Eval(Container.DataItem, "Value") %>' 
                    title='<%# (DataBinder.Eval(Container.DataItem, "Text").ToString()).Split(".") %>'                     
                    alt="" style="width:120px;height:120px">--%>
                                <a href='<%# DataBinder.Eval(Container.DataItem, "Value") %>' rel="OpenPopup(DataBinder.Eval(Container.DataItem))">
                                <img src='<%# DataBinder.Eval(Container.DataItem, "Value") %>' width="120" height="120" alt='<%# Eval("Value") %>' />
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>

            <!-- Footer -->
            <div class="footer navbar-fixed-bottom">
                <div class="row" style="background-color: #337ab7">
                    <div class="col-lg-12">
                        <center style="color: #FFFFFF">
                        Casa e Terra - T.I.
                    </center>
                    </div>
                </div>
            </div>
            <!-- Fim Footer -->
        </div>
    </form>
</body>
</html>
<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
        $("a[rel^='prettyPhoto']").prettyPhoto({ theme: 'facebook', slideshow: 5000, autoplay_slideshow: true });
    });

    function OpenPopup(imagem) {
        window.open(imagem, "List", "scrollbars=yes,resizable=no,width=500,height=300";
        return false;
    }
</script>

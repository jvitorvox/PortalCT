<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="informacoes.aspx.vb" Inherits="PortalCT.informacoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Informações</title>

    <link id="icone" rel="icon" href="imagens/favicon.ico" type="image/ico" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/custom-styles.css" rel="stylesheet" />
    <script src="JS/mascara.js" type="text/javascript"></script>
    <script src="js/jquery-3.1.0.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 15px;
            height: 15px;
        }
        .auto-style2 {
            width: 37px;
        }
        .auto-style3 {
            width: 40%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Cabecalho -->
            <div class="navbar-fixed-top">
                <div style="font-weight: 700;" class="auto-style20">
                    <div class="row" style="position: relative; text-align: center; clip: rect(auto, auto, 10%, auto)">
                        <div class="col-lg-12 " style="background-color: #337ab7; padding-top: 1%; padding-bottom: 1%">

                            <!-- Imagem -->
                            <a href="#">
                                <img id="Image1" src="imagens/logo_branco.png" align="left" /></a>
                            <!-- Fim Imagem -->

                            <!-- Titulo -->
                            <label style="color: #FFFFFF; position: relative; font-family: 'Arial Black'; font-size: 28px; top: 10%; left: -10%">Portal Casa & Terra</label>
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

                            <!-- Apenas para controle -->
                            <div>
                                <input name="txtusuario" type="text" value="" id="txtusuario" disabled="disabled" class="aspNetDisabled" style="color: #FFFF99; border-style: None; font-weight: bold; margin-left: 08%; font-size: 14px; background-color: transparent" />
                            </div>
                            <!-- Fim Apenas para controle -->
                        </div>
                    </div>
                </div>
                <!-- Menu -->
                <div class="container" style="margin-left: 5%;">
                    <div class="row">
                        <div class="btn-group btn-breadcrum">
                            <div class="btn-group btn-breadcrumb">
                    <a href="default.aspx" class="btn btn-default" id="btnInicio"><i class="glyphicon glyphicon-home"></i></a>
                    <asp:Button ID="btnDash" runat="server" class="btn btn-info" Text="DashBoard" />
                            </div>
                        </div>
                    </div>
                    <!-- Fim Menu -->
                </div>
            </div>
            <!-- Fim Cabechalho -->

            <div style="margin-top: 8%; margin-left: 4%; text-align: center">
                <h2 class="page-header text-info">Informações Sobre o Corona Vírus</h2>
            </div>
            </div>

            <div class="row" style="margin-bottom:3%">
<%--                <div class="col-md-4">
                    <img src="arquivos/horarios.png" style="width:420px"/>
                </div>--%>

                <div class="col-md-8" style="left:15%">
<%--                    <img src="arquivos/tabelarussia2018.jpg" />--%>
                    <img src="imagens/corona.png" style="width:800px" />
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

<script type="text/javascript">
    //<![CDATA[
    document.getElementById('txtdt1').addEventListener('keyup', function (event) { formataData(this, event); });
    document.getElementById('txtdt2').addEventListener('keyup', function (event) { formataData(this, event); });

    function openModal() {
        $("myModal").modal('show');
    };

    function alertBootstrap(msg, tipo, func_depois) {
        var tempo = 5000;
        tipo = tipo || "alert-success";

        var $msg = $(document.createElement('div')).css({
            position: "fixed",
            "font-size": "large",
            top: "40%", left: "50%",
            transform: "translateX(-50%)",
            "z-index": 99999999999,
            display: "none"
        }).addClass("alert " + tipo).html(msg).appendTo($("body"));

        $msg.slideDown(500).delay(tempo).slideUp(500, function () { typeof func_depois === 'function' ? func_depois() : null; });
        // $msg.slideDown(500).delay(tempo).slideUp(500);
    };

    //]>


</script>

<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/jquery-1.12.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
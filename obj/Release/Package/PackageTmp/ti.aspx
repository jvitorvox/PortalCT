<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ti.aspx.vb" Inherits="PortalCT.ti" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Painel de TI</title>

    <link id="icone" rel="icon" href="imagens/favicon.ico" type="image/ico" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/custom-styles.css" rel="stylesheet" />
    <link href="css/sb-admin.css" rel="stylesheet" />
    <link href="css/morris.css" rel="stylesheet" />
    <link href="css/AdminLTE.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />

    <script src="JS/mascara.js" type="text/javascript"></script>
    <script src="js/jquery-3.1.0.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 15px;
            height: 15px;
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
                            <label style="color: #FFFFFF; position: relative; font-family: 'Arial Black'; font-size: 28px; top: 10%; left: -10%">Painel TI</label>
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
        </div>
        <%--            <div style="margin-top: 9%; margin-left: 4%; text-align: center">
                <h2 class="page-header text-info">Painel TI</h2>
            </div>--%>
        <!-- Row  de Totais-->
        <div class="row" style="margin-top: 9%">
            <div class="col-lg-3 col-xs-6" style="padding-left: 3%; padding-right: 3%">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lblSysNovas" runat="server" Text="0"></asp:Label></h3>
                        <p style="font-size: medium">Mes Atual - Sistemas</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-download"></i>
                    </div>
                    <a href="#" class="small-box-footer" style="font-size: medium">Demandas Novas <i class="fa fa-check"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-xs-6" style="padding-left: 3%; padding-right: 3%">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lblSysResol" runat="server" Text="0"></asp:Label></h3>
                        <p style="font-size: medium">Mes Atual - Sistemas</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-checkmark"></i>
                    </div>
                    <a href="#" class="small-box-footer" style="font-size: medium">Demandas Entregues <i class="fa fa-check"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-xs-6" style="padding-left: 3%; padding-right: 3%">
                <!-- small box -->
                <div class="small-box bg-lime">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lblNovasInfra" runat="server" Text="0"></asp:Label></h3>
                        <p style="font-size: medium">Mes Atual- Infra</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-download"></i>
                    </div>
                    <a href="#" class="small-box-footer" style="font-size: medium">Demandas Novas <i class="fa fa-check"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-xs-6" style="padding-left: 3%; padding-right: 3%">
                <!-- small box -->
                <div class="small-box bg-lime">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lblResolinfra" runat="server" Text="0"></asp:Label></h3>
                        <p style="font-size: medium">Mes Atual- Infra</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-checkmark"></i>
                    </div>
                    <a href="#" class="small-box-footer" style="font-size: medium">Demandas Entregues <i class="fa fa-check"></i></a>
                </div>
            </div>

        </div>

        <!-- Row  de Sistemas-->
        <div class="row" style="padding-top: 1%;">

            <div style="margin-left: 45%;">
                <asp:Label ID="Label4" runat="server" Text="Sistemas" Font-Bold="True" Font-Size="20px" ForeColor="Navy"></asp:Label>
                <asp:Label ID="lbldemanda" runat="server" Style="font-size: 16px; margin-left: 44%" Text="Demanda :" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtdemamda" runat="server" class="form-control-pc" placeholder="Id Demanda" Width="10%" Style="margin-left: 1%" MaxLength="10" ToolTip="Id da Demanda"></asp:TextBox>
                <asp:Button ID="btnFiltro" runat="server" class="btn btn-info btn-sm" Style="margin-left: 5%;" Text="Filtrar" />
            </div>
            <div class="col-md-12" style="padding-left: 1%; padding-right: 1%">
                <div class="table-responsive" style="margin-top: 0.5%; padding-left: 1%; padding-right: 1%">
                    <div class="panel panel-default" style="height: 420px">
                        <asp:GridView ID="grdsistemas" CssClass=" table table-striped table-bordered table-hover" runat="server" Style="max-width: 100%; height: 200px" Font-Size="12px" AllowSorting="True" PageSize="100">
                            <HeaderStyle BackColor="#0099ff" ForeColor="White" />
                        </asp:GridView>
                    </div>
                </div>
                <table class="nav-justified" style="margin-top: 5%">
                    <tr>
                        <td style="width: 7%; padding-left: 2%">Prioridade : </td>
                        <td style="width: 1%">
                            <img alt="branco" class="auto-style1" src="imagens/branco.png" /></td>
                        <td style="width: 3%">Baixa</td>
                        <td style="width: 1%">
                            <img alt="amarelo" class="auto-style1" src="imagens/amarelo.png" /></td>
                        <td style="width: 3%">Media</td>
                        <td style="width: 1%">
                            <img alt="vermelho" class="auto-style1" src="imagens/vermelho.png" /></td>
                        <td style="width: 3%">Alta </td>
                        <td style="width: 1%">
                            <img alt="preto" class="auto-style1" src="imagens/negro.png" /></td>
                        <td style="width: 3%">Critica</td>
                    </tr>
                </table>
            </div>

        </div>
        <hr style="border-color: dodgerblue; border-top-width: 3px" />

        <!-- Row  de infra-->
        <div class="row" style="margin-top: 2%; padding-left: 1%; padding-right: 1%">
            <div style="margin-left: 6%; margin-left: 310px">
                <asp:Label ID="lblinfra" runat="server" Text="Infra Estrutura" Font-Bold="True" Font-Size="20px" ForeColor="Green"></asp:Label>
            </div>
            <div class="col-md-12">
                <div class="table-responsive" style="margin-top: 0.5%;">
                    <div class="panel panel-default" style="height: 298px">
                        <asp:GridView ID="grdInfra" CssClass=" table table-striped table-bordered table-hover" runat="server" Style="max-width: 100%; height: 200px" Font-Size="12px" AllowSorting="True" PageSize="100">
                            <HeaderStyle BackColor="DarkCyan" ForeColor="White" />
                        </asp:GridView>
                    </div>
                </div>
                <table class="nav-justified">
                    <tr>
                        <td>Prioridade : </td>
                        <td>
                            <img alt="verde" class="auto-style1" src="imagens/cinza.png" /></td>
                        <td>Baixa</td>
                        <td>
                            <img alt="vermelho" class="auto-style1" src="imagens/amarelo.png" /></td>
                        <td>Media</td>
                        <td>
                            <img alt="Amarelo" class="auto-style1" src="imagens/vermelho.png" /></td>
                        <td>Alta </td>
                        <td>
                            <img alt="Negro" class="auto-style1" src="imagens/azul.png" /></td>
                        <td>Negociavel</td>
                    </tr>
                </table>
            </div>
        </div>
        <hr style="border-color: dodgerblue; border-top-width: 3px" />

        <!-- Row  de Documentacao-->
        <div class="row" style="padding-top: 1%;">
            <div style="margin-left: 45%">
                <asp:Label ID="Label2" runat="server" Text="Documentação" Font-Bold="True" Font-Size="20px" ForeColor="Navy"></asp:Label>
            </div>           
            <br />

            <div class="col-md-6">
                <!--    Context Classes  -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Clique no documento para fazer download
                    </div>
                    <div class="panel-body">
                        <div class="box-body no-padding">
                            <table class="table table-condensed">
                                <tr style="width: 10px">
                                    <td>1</td>
                                    <td><a href="documentos/Modelo%20de%20Especificacao%20%20Funcional%20-%20Nome%20do%20Projeto.doc">Especificação Funcional</a> </td>
                                </tr>
                                <tr style="width: 10px">
                                    <td>2</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />

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

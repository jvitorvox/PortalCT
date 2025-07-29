<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="solcompras.aspx.vb" Inherits="PortalCT.solcompras" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Solicitacao de compras</title>

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
<%--                    <asp:Button ID="btnGestao" runat="server" class="btn btn-info" Text="Lotes" />
                    <asp:Button ID="btnRh" runat="server" class="btn btn-info" Text="RH" />
                    <asp:Button ID="btnTi" runat="server" class="btn btn-info" Text="TI" />
                    <asp:Button ID="btnCob" runat="server" class="btn btn-info" Text="Cobrança" />
                    <asp:Button ID="btnFin" runat="server" class="btn btn-info" Text="Financeiro" />
                    <asp:Button ID="btnObras" runat="server" class="btn btn-info" Text="Obras" />
                    <asp:Button ID="btnCamp" runat="server" class="btn btn-info" Text="G.Campanhas" />
                    <asp:Button ID="btnCont" runat="server" class="btn btn-info" Text="Contabil" />
                    <asp:Button ID="btnSolcomp" runat="server" class="btn btn-info" Text="Solic. Compras" />
                    <asp:Button ID="btnProtheus" runat="server" class="btn btn-info" Text="Protheus" />
                    <asp:Button ID="btncolabora" runat="server" class="btn btn-info" Text="Colaboradores" />
                    <asp:Button ID="btnhelp" runat="server" class="btn btn-info" Text="HelpDesk" />
                    <asp:Button ID="bntSair" runat="server" class="btn btn-info" Text="Sair" />--%>
                                <%--                    <a href="http://portalct.casaeterra.com" class="btn btn-info">Sair</a>--%>
                            </div>
                        </div>
                    </div>
                    <!-- Fim Menu -->
                </div>
            </div>
            <!-- Fim Cabechalho -->

            <div style="margin-top: 8%; margin-left: 4%; text-align: center">
                <h2 class="page-header text-info">Solicitações de Compras</h2>
            </div>
            <div class="row" style="margin-top: 2%">
                <div class="col-md-12">
                        <div class="form-group">
                      <div class="checkbox">
                 <asp:Label ID="Label4" runat="server" Text="Visualizar :"></asp:Label>
                 <asp:CheckBox ID="chktotodos" runat="server" class="form-control-pc" Width="16%" Style="border:none; margin-left:2%" Text=" Encerrados"  />
                 <asp:CheckBox ID="chkBloq" runat="server" class="form-control-pc" Width="16%" Style="border:none"  Text =" Bloqueados" />
                    </div>
                </div>
                    </div>
            </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="Label1" runat="server" class="form-control-pc" Style="border:none" Text="De :"></asp:Label>
                    <asp:TextBox ID="txtdt1" runat="server" class="form-control-pc" placeholder="Data Inicial" Width="10%" Style="margin-left: 1%" MaxLength="10" ToolTip="Data no formato  dd/mm/aaaa"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" class="form-control-pc" Style="border:none;margin-left: 1%" Text="Até :"></asp:Label>
                    <asp:TextBox ID="txtdt2" runat="server" class="form-control-pc" placeholder="Data Final" Width="10%" Style="margin-left: 1%" MaxLength="10" ToolTip="Data no formato  dd/mm/aaaa"></asp:TextBox>
                    <asp:Label ID="lblpedido"  runat="server"  Style ="font-size:16px;margin-left: 3% " Text="Pedido :" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="txtpedido" runat="server" class="form-control-pc" placeholder="Pedido" Width="10%" Style="margin-left: 1%" MaxLength="10" ToolTip="Numero do Pedido de compra"></asp:TextBox>

                    <asp:Button ID="btnFiltro" runat="server"  class="btn btn-info btn-sm" style=" margin-left: 5%;" Text="Filtrar" />
                </div>

            </div>
            <div class="table-responsive" style="margin-top: 0.5%; margin-left: 2%; margin-right: 3%">
            <button type="button" class="btn-primary" data-toggle="modal" data-target="#myModal" style="font-size: Smaller; margin-left: 95%">Detalhes</button>
<%--            <asp:LinkButton ID="LinkButton1" href="#myModal" data-toggle="modal" runat="server" Style="font-size: Smaller; margin-left: 95%">Detalhes</asp:LinkButton>--%>
               <div class="panel panel-default">
                    <asp:GridView ID="grdcompras" CssClass=" table table-striped table-bordered table-hover" runat="server" Style="max-width: 100%" Font-Size="9pt" AllowSorting="True" AutoGenerateSelectButton="True" PageSize="100">
                    <SelectedRowStyle BackColor="#cccccc" />
                    </asp:GridView>

                    <asp:Label ID="lblmens" runat="server"  Style ="font-size:20px " Text="" Font-Bold="True"></asp:Label>
                </div>
             <div class="table-responsive" style="margin-left:5%;margin-bottom:1%">
                <h4>Legenda</h4>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style2">
                            <img alt="" class="auto-style1" src="imagens/azul.png" /></td>
                        <td><span>Aguardando Ação (pedido, aprovação, classificação)</span></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <img alt="" class="auto-style1" src="imagens/verde.png" /></td>
                        <td><span>Nota Classificada/Solicitação Finalizada</span></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <img alt="" class="auto-style1" src="imagens/vermelho.png" /></td>
                        <td><span>Rejeitada</span></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <img alt="" class="auto-style1" src="imagens/lilas.png" /></td>
                        <td><span>Bloqueada</span></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <img alt="" class="auto-style1" src="imagens/laranja.png" /></td>
                        <td><span>Aguardando Pré-nota</span></td>
                    </tr>
                </table>
                 <br/>
            </div>

             </div>


    <%--Tela Modal--%>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
                <div class="modal-dialog">
                    <div class="modal-content" style="height: 520px">
                        <div class="modal-header">
                            <a class="close" data-dismiss="modal">&times;</a>
                            <h3>Detalhes</h3>
                        </div>
                        <div class="modal-body" style="height: 390px; overflow: auto">
                            <label>Aprovação</label>
                            <asp:GridView ID="gdvaprova" runat="server" class="table table-striped table-bordered table-hover" Width="100%" Font-Size="10px" AllowSorting="True" PageSize="8">
                            </asp:GridView>
                            <label>Financeiro</label>
                            <asp:GridView ID="gdvfin" runat="server" class="table table-striped table-bordered table-hover" Width="100%" Font-Size="10px" AllowSorting="True" PageSize="8">
                            </asp:GridView>
                        </div>
                        <%--                 <%  GetVerbas()%>--%>

                        <div class="modal-footer">
                            <%--<a href="#" class="btn" data-dismiss="modal">Close</a>--%>

     
                    <asp:Label ID="Label3" runat="server" Style="margin-right: 30%" Text="       "></asp:Label>
                            <a href="#" class="btn btn-primary" data-dismiss="modal">Fechar e Voltar</a>

                            <script runat="server">
                                Protected Function GetVerbas() As String
                                    Return retdet()
                                End Function
                            </script>
                        </div>
                    </div>
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

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="mapaprocessos.aspx.vb" Inherits="PortalCT.mapaprocessos" %>

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
        #scrollbar {
            overflow: auto;
            height: 450px;
        }

        #scrollbar2 {
            overflow: auto;
            height: 450px;
            width: 60%;
        }


        .gridview-container {
            margin-top: 10px;
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
                                            <asp:Label ID="Label1" class="fa fa-user fa-fw" Style="margin-left: 15%" runat="server" Text="Label" ForeColor="#339966"></asp:Label></li>
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
                                <asp:Button ID="btnMapa" runat="server" class="btn btn-info" Text="DashBoard" />
                            </div>
                        </div>
                    </div>
                    <!-- Fim Menu -->
                </div>
            </div>
            <!-- Fim Cabechalho -->

            <div style="margin-top: 8%; margin-left: 4%; text-align: center">
                <h2 class="page-header text-info">Mapas de processos</h2>
            </div>

          <div class="row" style="margin-top: 2%">
                    <div class="container">
                        <div id="scrollbar" class="panel-group col-md-4">
                            <div class="panel panel-default">
                                <div class="col-lg-4">
                                    <asp:TreeView ID="tvPastas" ImageSet="XPFileExplorer" NodeIndent="5" runat="server" OnSelectedNodeChanged="tvPastas_SelectedNodeChanged" >
                                        <Nodes>
                                            <asp:TreeNode Text="10.4.0.15\Publico\Mapa de Processos" Value="\\10.4.0.15\Publico\Mapa de Processos" ImageToolTip="XPFileExplorer"  />
                                        </Nodes>
                                    </asp:TreeView>
                                </div>
                            </div>
                        </div>

                        <div id="scrollbar2" class="panel-group col-md-6">
                            <div class="panel panel-default" style="border-color: #ffffff">
                                <asp:GridView ID="gvArquivos" runat="server" AutoGenerateColumns="false" EmptyDataText="Nenhum arquivo encontrado" 
                                    GridLines="None" ForeColor="#337AB7" Width="600px">
                                    <Columns>
                                        <asp:BoundField DataField="FileName" HeaderText="Nome do Arquivo" SortExpression="FileName" ItemStyle-Width="500px" />
                                        
                                        <asp:TemplateField >
                                            <ItemTemplate>
                                                  <asp:LinkButton runat="server" CssClass="download-link" CommandName="DownloadFile" CommandArgument='<%# Eval("FilePath") %>' OnCommand="DownloadFile_Command">
                                    <i class="fa fa-download download-icon"></i> 
                                </asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                            <asp:TemplateField >
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
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
    </form>
</body>
</html>

<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/jquery-1.12.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

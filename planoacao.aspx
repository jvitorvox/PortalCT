<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="planoacao.aspx.vb" MaintainScrollPositionOnPostback="true" Inherits="PortalCT.planoacao" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Plano de Acao</title>

    <link id="icone" rel="icon" href="imagens/favicon.ico" type="image/ico" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/custom-styles.css" rel="stylesheet" />
    <link href="css/sb-admin.css" rel="stylesheet" />
    <link href="css/morris.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <script src="js/mascara.js"></script>
    <script src="js/jquery-3.1.0.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
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
                            <label style="color: #FFFFFF; position: relative; font-family: 'Arial Black'; font-size: 28px; top: 10%;">Planos de Ação</label>
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

            <div class="row" style="margin-top: 8%">
                <div class="form-group col-md-3" style="margin-top: 3%; padding-left: 1%">
                    <asp:Label ID="Label16" runat="server" Text="Setor"></asp:Label>
                    <asp:DropDownList ID="drdDepto" CssClass="form-control" runat="server">
                        <asp:ListItem>Administrativo</asp:ListItem>
                        <asp:ListItem>Cobranca</asp:ListItem>
                        <asp:ListItem>Comercial</asp:ListItem>
                        <asp:ListItem>Contabilidade</asp:ListItem>
                        <asp:ListItem>Controladoria</asp:ListItem>
                        <asp:ListItem>Controle Operacional</asp:ListItem>
                        <asp:ListItem>Engenharia</asp:ListItem>
                        <asp:ListItem>Escritorios</asp:ListItem>
                        <asp:ListItem>Financeiro</asp:ListItem>
                        <asp:ListItem>Gestao de Pessoas</asp:ListItem>
                        <asp:ListItem>Juridico</asp:ListItem>
                        <asp:ListItem>Manutencao Comercial</asp:ListItem>
                        <asp:ListItem>Marketing</asp:ListItem>
                        <asp:ListItem>Obras</asp:ListItem>
                        <asp:ListItem>Projetos</asp:ListItem>
                        <asp:ListItem>Retencao e Quitacao</asp:ListItem>
                        <asp:ListItem>Suprimentos</asp:ListItem>
                        <asp:ListItem>Tecnologia Informacao</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-3" style="margin-top: 3%">
                    <asp:Label ID="Label15" runat="server" Text="Mes/Ano (mm/aaaa)"></asp:Label>
                    <asp:TextBox ID="txtperiodo" CssClass="form-control" runat="server" Width="84px"></asp:TextBox>
                </div>
                <div class="form-group col-md-3" style="margin-top: 3%">
                    <asp:Label ID="Label8" runat="server" Text="Ação"></asp:Label>
                    <asp:TextBox ID="txtAcao" CssClass="form-control" runat="server" Width="70px"></asp:TextBox>
                </div>
                <div class="form-group col-md-3" style="margin-top: 3%">
                    <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-success btn-circle btn-primary" Style="margin-left: 1%; margin-top: 12%" Text="Buscar" ToolTip="Buscar Plano" />
                </div>

                <div class="row" style="margin-left: 1%; margin-right: 1%; margin-top: 10%">
                    <asp:Label ID="Label10" runat="server" Text="O Que ?"></asp:Label>
                    <asp:TextBox ID="txtOque" runat="server" class="form-control" Height="150px" Width=" 80%" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                </div>

                <div class="row" style="margin-left: 1%; margin-right: 1%; margin-top: 1%">
                    <asp:Label ID="Label1" runat="server" Text="Por Que ?"></asp:Label>
                    <asp:TextBox ID="txtPorque" runat="server" class="form-control" Height="150px" Width=" 80%" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                </div>

                <div class="row" style="margin-left: 1%; margin-right: 1%; margin-top: 1%">
                    <asp:Label ID="Label2" runat="server" Text="Onde ?"></asp:Label>
                    <asp:TextBox ID="txtOnde" runat="server" class="form-control" Height="150px" Width=" 80%" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                </div>

                <div class="row" style="margin-left: 1%; margin-right: 1%; margin-top: 1%">
                    <asp:Label ID="Label3" runat="server" Text="Quando ?"></asp:Label>
                    <asp:TextBox ID="txtQuando" runat="server" class="form-control" Height="150px" Width=" 80%" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                </div>

                <div class="row" style="margin-left: 1%; margin-right: 1%; margin-top: 1%">
                    <asp:Label ID="Label4" runat="server" Text="Por Quem ?"></asp:Label>
                    <asp:TextBox ID="txtPorquem" runat="server" class="form-control" Height="150px" Width=" 80%" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                </div>

                <div class="row" style="margin-left: 1%; margin-right: 1%; margin-top: 1%">
                    <asp:Label ID="Label5" runat="server" Text="Como ?"></asp:Label>
                    <asp:TextBox ID="txtComo" runat="server" class="form-control" Height="150px" Width=" 80%" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                </div>

                <div class="row" style="margin-left: 1%; margin-right: 1%; margin-top: 1%">
                    <asp:Label ID="Label6" runat="server" Text="Quanto Horas/Produção ?"></asp:Label>
                    <asp:TextBox ID="txtQuanto" runat="server" class="form-control" Height="150px" Width=" 80%" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                    <asp:Label ID="Label7" runat="server" Text="Quanto R$"></asp:Label>
                    <asp:TextBox ID="txtValor" runat="server" class="form-control" Width="120px" ReadOnly="True"></asp:TextBox>

                </div>
                <div class="row" style="margin-left: 1%; margin-right: 1%; margin-top: 1%">
                    <asp:Label ID="Label9" runat="server" Text="Feedback"></asp:Label>
                    <asp:TextBox ID="txtfeed" runat="server" class="form-control" Height="150px" Width=" 80%" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>

                </div>
                <div class="row" style="margin-left: 1%; margin-right: 1%;">
                    <div class="form-group col-md-3" style="margin-top: 1%; padding-left: 1%">
                        <asp:Label ID="Label11" runat="server" Text="Categoria"></asp:Label>
                        <asp:DropDownList ID="drdCategoria" CssClass="form-control" runat="server">
                            <asp:ListItem>Necessita Diretoria</asp:ListItem>
                            <asp:ListItem>Processo Interno</asp:ListItem>
                            <asp:ListItem>Melhoria</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row" style="margin-left: 1%; margin-right: 1%;">
                    <div class="form-group col-md-3" style="margin-top: 1%; padding-left: 1%">
                        <asp:Label ID="Label12" runat="server" Text="Status"></asp:Label>
                        <asp:DropDownList ID="drdStatus" CssClass="form-control" runat="server">
                            <asp:ListItem>Andamento</asp:ListItem>
                            <asp:ListItem>Concluido</asp:ListItem>
                            <asp:ListItem>Indefinido</asp:ListItem>
                            <asp:ListItem>Homologacao</asp:ListItem>
                            <asp:ListItem>Pendente</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="row" style="margin-left: 1%; margin-right: 1%;">
                    <div class="form-group col-md-3" style="margin-top: 1%; padding-left: 1%">
                        <asp:Label ID="Label13" runat="server" Text="Direcionamento"></asp:Label>
                        <asp:DropDownList ID="drdDireciona" CssClass="form-control" runat="server">
                            <asp:ListItem>Abadio</asp:ListItem>
                            <asp:ListItem>Antonio</asp:ListItem>
                            <asp:ListItem>Bruno</asp:ListItem>
                            <asp:ListItem>Claudio</asp:ListItem>
                            <asp:ListItem>Diretoria</asp:ListItem>
                            <asp:ListItem>Equipe</asp:ListItem>
                            <asp:ListItem>Helton</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <br />
                <br />
                <div class="row" style="margin-bottom: 5%; margin-left: 10%">
                    <asp:Button ID="bntCancel" CssClass="btn btn-info btn-circle btn-danger" runat="server" Text="Cancelar" data-dismiss="modal" />
                    <asp:Button ID="bntsalvar" CssClass="btn btn-info btn-circle btn-primary" runat="server" Text="Salvar" />
                </div>

                <div class="col-md-6">
                </div>

            </div>

            <div class="row" style="margin-top: 2%">
                <asp:Button ID="bntFiltro" runat="server" CssClass="btn btn-success btn-primary" Style="margin-left: 3%" Text="Filtrar" ToolTip="Filtra Pelo Departamento Selecionado" />
                <div class="table-responsive" style="margin-top: 1%; margin-left: 3%; margin-right: 3%">
                    <div class="panel panel-default">
                        <asp:GridView ID="grvplanos" CssClass=" table table-striped table-bordered table-hover" runat="server" Style="max-width: 100%" Font-Size="9pt" AllowSorting="True" AutoGenerateSelectButton="True">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerSettings PageButtonCount="20" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 2%; margin-bottom: 5%">
                <div class="col-md-6">
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="365px" Width="451px">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Pie" XValueMember="Depto" YValueMembers="Total" IsValueShownAsLabel="True" Legend="Legend1"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <Area3DStyle Enable3D="True" />
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Font="Microsoft Sans Serif, 13pt, style=Bold" ForeColor="Blue" Name="Principal" Text="Departamentos"></asp:Title>
                        </Titles>
                    </asp:Chart>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IntranetctConnectionString %>" SelectCommand="select  Depto, count(*) Total FROM planoacao 
group by depto
order by depto"></asp:SqlDataSource>

                </div>

                <div class="col-md-6">
                    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Height="384px" Width="497px" Palette="Bright">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Pie" XValueMember="Depto" YValueMembers="Total" IsValueShownAsLabel="True" Legend="Legend1"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <Area3DStyle Enable3D="True" />
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Font="Microsoft Sans Serif, 13pt, style=Bold" ForeColor="Blue" Name="Principal" Text="Necessitam Diretoria"></asp:Title>
                        </Titles>
                    </asp:Chart>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IntranetctConnectionString %>" SelectCommand="select  Depto, count(*) Total FROM planoacao WHERE categoria =  'Necessita Diretoria'
group by depto
order by depto"></asp:SqlDataSource>
                    <asp:Label ID="lblValor" runat="server" Text=" " Style="color: #337ab7; position: relative; font-family: 'Arial Black'; font-size: 14px;"></asp:Label>
                </div>

                <div class="col-md-6">
                    <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Height="365px" Width="451px" Palette="None" PaletteCustomColors="0, 192, 0; Red; Yellow">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Pie" XValueMember="Categoria" YValueMembers="Quant" IsValueShownAsLabel="True" Legend="Legend1"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <Area3DStyle Enable3D="True" />
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Font="Microsoft Sans Serif, 13pt, style=Bold" ForeColor="Blue" Name="Principal" Text="Categorias"></asp:Title>
                        </Titles>
                    </asp:Chart>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IntranetctConnectionString %>" SelectCommand="select  Categoria, count(*) Quant FROM planoacao 
group by categoria
order by categoria"></asp:SqlDataSource>

                </div>

                <div class="col-md-6">
                    <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4" Height="365px" Width="451px" Palette="Bright" PaletteCustomColors="0, 192, 0; Red; Yellow">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Pie" XValueMember="Status" YValueMembers="Quant" IsValueShownAsLabel="True" Legend="Legend1"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <Area3DStyle Enable3D="True" />
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Font="Microsoft Sans Serif, 13pt, style=Bold" ForeColor="Blue" Name="Principal" Text="Status"></asp:Title>
                        </Titles>
                    </asp:Chart>

                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:IntranetctConnectionString %>" SelectCommand="select Status, count(*) Quant FROM planoacao 
group by status
order by status"></asp:SqlDataSource>

                </div>

                                <div class="col-md-6">
                    <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource5" Height="365px" Width="451px" Palette="SemiTransparent">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Pie" XValueMember="Direcionamento" YValueMembers="Quant" IsValueShownAsLabel="True" Legend="Legend1"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <Area3DStyle Enable3D="True" />
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Font="Microsoft Sans Serif, 13pt, style=Bold" ForeColor="Blue" Name="Principal" Text="Direcionamento"></asp:Title>
                        </Titles>
                    </asp:Chart>

                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:IntranetctConnectionString %>" SelectCommand="select Direcionamento, count(*) Quant FROM planoacao 
group by Direcionamento
order by Direcionamento"></asp:SqlDataSource>

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
    document.getElementById('txtperiodo').addEventListener('keyup', function (event) { formataMesAno(this, event); });

    function posicionaJanela(obj_id) {
        window.scrollTo(0, $('btnfiltro' + obj_id).position().top - 80); // negativo abaixo o campo, positivo aumenta
    }
    function GridSelectAllColumn(spanChk) {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0]; xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++) {
            if (elm[i].type === 'checkbox' && elm[i].checked != xState)
                elm[i].click();
        }
        document.body.style.cursor = 'wait'

    }

    function setespera() {
        document.body.style.cursor = 'wait';
    }

    function setnormal() {
        document.body.style.cursor = 'default';
    }

    function openModal() {
        $('#article-editor').modal('show');
        $('#MainContent.article-editor').modal('show');
        alert("Passei !!!");
    }

</script>

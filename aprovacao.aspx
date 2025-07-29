<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="aprovacao.aspx.vb" Inherits="PortalCT.aprovacao" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Grupos de Aprovação</title>

    <link id="icone" rel="icon" href="imagens/favicon.ico" type="image/ico" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/custom-styles.css" rel="stylesheet" />
    <link href="css/sb-admin.css" rel="stylesheet" />
    <link href="css/morris.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

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
                            <label style="color: #FFFFFF; position: relative; font-family: 'Arial Black'; font-size: 28px; top: 10%;">Grupos de Aprovação</label>
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

            <div class="row" style="margin-top:10%">
                <div class="col-md-6" style="margin-top: 3%">
                    <label>Grupos</label>
                    <div class="table-responsive">
                        <div class="panel panel-default">
                            <asp:GridView ID="gdvEmp" runat="server" class="table table-striped table-bordered table-hover" Width="100%" Font-Size="10px" AllowSorting="True" PageSize="15">
                                <SelectedRowStyle BackColor="#999999" />
                                <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <%--                                    <input id="chkAll" onclick="javascript:GridSelectAllColumn(this, 'chk')" runat="server" type="checkbox" value="" idproduto='<%eval("productid") %>'/>--%>
                                            <asp:CheckBox ID="chkAll" runat="server" onclick="javascript:GridSelectAllColumn(this, 'chk')" AutoPostBack="True" OnCheckedChanged="chkAll_CheckedChanged" />
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkRow" runat="server" Checked="False" OnCheckedChanged="chkRow_CheckedChanged" AutoPostBack="True" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>

                <br />
                <br />

                <div class="col-md-6">
                    <label>Aprovadores</label>
                    <div class="table-responsive">
                        <div class="panel panel-default">
                            <asp:GridView ID="gdvcc" runat="server" class="table table-striped table-bordered table-hover" Width="100%" Font-Size="10px" PageSize="8">
                                <SelectedRowStyle BackColor="#999999" />
                            </asp:GridView>
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

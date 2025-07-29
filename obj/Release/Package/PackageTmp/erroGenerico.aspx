<%@ Page Title="" Language="vb" AutoEventWireup="false" CodeBehind="erroGenerico.aspx.vb" Inherits="PortalCT.erroGenerico" %>


<html>
<head runat="server">
 <title>Erro</title>
    <link id="Link2" rel="icon" href="imagens/favicon.ico" type="image/ico" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/custom-styles.css" rel="stylesheet" />

    <script src="js/jquery-3.1.0.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large; font-weight: 700;" class="auto-style20">
            <div class="row" style="position: relative; text-align: center; clip: rect(auto, auto, 10%, auto)">
                <div class="col-lg-12 " style="background-color: #337ab7; height: 90px">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/imagens/logo_branco.png" ImageAlign="Left" />
                    <label style="color: #FFFFFF; position: relative; font-family: 'Arial Black'; font-size: 28px; top: 10%">Informação</label>
                </div>
            </div>
        </div>
<h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    <h1 class="auto-style2">Ocorreu perda de conexão ou tempo de Inatividade expirado!!</h1>
        <p>&nbsp;</p>
        <p class="auto-style3">Por favor clique no botao&nbsp; abaixo para entrar novamente. Se o problema persistir entre em contato com a Ti&nbsp; <a href="mailto:sistemas.ti@casaeterra.com">sistemas.ti@casaeterra.com</a></p>
        <p>&nbsp;</p>
       

        <div class ="text-center">
         <asp:Button ID="bntSalvar" runat="server" class="btn btn-info btn-circle btn-primary" Text="Entrar" />
        </div>

    </form>
       



</body>
</html>



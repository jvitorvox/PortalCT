<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Async="true" Inherits="PortalCT._default1" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Conecte-se</title>
    <style>
        /* Reset básico */
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
            /* overflow: hidden; */ /* Recomendo manter isso comentado para depuração inicial */
        }

        /* BACKGROUND APLICADO NO HTML */
        /*    html {
        background: url('imagens/background2.png') no-repeat center center fixed;
        background-size:  cover;
    }*/

        body {
            background: url('imagens/background2.png') no-repeat top center fixed;
            background-size: cover;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            min-height: 100vh;
            color: #fff;
            position: relative;
        }

        #form1 {
            width: 100%;
            height: 100%; /* Permite que o form ocupe o espaço disponível */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1;
        }

        .container {
            display: flex;
            flex-direction: row;
            width: 90%;
            max-width: 1200px;
            height: 70vh;
            border-radius: 8px;
            overflow: hidden;
            margin-top: 5%;
            /*box-shadow: 0 0 25px rgba(0, 0, 0, 0.4);*/
            /*box-sizing: border-box;*/
        }

        .left-panel {
            flex: 0 0 60%;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            text-align: left;
            background-color: transparent;
            box-sizing: border-box;
            color: #fff;
            border: none !important; /* Remove as bordas do painel esquerdo */
            outline: none !important;
            box-shadow: none !important;
        }

            .left-panel h1 {
                font-size: 2.5em;
                margin-bottom: 15px;
                color: #4169E1;
                text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
            }

        .login-panel {
            flex: 0 0 40%;
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 8px;
            border: 1px solid rgba(0, 0, 0, 0.1);
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            justify-content: center;
            color: #333;
            box-sizing: border-box;
            z-index: 1;
        }

        /* Ajuste para o logo "Casa & Terra Empreendimentos" dentro do painel de login */
        .logo-grupo {
            text-align: center;
            margin-top: 30px;
            padding-bottom: 10px;
        }

            .logo-grupo img {
                max-width: 100%;
                height: auto;
            }

        /* CABEÇALHO SUPERIOR (LOGOS "EMPREENDIMENTOS" E "C&T") */
        .top-header {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 5%;
            color: #fff;
            z-index: 100;
            box-sizing: border-box;
        }

            .top-header .logo-left {
                font-size: 1.2em;
                font-weight: bold;
            }

            .top-header .logo-right img {
                height: 40px;
            }

        /* Estilos do MODAL DO PDF */
        .pdf-modal-overlay {
            display: none; /* Oculto por padrão */
            position: fixed; /* Fixado na viewport */
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7); /* Fundo escuro semi-transparente */
            justify-content: center; /* Centraliza horizontalmente */
            align-items: center; /* Centraliza verticalmente */
            z-index: 1000; /* Garante que o modal fique acima de todo o conteúdo */
        }

        .pdf-modal-content {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            width: 90%; /* Largura do conteúdo do modal */
            max-width: 900px; /* Largura máxima para telas grandes */
            height: 90%; /* Altura do conteúdo do modal */
            max-height: 90vh; /* Altura máxima para não estourar a tela */
            display: flex;
            flex-direction: column;
            overflow: hidden; /* Para garantir que o iframe não estoure */
        }

        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #eee;
            padding-bottom: 10px;
            margin-bottom: 10px;
            color: #333; /* Cor do texto do cabeçalho do modal */
        }

            .modal-header h3 {
                margin: 0;
                font-size: 1.2em;
            }

        .close-button {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
            transition: color 0.3s;
        }

            .close-button:hover,
            .close-button:focus {
                color: #333;
            }

        .pdf-iframe {
            width: 100%;
            flex-grow: 1; /* Faz o iframe ocupar o espaço restante */
            border: none;
            height: 100%; /* Garante que o iframe preencha o espaço disponível */
        }

        .modal-footer {
            border-top: 1px solid #eee;
            padding-top: 10px;
            margin-top: 10px;
            text-align: center;
        }

        /* Estilos dos botões existentes (btn-primary) */
        .btn-primary {
            width: 100%;
            padding: 12px;
            background-color: #dc3545;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.1em;
            margin-top: 20px;
            text-decoration: none; /* Garante que não tenha sublinhado se for link */
            display: inline-block; /* Para que margin-top/bottom funcione em botões de footer */
        }

            .btn-primary:hover {
                background-color: #c82333;
            }

        /* Demais estilos (form-group, forgot-password, success-message, etc.) */
        .login-panel h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #007bff;
        }

        .form-group {
            margin-bottom: 20px;
        }

            .form-group input[type="text"],
            .form-group input[type="password"] {
                width: calc(100% - 20px);
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

        .forgot-password {
            text-align: center;
            margin-top: 15px;
        }

            .forgot-password a {
                color: #007bff;
                text-decoration: none;
            }

                .forgot-password a:hover {
                    text-decoration: underline;
                }

        .pdf-viewer-container { /* Este bloco é do seu código antigo, pode ser removido agora se não for mais usado */
            display: none;
        }

        .success-message {
            color: green;
            text-align: center;
            margin-bottom: 15px;
        }
    </style>

    <link id="Link2" rel="icon" href="imagens/favicon.ico" type="image/ico" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/custom-styles.css" rel="stylesheet" />
    <link href="css/sb-admin.css" rel="stylesheet" />
    <link href="css/morris.css" rel="stylesheet" />

    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

    <script src="js/jquery-3.1.0.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="JS/mascara.js" type="text/javascript"></script>
</head>
<body>
    <div class="top-header">
        <div class="logo-right">
            <%--            <img src="imagens/logo_casa_terra_ct.png" alt="C&T Logo" /> --%>
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="left-panel" style="margin-top: 0%">
                <%--                <h1>Construindo historias, desenvolvendo pessoas, transformando cidades.</h1>--%>
            </div>
            <div class="login-panel">
                <h2>Conecte</h2>
                <div class="form-group">
                    <asp:TextBox ID="txtusuario" runat="server" placeholder="Insira seu Usuario"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" placeholder="Senha"></asp:TextBox>
                </div>

                <div class="success-message">
                    <asp:Label ID="lblSuccessMessage" runat="server" Text="Sucesso!" Visible="false"></asp:Label>

                    <asp:Button ID="btnEntrar" runat="server" Text="ENTRAR" CssClass="btn-primary" BackColor="#C63527" OnClick="btnEntrar_Click" />

                </div>
                <div class="forgot-password">
                    <%--  <asp:LinkButton ID="lnkEsqueciSenha" runat="server" Text="Esqueci minha senha" OnClick="lnkEsqueciSenha_Click"></asp:LinkButton>--%>
                </div>

                <div class="logo-grupo">
                    <img src="imagens/logo.png" alt="Casa & Terra Empreendimentos" style="width: 150px;" />
                </div>

                <asp:Button ID="btnShowPdf" runat="server" Text="Ver Politica de Segurança PDF" CssClass="btn-primary" BackColor="#C63527" OnClientClick="openPdfModal(); return false;" />

                <%-- <div id="pdfViewerContainer" class="pdf-viewer-container">
                    <iframe id="pdfFrame" src=""></iframe>
                </div> --%>
            </div>
        </div>
    </form>

    <div id="pdfModal" class="pdf-modal-overlay">
        <div class="pdf-modal-content">
            <div class="modal-header">
                <h3>Documento PDF</h3>
                <span class="close-button" onclick="closePdfModal()">&times;</span>
            </div>
            <iframe id="pdfFrame" src="" class="pdf-iframe"></iframe>
            <div class="modal-footer">
                <button class="btn-primary" onclick="closePdfModal()">Voltar</button>
            </div>
        </div>
    </div>
    <script>
        // Função para abrir o modal do PDF
        function openPdfModal() {
            var pdfModal = document.getElementById('pdfModal');
            var pdfFrame = document.getElementById('pdfFrame');

            pdfFrame.src = 'documentos/Politica de Seguranca da Informacao 2025.pdf'; // Certifique-se de que este caminho está correto
            pdfModal.style.display = 'flex'; // Exibe o modal
        }

        // Função para fechar o modal do PDF
        function closePdfModal() {
            var pdfModal = document.getElementById('pdfModal');
            var pdfFrame = document.getElementById('pdfFrame');

            pdfFrame.src = ''; // Limpa o src do iframe para parar o carregamento do PDF
            pdfModal.style.display = 'none'; // Oculta o modal
        }
    </script>
</body>
</html>


<script type="text/javascript">
    //<![CDATA[

    document.getElementById('txtdata').addEventListener('keyup', function (event) { formataData(this, event); });
    document.getElementById('txtvlorcado').addEventListener('keyup', function (event) { formataDouble(this, event); });
    document.getElementById('txtvalincial').addEventListener('keyup', function (event) { formataDouble(this, event); });
    document.getElementById('txtvalorfinal').addEventListener('keyup', function (event) { formataDouble(this, event); });


    function mascara_data(campo) {
        if (campo.value.length == 2) { campo.value += '/'; } if (campo.value.length == 5) { campo.value += '/'; }
    };

    $('#drdtipo').change(function () {
        var selectedVal = $('#drdtipo option:selected').attr('value');
        $(function () {
            $('#txtcontrole').val(selectedVal)
        });
    });


    function openModal() {
        $('#myModal').modal('show');
    };

    function alertBootstrap(msg, tipo, func_depois) {
        var tempo = 2000;
        tipo = tipo || "alert-success";

        var $msg = $(document.createElement('div')).css({
            position: "fixed",
            "font-size": "large",
            top: "40%", left: "50%",
            transform: "translateX(-50%)",
            "z-index": 99999999999,
            display: "none"
        }).addClass("alert " + tipo).html(msg).appendTo($("body"));

        $msg.slideDown(300).delay(tempo).slideUp(300, function () { typeof func_depois === 'function' ? func_depois() : null; });
        // $msg.slideDown(500).delay(tempo).slideUp(500);
    };

</script>

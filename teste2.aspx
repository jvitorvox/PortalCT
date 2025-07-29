<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="teste2.aspx.vb" Inherits="PortalCT.teste2" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teste de Fundo</title>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        body {
            background: url('imagens/background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }

        .mensagem {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 40px;
            border-radius: 10px;
            font-size: 24px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="mensagem">
            Imagem de fundo carregada com sucesso!
        </div>
    </form>
</body>
</html>



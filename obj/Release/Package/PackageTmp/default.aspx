<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Async="true" Inherits="PortalCT._default1" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link id="Link2" rel="icon" href="imagens/favicon.ico" type="image/ico" />
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/custom-styles.css" rel="stylesheet" />


</head>
<body>
    <form id="form1" runat="server">
 	<!-- Pagina container -->
    <div class="container">
		<!-- Cabechalho -->
		<div class="header">
        <div class="navbar-fixed-top">
            <div style="font-weight: 700;" class="auto-style20">
                <div class="row" style="position: relative; text-align: center; clip: rect(auto, auto, 10%, auto)">
                    <div class="col-lg-12 " style="background-color: #337ab7; padding-top: 2%; padding-bottom: 1%; height: 8em">
						
						<!-- Imagem -->
                        <a href="#"><img id="Image1" src="imagens/logo_branco.png"  /></a>
						<!-- Fim Imagem -->
						
						<!-- Titulo -->
                        <!-- <label style="color: #FFFFFF; position: relative; font-family: 'Arial Black'; font-size: 28px; top: 10%; left: -10%">Bem Vindo ao Portal Casa & Terra</label> -->
						<!-- Fim Titulo -->
                    </div>
                </div>
            </div>
        </div>
		</div>
		<!-- Fim Cabechalho -->
		
		<!-- Meio -->
		<div class="jumbotron caixa-login" style="margin-top:9%;width:40%;position:relative;left:30%">
        <div class="row">
            <div class="col-lg-12 login-customizado" >

                <!-- Conteudo -->
	
				<div class="login-panel panel panel-default">
					<div class="panel-heading" style="background-color:#f5f5f5; padding-bottom: 2%">
						<h3 class="panel-title"  ><center>Usuário e Senha do Protheus</center></h3>
					</div>
					<div class="panel-body">

						<fieldset>
							<div class="form-group">
<%--								<input class="form-control" placeholder="Usuario" name="usuario" type="text" />--%>
                                <asp:TextBox ID="txtusuario" class="form-control" runat="server" placeholder="Usuario"></asp:TextBox>
								
							</div>
							<div class="form-group">
<%--								<input class="form-control" placeholder="Password" name="password" type="password" value="" />--%>
                                <asp:TextBox ID="txtsenha" class="form-control" runat="server" placeholder="Senha" type="password"></asp:TextBox>
							</div>
                            <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-lg btn-info btn-block" />
						</fieldset>

					</div>
				</div>
                
      
				<!-- Fim Conteudo -->
            </div>
        </div>
		</div>
		<!-- Fim Meio -->

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
	<!-- Fim Pagina container -->








    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery-3.1.0.min.js"></script>


<script type="text/javascript">
    //<![CDATA[
   
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



    </form>
</body>
</html>

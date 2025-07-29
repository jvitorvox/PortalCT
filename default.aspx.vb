Imports System.Web.Security
Public Class _default1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Button1.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        Dim usuario As String
        Dim acessos As String
        Dim cCookie = Request.Cookies(FormsAuthentication.FormsCookieName)

        If cCookie IsNot Nothing Then
            If (cCookie.Name = ".CASAETERRA") Then

                Dim ticket = FormsAuthentication.Decrypt(cCookie.Value)

                usuario = ticket.Name
                acessos = ticket.UserData

                Response.Redirect(FormsAuthentication.GetRedirectUrl(txtusuario.Text, False))

            End If
        End If
    End Sub
    Protected Sub btnEntrar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnEntrar.Click
        ' Aqui você adicionaria sua lógica de validação de login

        Dim senha As String = txtSenha.Text
        If Page.IsValid Then
            Dim wident As String = txtusuario.Text.Trim
            Dim wpass As String = txtSenha.Text.Trim
            Dim wtoken As String = "9e6b668bf84f6b99952e2f2feaa8bfbda02ec4c0"
            Dim urls As Array
            Dim WsOK As Boolean
            Dim autoriza As String = ""
            Dim Acessos As String = ""
            Dim Permissoes As String = ""
            Dim erro As String

            'Dim servicoP As wsprotheus.ServiceSoapClient = New wsprotheus.ServiceSoapClient
            'Dim retorno As wsprotheus.AURLACCESLIST = New wsprotheus.AURLACCESLIST
            Dim servicoV As WebserviceVB.loginSoapClient = New WebserviceVB.loginSoapClient

            Try

                'retorno = servicoP.GetUrls(wident, wpass, wtoken)
                autoriza = servicoV.loginad(wident, wpass)
                ' WsOK = retorno.LSTATUS

                If autoriza = "OK" Then
                    lblSuccessMessage.Text = "Login bem-sucedido!"
                    lblSuccessMessage.Visible = True
                    Permissoes = servicoV.getpermissoes(wident)
                    Session("logado") = True
                    Session("usuario") = txtusuario.Text
                    Session("urls") = Permissoes

                    'verifica  os acessos 

                    Acessos = Permissoes.Trim

                    FormsAuthentication.Initialize()

                    'Definimos quanto tempo o usuário irá permanecer logado após deixar o site sem efetuar o logout
                    Dim fat As FormsAuthenticationTicket = New FormsAuthenticationTicket(1,
                                                                                        txtusuario.Text, DateTime.Now,
                                                                                        DateTime.Now.AddMinutes(30), False,
                                                                                        Acessos,
                                                                 FormsAuthentication.FormsCookiePath)

                    Response.Cookies.Add(New HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(fat)))
                    Response.Redirect(FormsAuthentication.GetRedirectUrl(txtusuario.Text, True))
                    'Response.Redirect("dashboard.aspx")
                Else
                    lblSuccessMessage.Text = "Usuário ou Senha inválidos!"
                    lblSuccessMessage.Visible = True
                    erro = "Acesso não Autorizado !!!!"
                    Response.Write("<script>window.addEventListener('load', function(){ alertBootstrap('" & erro & "','alert-danger'); });</script>")
                    'lblOk.Text = "Acesso não Autorizado"
                End If

            Catch ex As Exception
                Response.Write("<script>window.addEventListener('load', function(){ alertBootstrap('" & ex.Message & "','alert-danger'); });</script>")
                'txtErro.Text = ex.Message
            End Try

        End If
    End Sub

End Class
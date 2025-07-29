Public Class erroGenerico
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' Dim generalErrorMsg As String = "Ocorreu um problema na aplicação web. Tente novamente. " + "Se o ocorre persistir contacte o suporte técnico."
        ' Dim httpErrorMsg As String = "Ocorreu um erro HTTP. Página não encontrada. Tente novamente."
        ' Dim unhandledErrorMsg As String = "O erro não foi tratado pelo código da aplicação."

        ' Determina onde o erro foi tratado
        'Dim errorHandler__1 As String = Request.QueryString("handler")
        'If errorHandler__1 Is Nothing Then
        ' errorHandler__1 = "Error Page"
        ' End If

        ' pegao ultimo erro do servidor.
        'Dim ex As Exception = Server.GetLastError()
        ' Pega o numero do erro passado como um valor querystring 
        'Dim errorMsg As String = Request.QueryString("msg")


    End Sub

    Protected Sub bntSalvar_Click(sender As Object, e As EventArgs) Handles bntSalvar.Click
        Response.Redirect("http:\\portalct.casaeterra.com")
    End Sub
End Class
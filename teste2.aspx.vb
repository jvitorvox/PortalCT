Imports System.Text.RegularExpressions
Imports System.Net
Imports System.Data.SqlClient
Public Class teste2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim resposta As String = ""
        Dim usuario As String = ""
        Dim codusu As String = ""
        Dim acessos As String = ""

        usuario = Session("usuario")
        acessos = Session("urls")


    End Sub


    Private Sub _default_Error(sender As Object, e As EventArgs) Handles Me.[Error]
        'HttpContext.Current.Response.Redirect("erroGenerico.aspx")
        'Response.Redirect("http:\\portalct.casaeterra.com")

    End Sub



End Class
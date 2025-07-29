Imports System.IO
Public Class galeria
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim di = New DirectoryInfo(Server.MapPath("~/eventos/"))
            Dim subpastas As Array = di.GetDirectories()
            For index As Integer = 0 To subpastas.Length - 1
                drdEvento.Items.Add(subpastas(index).ToString)
            Next
            Mostrafotos()
        End If
    End Sub

    Private Sub drdEvento_SelectedIndexChanged(sender As Object, e As EventArgs) Handles drdEvento.SelectedIndexChanged
        Mostrafotos()
    End Sub

    Private Sub Mostrafotos()

        Dim pasta As String = "~/eventos/" + drdEvento.Text.Trim + "/"
        Dim pastas As Array = Directory.GetDirectories(Server.MapPath("~/eventos/"))
        '        Dim filePaths() As String = Directory.GetFiles(Server.MapPath("~/Imagens/"))
        Dim filePaths() As String = Directory.GetFiles(Server.MapPath(pasta))

        Dim files As List(Of ListItem) = New List(Of ListItem)
        For Each filePath As String In filePaths
            Dim fileName As String = Path.GetFileName(filePath)
            'files.Add(New ListItem(fileName, ("Imagens/" + fileName)))
            files.Add(New ListItem(fileName, ("eventos/" + drdEvento.Text.Trim + "/" + fileName)))
        Next

        Repeater1.DataSource = files
        Repeater1.DataBind()

    End Sub

End Class
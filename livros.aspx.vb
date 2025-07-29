Imports System
Imports System.Collections
Imports System.Collections.Generic
Imports System.Configuration
Imports System.IO.Directory
Imports System.IO
Imports System.Linq
Imports System.Text.RegularExpressions
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Net.WebRequestMethods

Public Class livros
    Inherits System.Web.UI.Page
    Protected retornaGrp As String
    Public pathLivros As String
    Private query As IEnumerable
    Private lstGrupos As ListBox = New ListBox()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        pathLivros = Server.MapPath("/livros")
        ShowFilesIn(pathLivros)
    End Sub
    Private Sub ShowFilesIn(ByVal dir As String)
        Dim dirInfo As DirectoryInfo = New DirectoryInfo(dir)
        Dim arquivos As String() = Directory.GetFiles(HttpUtility.HtmlDecode(dir), "*", SearchOption.TopDirectoryOnly)
        Dim r As Regex = New Regex("\-[^\}]+?\.pdf")
        Dim Autor As Match
        Dim NomeArquivo As String
        Dim query = From files In arquivos Let file = New FileInfo(files) Select New With {.NomeArquivo = file.Name, .Autor = r.Match(file.Name)}

        Repeater1.DataSource = query
        Repeater1.DataBind()

    End Sub
    Protected Sub DownloadFile(ByVal sender As Object, ByVal e As EventArgs)
        Dim arquivo As String = TryCast(sender, LinkButton).CommandArgument
        Dim filePath As String = Server.MapPath(String.Format("~/Livros/{0}", arquivo))
        Response.ContentType = "application/pdf"
        Response.AppendHeader("Content-Disposition", "attachment; filename=" & arquivo)
        Response.WriteFile(filePath)
        Response.Flush()
        Response.[End]()
    End Sub

    Protected Sub gvDirs_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim lb As LinkButton = CType(e.Row.FindControl("lbSelecionar"), LinkButton)
            e.Row.Attributes.Add("onClick", Page.ClientScript.GetPostBackEventReference(lb, ""))
        End If
    End Sub
    Protected Sub Button2_ServerClick(ByVal sender As Object, ByVal e As EventArgs)
        If System.IO.Directory.GetParent(pathLivros) IsNot Nothing Then
            Dim newDir As String = Directory.GetParent(pathLivros).FullName
            pathLivros = newDir
            ShowFilesIn(newDir)
        End If
    End Sub


End Class
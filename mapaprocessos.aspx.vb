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

Public Class mapaprocessos
    Inherits System.Web.UI.Page
    Protected retornaGrp As String
    Public pathLivros As String
    Private query As IEnumerable
    Private lstGrupos As ListBox = New ListBox()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If Not IsPostBack Then
                PopulateRootNode()
            End If
        End If
    End Sub

    Protected Sub tvPastas_SelectedNodeChanged(sender As Object, e As EventArgs) Handles tvPastas.SelectedNodeChanged
        Dim selectedNode As TreeNode = tvPastas.SelectedNode

        If selectedNode IsNot Nothing Then
            Dim selectedPath As String = selectedNode.Value
            ListarArquivos(selectedPath)

            ' Popula os subnós da árvore quando um nó é selecionado (se necessário)
            If selectedNode.ChildNodes.Count = 0 Then
                PopulateSubFolders(selectedNode)
            End If
        End If
    End Sub

    Private Sub PopulateRootNode()
        Dim rootNode As TreeNode = tvPastas.Nodes(0)
        PopulateSubFolders(rootNode)
    End Sub

    Private Sub PopulateSubFolders(parentNode As TreeNode)
        Dim parentPath As String = parentNode.Value
        Try
            Dim subFolders As String() = Directory.GetDirectories(parentPath)

            For Each subFolder As String In subFolders
                Dim newNode As New TreeNode(Path.GetFileName(subFolder), subFolder)
                parentNode.ChildNodes.Add(newNode)
            Next
        Catch ex As UnauthorizedAccessException
            parentNode.ChildNodes.Add(New TreeNode($"Erro de acesso: {ex.Message}"))
        Catch ex As Exception
            parentNode.ChildNodes.Add(New TreeNode($"Erro: {ex.Message}"))
        End Try
    End Sub

    Private Sub ListarArquivos(folderPath As String)
        Try
            Dim files As String() = Directory.GetFiles(folderPath)

            Dim fileData = files.[Select](Function(filePath) New With {
            .FileName = Path.GetFileName(filePath),
            .FileSize = New FileInfo(filePath).Length,
            .FilePath = filePath
        })

            gvArquivos.DataSource = fileData
            gvArquivos.DataBind()
        Catch ex As UnauthorizedAccessException
            gvArquivos.EmptyDataText = $"Erro de acesso: {ex.Message}"
            gvArquivos.DataBind()
        Catch ex As Exception
            gvArquivos.EmptyDataText = $"Erro: {ex.Message}"
            gvArquivos.DataBind()
        End Try
    End Sub

    Protected Sub DownloadFile_Command(sender As Object, e As CommandEventArgs)
        Dim filePath As String = e.CommandArgument.ToString()
        Response.ContentType = "application/octet-stream"
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath))
        Response.TransmitFile(filePath)
        Response.[End]()
    End Sub




End Class
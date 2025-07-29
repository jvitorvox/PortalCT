Imports System.Text.RegularExpressions
Imports System.Net
Imports System.Data.SqlClient
Public Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Master.MudarLabel("Portal Casa & Terra")
        Dim resposta As String = ""
        Dim usuario As String = ""
        Dim codusu As String = ""
        Dim acessos As String = ""

        usuario = Session("usuario")
        acessos = Session("urls")

        Me.Master.habilitarbnt()
        pesqAvisos()

    End Sub

    Private Sub _default_Error(sender As Object, e As EventArgs) Handles Me.[Error]
        'HttpContext.Current.Response.Redirect("erroGenerico.aspx")
        'Response.Redirect("http:\\portalct.casaeterra.com")

    End Sub

    'Private Sub ImgGaleria_Click(sender As Object, e As ImageClickEventArgs) Handles ImgGaleria.Click
    '    Response.Redirect("galeria.aspx")
    'End Sub

    'Protected Sub ImgUau_Click(sender As Object, e As ImageClickEventArgs) Handles ImgUau.Click
    '    Response.Redirect("http://portalct.casaeterra.com/projetouau")
    'End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("livros.aspx")
    End Sub


    Private Sub pesqAvisos()
        Dim csql As String = "SELECT Informacao as [Informações],
CASE prioridade
 When 'Baixa' THEN 0  
 When 'Alta' THEN 2  
 When 'Media' THEN 1  
 WHEN 'Critica' THEN 3 
 WHEN 'Baixa' THEN 0 
 Else 4 
 End As  Prioridade 
 FROM INFORME WHERE STATUS = 'Ativo'  AND SETOR = 'T' 
 ORDER BY Prioridade DESC "


        Dim conexaoBD = New SqlConnection(My.Settings.conexaobancoTI)
        Dim command As SqlCommand = New SqlCommand(csql, conexaoBD)
        Dim dr As SqlDataReader
        Dim dt As New DataTable
        conexaoBD.Open()
        dr = command.ExecuteReader
        dt.Load(dr)
        GridView1.DataSource = dt
        GridView1.DataBind()
        conexaoBD.Close()
    End Sub

    Private Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound

        'Verifica Then se é linha de dados
        If (e.Row.RowType = DataControlRowType.DataRow) Then

            '//Verifica se o texto da 2 coluna é igual a "Critica"
            If (e.Row.Cells(1).Text.Trim = "3") Then
                e.Row.BackColor = System.Drawing.Color.Black
                e.Row.ForeColor = System.Drawing.Color.White


            ElseIf (e.Row.Cells(1).Text.Trim = "2") Then
                e.Row.BackColor = System.Drawing.Color.Red
                e.Row.ForeColor = System.Drawing.Color.White

            ElseIf (e.Row.Cells(1).Text.Trim = "1") Then
                e.Row.BackColor = System.Drawing.Color.Orange
                e.Row.ForeColor = System.Drawing.Color.White

            Else
                e.Row.BackColor = System.Drawing.Color.White
                e.Row.ForeColor = System.Drawing.Color.Black

            End If
            e.Row.Cells(1).Visible = False

        End If

    End Sub

    Private Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("acionamento.aspx")
    End Sub

    Private Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("mapaprocessos.aspx")
    End Sub
End Class
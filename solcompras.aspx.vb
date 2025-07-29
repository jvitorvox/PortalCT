Imports System.Web.Services
Imports System.Data
Imports System.Data.SqlClient
Imports System.Globalization
Imports System.IO
Imports System.Net.NetworkInformation
Imports System.Timers
Imports System.Drawing
Imports System
Imports System.Windows
Public Class solcompras
    Inherits System.Web.UI.Page

    Shared filacesso As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            Dim usuario As String = ""
            filacesso = ""
            'usuario = Session("usuario")
            'lbluser.Text = " " + RTrim(Session("usuario"))
            ''            lbluser.Text = "alexander.valerio"
            If lbluser.Text.Trim = "" Then
                lbluser.Text = "Guest"
                filacesso = "@@@@"
            Else
                filacesso = acesso()
            End If
            ' verifica se  é acesso full e habilita pedido
            If filacesso.Contains("@@@@") Then
                lblpedido.Visible = True
                txtpedido.Visible = True
            Else
                lblpedido.Visible = False
                txtpedido.Visible = False
                txtpedido.Text = Nothing
            End If


            ' atualiza()
        End If

    End Sub

    Private Function acesso() As String
        Dim wfiliais As String = ""
        Dim conexaoBD = New SqlConnection(My.Settings.conexaobanco)
        Dim sqlcomando As String = " Select DISTINCT
                                STUFF(( SELECT ','+ B.ZK_FILACE FROM SZK010 B
			                    WHERE ISNULL(B.ZK_USER, '') = ISNULL(A.ZK_USER, '') FOR XML PATH('')),1,1,'') AS FILIAIS
                                From SZK010 A
                                Where ZK_USER = '" + lbluser.Text.Trim + "' 
                                And A.D_E_L_E_T_ = ' '"

        Dim command As SqlCommand = New SqlCommand(sqlcomando)
        Dim dr As SqlDataReader
        Dim dt As New DataTable
        command.Connection = conexaoBD

        conexaoBD.Open()
        dr = Command.ExecuteReader
        Dim dt12 As New DataTable
        dt12.Load(dr)
        If dt12.Rows.Count > 0 Then
            wfiliais = dt12.Rows(0)(0).ToString
        Else
            wfiliais = ""
        End If
        conexaoBD.Close()
        Return wfiliais

    End Function
    Private Sub atualiza()
        Dim dtfi As String = ""
        Dim dtin As String = ""
        Dim conexaoBD = New SqlConnection(My.Settings.conexaobanco)
        Dim sqlcomando As String = " Select  * FROM (
            SELECT ISNULL(F1_STATUS,' ') STATUS,C7_XFILIAL FILIAL, C1_NUM SOLICITACAO,Convert(varchar(10),CONVERT(date,C1_EMISSAO,106),103) DATA,C1_PRODUTO PRODUTO,C1_DESCRI DESCRICAO,
            C7_NUM PEDIDO, Convert(varchar(10),CONVERT(date,C7_DATPRF,106),103)  DT_ENTREGA,  D1_DOC DOC_ENT,D1_SERIE SERIE,Convert(varchar(10),CONVERT(date,C7_XDTPAG,106),103) PREVISAO,C7_XSTATUS SITUACAO,C7_QTDACLA,C1_APROV APROV,
            (SELECT	COUNT(CR_NUM) FROM SCR010 SCR WHERE SCR.D_E_L_E_T_ 	= '' AND SCR.CR_FILIAL 	= '  ' 	 AND SCR.CR_NUM = C7.C7_NUM  AND SCR.CR_STATUS <> '03' AND SCR.CR_STATUS <> '04') APROVADORES 
            FROM  SC1010 C1
                LEFT JOIN SC7010 C7 ON C1.C1_NUM = C7.C7_NUMSC AND C1.C1_ITEM =C7.C7_ITEMSC AND C1.C1_PRODUTO = C7.C7_PRODUTO AND C7.D_E_L_E_T_ = ' '
                LEFT JOIN SD1010 D1 ON D1.D1_PEDIDO = C7.C7_NUM AND D1.D1_ITEMPC =C7.C7_ITEM AND D1.D1_COD = C7.C7_PRODUTO   AND D1.D_E_L_E_T_ = ' '
                LEFT JOIN SF1010 F1 ON F1.F1_DOC = D1.D1_DOC AND F1.F1_SERIE =D1.D1_SERIE AND F1.F1_FORNECE= D1.D1_FORNECE   AND F1.D_E_L_E_T_ = ' ' 
            WHERE  C1.D_E_L_E_T_ = ' '"
        'verificando se o usuario nao é  adminstrador
        If Not filacesso.Contains("@@@@") Then
            If filacesso.Trim = "" Then
                sqlcomando = sqlcomando + " And C1_SOLICIT = '" + lbluser.Text.Trim + "' "
            Else
                sqlcomando = sqlcomando + " And C1_XFILIAL in (" + filacesso.Trim + ") "
            End If

        End If
        sqlcomando = sqlcomando + " And C1_FILIAL = '    ' "
        If txtpedido.Text.Trim = "" Then
            If txtdt1.Text.Trim <> "" Or txtdt2.Text.Trim <> "" Then
                dtin = Right(txtdt1.Text, 4) + txtdt1.Text.Substring(3, 2) + Left(txtdt1.Text, 2)
                dtfi = Right(txtdt2.Text, 4) + txtdt2.Text.Substring(3, 2) + Left(txtdt2.Text, 2)
                sqlcomando = sqlcomando + "And C1_EMISSAO BETWEEN '" + dtin + "' AND '" + dtfi + "' "
            End If
            If Not chkBloq.Checked Then
                sqlcomando = sqlcomando + "And C1_APROV <> 'B' "
            End If
        Else
            sqlcomando = sqlcomando + "And C7_NUM = '" + txtpedido.Text.Trim + "' "
        End If
        sqlcomando = sqlcomando + " ) SOLICITACOES "
        If Not chktotodos.Checked Then
            sqlcomando = sqlcomando + " WHERE STATUS <> 'A'  "
        End If

        sqlcomando = sqlcomando + "ORDER BY  SOLICITACAO"
        Dim command As SqlCommand = New SqlCommand(sqlcomando)
        Dim dr As SqlDataReader
        Dim dt As New DataTable

        command.Connection = conexaoBD

        conexaoBD.Open()
        dr = command.ExecuteReader
        Dim dt12 As New DataTable
        dt12.Load(dr)
        If dt12.Rows.Count > 0 Then
            lblmens.Text = ""
        Else
            lblmens.Text = "Não Foram Encontradas Solicitações para Usuario !!!"

        End If
        grdcompras.DataSource = dt12
        grdcompras.DataBind()
        Cache("dtn") = dt12
        'The first sorting combination saved here
        ViewState("Column_Name") = "SOLICITACAO"
        ViewState("Sort_Order") = "ASC"
        conexaoBD.Close()

    End Sub
    Private Sub grdcompras_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles grdcompras.RowDataBound
        Dim strimageurl As String = "imagens/Yelow.jpg"
        Dim decodedText1 As String
        Dim endimage As String

        ' verifica se  a linha é de dados e tem todas as colunas
        If e.Row.Cells.Count > 1 Then
            ' Verifica  coluna Status
            endimage = "<img src=Imagens/branco.png />"
            If e.Row.Cells(1).Text.Trim <> "STATUS" And e.Row.Cells(3).Text.Trim <> "" Then
                e.Row.Cells(12).Font.Size = "8"
                e.Row.Cells(1).HorizontalAlign = HorizontalAlign.Center
                e.Row.Cells(1).VerticalAlign = VerticalAlign.Middle
                'verifica se tem alguma celular com "&nbsp;" (null)
                For b As Integer = 1 To 13
                    If e.Row.Cells(b).Text.Trim = "&nbsp;" Then
                        e.Row.Cells(b).Text = ""
                    End If
                Next


                If e.Row.Cells(1).Text.Trim = "A" Then  'Classificado
                    e.Row.Cells(12).Text = "Classificado"
                    endimage = "<img src=Imagens/verde.png />"
                ElseIf e.Row.Cells(1).Text.Trim = "" And e.Row.Cells(15).Text.Trim > "0" Then 'Em aprovacao
                    e.Row.Cells(12).Text = "Em Aprovacao"
                    endimage = "<img src=Imagens/Azul.png />"
                ElseIf e.Row.Cells(1).Text.Trim = "N" Then   'Rejeitado
                    e.Row.Cells(12).Text = "Pedido Rejeitado"
                    endimage = "<img src=Imagens/vermelho.png />"

                ElseIf e.Row.Cells(1).Text.Trim = "" And e.Row.Cells(7).Text.Trim = "" Then 'sem pedido
                    If e.Row.Cells(14).Text.Trim = "R" Then 'Rejeitado
                        e.Row.Cells(12).Text = "Solicitacao Rejeitada"
                        endimage = "<img src=Imagens/vermelho.png />"
                    ElseIf e.Row.Cells(14).Text.Trim = "B" Then 'Bloqueado
                        e.Row.Cells(12).Text = "Solicitacao Bloqueada"
                        endimage = "<img src=Imagens/lilas.png />"
                    Else
                        e.Row.Cells(12).Text = "Aguardando Pedido"
                        endimage = "<img src=Imagens/azul.png />"
                    End If
                ElseIf Val(e.Row.Cells(13).Text.Trim) = 0 Then   'Aguardando Pre-Nota
                    If e.Row.Cells(13).Text.Trim <> "" Then
                        e.Row.Cells(12).Text = "Aguardando Pre-Nota"
                        endimage = "<img src=Imagens/laranja.png />"
                    Else
                        e.Row.Cells(12).Text = "Aguardando Class"
                        endimage = "<img src=Imagens/azul.png />"
                    End If

                ElseIf Val(e.Row.Cells(13).Text.Trim) > 0 Then   'Aguardando Class
                    e.Row.Cells(12).Text = "Aguardando Class"
                    endimage = "<img src=Imagens/azul.png />"
                End If

                decodedText1 = HttpUtility.HtmlDecode(endimage)
                e.Row.Cells(1).Text = decodedText1
            End If
        End If
        e.Row.Cells(13).Visible = False
        e.Row.Cells(14).Visible = False
        e.Row.Cells(15).Visible = False

    End Sub
    Protected Sub btnFiltro_Click(sender As Object, e As EventArgs) Handles btnFiltro.Click
        If txtdt1.Text.Trim <> "" Then
            If Not IsDate(txtdt1.Text) Or txtdt1.Text.Length <> 10 Then
                Response.Write("<script>window.addEventListener('load', function(){ alertBootstrap('Data Inicial Invalida !','alert-danger'); });</script>")
                Return
            End If
        End If
        If txtdt2.Text.Trim <> "" Then
            If Not IsDate(txtdt2.Text) Or txtdt2.Text.Length <> 10 Then
                Response.Write("<script>window.addEventListener('load', function(){ alertBootstrap('Data Final Invalida !','alert-danger'); });</script>")
                Return
            End If
        End If
        grdcompras.SelectedIndex = -1
        grdcompras.DataSource = Nothing
        grdcompras.DataBind()
        gdvaprova.DataSource = Nothing
        gdvaprova.DataBind()
        gdvfin.DataSource = Nothing
        gdvfin.DataBind()

        atualiza()


    End Sub
    Private Sub grdcompras_Sorting(sender As Object, e As GridViewSortEventArgs) Handles grdcompras.Sorting
        If e.SortExpression = ViewState("Column_Name").ToString() Then
            If ViewState("Sort_Order").ToString() = "ASC" Then
                RebindData(e.SortExpression, "DESC")
            Else
                RebindData(e.SortExpression, "ASC")
            End If
        Else
            RebindData(e.SortExpression, "ASC")
        End If
    End Sub
    Private Sub RebindData(sColimnName As String, sSortOrder As String)
        Dim dt As DataTable = CType(Cache("dtn"), DataTable)
        dt.DefaultView.Sort = sColimnName + " " + sSortOrder
        grdcompras.DataSource = dt
        grdcompras.DataBind()
        ViewState("Column_Name") = sColimnName
        ViewState("Sort_Order") = sSortOrder
    End Sub
    Private Sub txtdt1_TextChanged(sender As Object, e As EventArgs) Handles txtdt1.TextChanged
        If txtdt1.Text.Trim <> "" Then
            If Not IsDate(txtdt1.Text) Or txtdt1.Text.Length <> 10 Then
                Response.Write("<script>window.addEventListener('load', function(){ alertBootstrap('Data Inicial Invalida !','alert-danger'); });</script>")
                txtdt1.Focus()
                Return
            End If
        End If
    End Sub
    Private Sub txtdt2_TextChanged(sender As Object, e As EventArgs) Handles txtdt1.TextChanged
        If txtdt2.Text.Trim <> "" Then
            If Not IsDate(txtdt2.Text) Or txtdt2.Text.Length <> 10 Then
                Response.Write("<script>window.addEventListener('load', function(){ alertBootstrap('Data Final Invalida !','alert-danger'); });</script>")
                txtdt1.Focus()
                Return
            End If
        End If
    End Sub
    Public Function retdet()
        Dim conexaoBD = New SqlConnection(My.Settings.conexaobanco)
        Dim sqlstr As String
        Dim sqlstr2 As String
        Dim sqlfiltro As String
        sqlfiltro = String.Empty
        Dim wid2 As String = ""

        If grdcompras.SelectedRow IsNot Nothing Then

            Dim wcodigo As String = grdcompras.SelectedRow.Cells(7).Text.Trim
            If wcodigo.Trim = "" Then
                gdvaprova.DataSource = Nothing
                gdvaprova.DataBind()
                gdvfin.DataSource = Nothing
                gdvfin.DataBind()
                Return True
            End If
            sqlstr = "SELECT CR_NIVEL NIVEL,AK_NOME APROVADOR, CR_STATUS STATUS,
                        Case 
                        When CR_DATALIB <> ' 'then Convert(varchar(10),CONVERT(date,CR_DATALIB,106),103) 
                        Else ' '
                        End as  [DATA LIBER]
                       FROM  SCR010 CR
                       INNER JOIN SAK010 AK on AK.AK_COD = CR.CR_APROV AND AK.D_E_L_E_T_ = ' '
                      WHERE  CR.D_E_L_E_T_ = ' '
                       AND  CR_NUM  = '" + wcodigo + "' Order by nivel "

            sqlstr2 = " SELECT CASE
                        WHEN E2_PARCELA = ' ' THEN '1' 
                        ELSE E2_PARCELA END PARCELA,E2_VALOR VALOR,
                        Convert(varchar(10),CONVERT(date,E2_VENCREA,106),103)  VENCIMENTO,
                        E2_NOMFOR FORNECEDOR,
                        CASE
                            WHEN E2_SALDO >0 THEN 'ABERTO' 
                         ELSE 'PAGO' END STATUS
                        FROM  SF1010 F1
                        INNER JOIN SE2010 E2 ON E2_FILIAL = F1_FILIAL AND E2_NUM = F1_DOC AND  E2_FORNECE = F1_FORNECE AND E2_PREFIXO=F1_SERIE AND E2.D_E_L_E_T_ = ' '
                        WHERE F1.D_E_L_E_T_ = ' '
                        AND F1_DOC = '" + grdcompras.SelectedRow.Cells(9).Text.Trim + "'
                        AND F1_FILIAL = '" + grdcompras.SelectedRow.Cells(2).Text.Trim + "'
                        AND F1_XOP = '" + grdcompras.SelectedRow.Cells(7).Text.Trim + "' ORDER BY E2_PARCELA"

            Dim command12 = New SqlCommand(sqlstr, conexaoBD)
            Dim command13 = New SqlCommand(sqlstr2, conexaoBD)
            Dim dr As SqlDataReader
            Dim dt As New DataTable
            Dim dr1 As SqlDataReader
            Dim dt1 As New DataTable

            conexaoBD.Open()
            dr = command12.ExecuteReader
            dt.Load(dr)
            gdvaprova.DataSource = dt
            gdvaprova.DataBind()
            conexaoBD.Close()
            conexaoBD.Open()
            dr1 = command13.ExecuteReader
            dt1.Load(dr1)
            gdvfin.DataSource = dt1
            gdvfin.DataBind()
            conexaoBD.Close()
        Else
            Response.Write("<script>window.addEventListener('load', function(){ alertBootstrap('Favor Selecionar um Item.','alert-danger'); });</script>")
        End If
        Return True

    End Function
    Protected Sub grdcompras_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grdcompras.SelectedIndexChanged
        Dim teste As String
        teste = " "
        retdet()

    End Sub
    Private Sub gdvaprova_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles gdvaprova.RowDataBound

        ' verifica se  a linha é de dados e tem todas as colunas
        If e.Row.Cells.Count > 1 Then

            If e.Row.Cells(2).Text.Trim = "01" Then
                e.Row.Cells(2).Text = "Aguardando outros Aprovadores"
                e.Row.Cells(2).Font.Size = 8
            ElseIf e.Row.Cells(2).Text.Trim = "02" Then
                e.Row.Cells(2).Text = "Aguardando aprovacao"
            ElseIf e.Row.Cells(2).Text.Trim = "03" Then
                e.Row.Cells(2).Text = "Aprovado"
            ElseIf e.Row.Cells(2).Text.Trim = "04" Then
                e.Row.Cells(2).Text = "Rejeitado"
            End If

        End If
    End Sub
    Private Sub grdcompras_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles grdcompras.PageIndexChanging
        grdcompras.PageIndex = e.NewPageIndex
        grdcompras.SelectedIndex = -1
    End Sub


End Class
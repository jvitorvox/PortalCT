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
Public Class planoacao
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim resposta As String = ""
        Dim usuario As String = ""
        Dim codusu As String = ""
        Dim acessos As String = ""
        Dim wcookies As String = ""

        Dim cCookie = Request.Cookies(FormsAuthentication.FormsCookieName)
        Dim ticket = FormsAuthentication.Decrypt(cCookie.Value)

        usuario = ticket.Name
        acessos = ticket.UserData
        lbluser.Text = usuario
        Atualiza()

    End Sub

    Private Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        buscarplano()
    End Sub


    Private Sub buscarplano()
        Dim message As String = " "
        Dim sqlcomando As String = ""
        Dim conexaoBD = New SqlConnection(My.Settings.conexaobanco2)
        Dim dr As SqlDataReader
        Dim dt As New DataTable
        Dim reg As Integer
        Dim sqlexecuta As SqlCommand

        'Verifica se o perido e a acao forma  informados
        If txtperiodo.Text.Trim = String.Empty Or txtAcao.Text.Trim = String.Empty Then
            message = "alertBootstrap('Informar Período e  Acao  !!','alert-danger')"
            ScriptManager.RegisterClientScriptBlock(Me, Me.GetType(), "alert", message, True)
            Return
        End If
        sqlcomando = "  SELECT  ID,DEPTO,PERIODO,ACAO,OQUE,PORQUE,ONDE,QUANDO,QUEM,COMO,QUANTO,VALOR,FEEDBACK,CATEGORIA,STATUS,DIRECIONAMENTO  
                            FROM planoacao
                            WHERE DEPTO = '" + drdDepto.Text.Trim + "'
                            AND ACAO = '" + txtAcao.Text.Trim + "'
                            AND PERIODO = '" + txtperiodo.Text.Trim + "'"

        conexaoBD.Open()
        Dim command As SqlCommand = New SqlCommand(sqlcomando)
        command.Connection = conexaoBD
        dr = command.ExecuteReader
        command.CommandTimeout = 20000
        dt.Load(dr)
        If dt.Rows.Count = 0 Then
            'If MsgBox("Nao Existe a ação para  o perido nesse Departamento . Deseja Criar ?", MsgBoxStyle.YesNo) = MsgBoxResult.No Then
            '    message = "alertBootstrap('Busca Cancelada','alert-danger')"
            '    ScriptManager.RegisterClientScriptBlock(Me, Me.GetType(), "alert", message, True)
            '    Return
            'End If
            sqlcomando = "INSERT INTO planoacao(DEPTO,PERIODO,ACAO) VALUES ('" & drdDepto.Text.Trim & "','" & txtperiodo.Text.Trim & "','" & txtAcao.Text.Trim & "' )"

            Try
                sqlexecuta = New SqlCommand(sqlcomando, conexaoBD)
                reg = sqlexecuta.ExecuteNonQuery
                If reg = 0 Then
                    MsgBox("Falha na Inclusao !!", MsgBoxStyle.OkOnly)
                    Return
                End If
                conexaoBD.Close()
            Catch ex As Exception
                conexaoBD.Close()
                Response.Write("<script>window.addEventListener('load', function(){ alertBootstrap('Dados invalidos !!','alert-danger'); });</script>")
                MsgBox("Erro na Gravação !!!", MsgBoxStyle.OkOnly)
            Finally
                conexaoBD.Close()
            End Try
            limpacampos()
        Else
            'ATRIBUI OS DADOS 

            txtOque.Text = dt.Rows(0)("OQUE").ToString()
            txtPorque.Text = dt.Rows(0)("PORQUE").ToString()
            txtOnde.Text = dt.Rows(0)("ONDE").ToString()
            txtQuando.Text = dt.Rows(0)("QUANDO").ToString()
            txtPorquem.Text = dt.Rows(0)("QUEM").ToString()
            txtComo.Text = dt.Rows(0)("COMO").ToString()
            txtQuanto.Text = dt.Rows(0)("QUANTO").ToString()
            txtValor.Text = dt.Rows(0)("VALOR").ToString()
            txtfeed.Text = dt.Rows(0)("FEEDBACK").ToString()
            drdCategoria.Text = dt.Rows(0)("CATEGORIA").ToString()
            drdStatus.Text = dt.Rows(0)("STATUS").ToString()
            drdDireciona.Text = dt.Rows(0)("DIRECIONAMENTO").ToString()


        End If

        txtAcao.ReadOnly = True
        txtperiodo.ReadOnly = True
        txtOque.ReadOnly = False
        txtPorque.ReadOnly = False
        txtOnde.ReadOnly = False
        txtQuando.ReadOnly = False
        txtPorquem.ReadOnly = False
        txtComo.ReadOnly = False
        txtQuanto.ReadOnly = False
        txtValor.ReadOnly = False
        drdDepto.Enabled = False
        txtfeed.ReadOnly = False
        drdCategoria.Enabled = True
        drdStatus.Enabled = True
        drdDireciona.Enabled = True

        bntCancel.Enabled = True
        bntsalvar.Enabled = True


    End Sub

    Private Sub limpacampos()
        txtOque.Text = String.Empty
        txtPorque.Text = String.Empty
        txtOnde.Text = String.Empty
        txtQuando.Text = String.Empty
        txtPorquem.Text = String.Empty
        txtComo.Text = String.Empty
        txtQuanto.Text = String.Empty
        txtValor.Text = String.Empty
        txtfeed.Text = String.Empty
        drdStatus.Text = Nothing
        drdCategoria.Text = Nothing
        drdDireciona.Text = Nothing

    End Sub

    Private Sub bntCancel_Click(sender As Object, e As EventArgs) Handles bntCancel.Click
        limpacampos()
        txtAcao.ReadOnly = False
        txtperiodo.ReadOnly = False
        txtOque.ReadOnly = True
        txtPorque.ReadOnly = True
        txtOnde.ReadOnly = True
        txtQuando.ReadOnly = True
        txtPorquem.ReadOnly = True
        txtComo.ReadOnly = True
        txtQuanto.ReadOnly = True
        txtValor.ReadOnly = True
        drdDepto.Enabled = True
        txtfeed.ReadOnly = True
        drdCategoria.Enabled = False
        drdStatus.Enabled = False
        drdDireciona.Enabled = False

        bntCancel.Enabled = False
        bntsalvar.Enabled = False

    End Sub

    Private Sub bntsalvar_Click(sender As Object, e As EventArgs) Handles bntsalvar.Click
        Dim message As String = " "
        Dim sqlcomando As String = ""
        Dim conexaoBD = New SqlConnection(My.Settings.conexaobanco2)
        Dim dr As SqlDataReader
        Dim dt As New DataTable
        Dim reg As Integer
        Dim sqlexecuta As SqlCommand
        Dim stvalor As String

        'Verifica se o perido e a acao forma  informados
        If txtperiodo.Text.Trim = String.Empty Or txtAcao.Text.Trim = String.Empty Then
            message = "alertBootstrap('Informar Período e  Acao  !!','alert-danger')"
            ScriptManager.RegisterClientScriptBlock(Me, Me.GetType(), "alert", message, True)
            Return
        End If
        If txtValor.Text.Trim = "" Then
            txtValor.Text = "0"
        End If
        stvalor = CDbl(txtValor.Text.ToString).ToString.Replace(",", ".")
        sqlcomando = "UPDATE planoacao SET OQUE = '" & txtOque.Text & "'," & " PORQUE = '" & txtPorque.Text & "'," & " ONDE = '" & txtOnde.Text & "'," & " QUANDO = '" & txtQuando.Text & "'," & " QUEM = '" & txtPorquem.Text & "'," & " COMO = '" & txtComo.Text & "'," & "QUANTO = '" & txtQuanto.Text & "'," & "FEEDBACK = '" & txtfeed.Text & "'," & "CATEGORIA = '" & drdCategoria.Text & "'," & "STATUS = '" & drdStatus.Text & "'," & "Direcionamento = '" & drdDireciona.Text & "'," & "VALOR = " & stvalor &
                        " WHERE DEPTO = '" + drdDepto.Text.Trim + "'
                            And ACAO = '" + txtAcao.Text.Trim + "'
                            And PERIODO = '" + txtperiodo.Text.Trim + "'"

        conexaoBD.Open()
        Dim command As SqlCommand = New SqlCommand(sqlcomando)
        command.Connection = conexaoBD
        command.CommandTimeout = 20000
        Try
            sqlexecuta = New SqlCommand(sqlcomando, conexaoBD)
            reg = sqlexecuta.ExecuteNonQuery
            If reg = 0 Then
                MsgBox("Falha na Gravacaco !!", MsgBoxStyle.OkOnly)
                Return
            End If
            conexaoBD.Close()
        Catch ex As Exception
            conexaoBD.Close()
            Response.Write("<script>window.addEventListener('load', function(){ alertBootstrap('Dados invalidos !!','alert-danger'); });</script>")
            MsgBox("Erro na Gravação !!!", MsgBoxStyle.OkOnly)
        Finally
            conexaoBD.Close()
        End Try
        limpacampos()
        txtAcao.ReadOnly = False
        txtperiodo.ReadOnly = False
        txtOque.ReadOnly = True
        txtPorque.ReadOnly = True
        txtOnde.ReadOnly = True
        txtQuando.ReadOnly = True
        txtPorquem.ReadOnly = True
        txtComo.ReadOnly = True
        txtQuanto.ReadOnly = True
        txtValor.ReadOnly = True
        drdDepto.Enabled = True
        txtfeed.ReadOnly = True
        drdCategoria.Enabled = False
        drdStatus.Enabled = False
        drdDireciona.Enabled = False

        bntCancel.Enabled = False
        bntsalvar.Enabled = False
        Atualiza()

    End Sub
    Private Sub Atualiza()
        Dim conexaoBD = New SqlConnection(My.Settings.conexaobanco2)
        Dim sqlstr As String = " "
        Dim message As String = " "

        sqlstr = "  SELECT  CATEGORIA,STATUS,ID,DEPTO,PERIODO,ACAO,OQUE [O QUE],PORQUE,ONDE,QUANDO,QUEM,COMO,QUANTO,VALOR,FEEDBACK, DIRECIONAMENTO
                            FROM planoacao "

        Dim command12 = New SqlCommand(sqlstr, conexaoBD)
        Dim dr As SqlDataReader
        Dim dt As New DataTable

        conexaoBD.Open()
        dr = command12.ExecuteReader
        Dim dt12 As New DataTable
        dt12.Load(dr)
        grvplanos.DataSource = dt12
        grvplanos.DataBind()

        Cache("dts") = dt12
        'The first sorting combination saved here
        ViewState("Column_Name") = "NUMERO"
        ViewState("Sort_Order") = "ASC"
        conexaoBD.Close()
        Calctotal()
        If grvplanos.Rows.Count = 0 Then
            message = "alertBootstrap('Nenhum Registro Encontrado','alert-danger')"
            ScriptManager.RegisterClientScriptBlock(Me, Me.GetType(), "alert", message, True)
        End If
    End Sub

    Private Sub grvplanos_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles grvplanos.PageIndexChanging
        grvplanos.PageIndex = e.NewPageIndex
        grvplanos.SelectedIndex = -1
    End Sub

    Private Sub grvplanos_Sorting(sender As Object, e As GridViewSortEventArgs) Handles grvplanos.Sorting
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
        Dim dt As DataTable = CType(Cache("dts"), DataTable)
        dt.DefaultView.Sort = sColimnName + " " + sSortOrder
        grvplanos.DataSource = dt
        grvplanos.DataBind()
        ViewState("Column_Name") = sColimnName
        ViewState("Sort_Order") = sSortOrder
    End Sub

    Private Sub grvplanos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grvplanos.SelectedIndexChanged
        drdDepto.Text = grvplanos.SelectedRow.Cells(2).Text
        txtperiodo.Text = grvplanos.SelectedRow.Cells(3).Text
        txtAcao.Text = grvplanos.SelectedRow.Cells(4).Text

    End Sub

    Private Sub bntFiltro_Click(sender As Object, e As EventArgs) Handles bntFiltro.Click
        atualiza2()
    End Sub
    Private Sub Atualiza2()
        Dim conexaoBD = New SqlConnection(My.Settings.conexaobanco2)
        Dim sqlstr As String = " "
        Dim message As String = " "

        sqlstr = "  SELECT CATEGORIA,STATUS,ID,DEPTO,PERIODO,ACAO,OQUE [O QUE],PORQUE,ONDE,QUANDO,QUEM,COMO,QUANTO,VALOR,FEEDBACK, DIRECIONAMENTO
                            FROM planoacao 
                            WHERE DEPTO = '" + drdDepto.Text.Trim + "'"

        Dim command12 = New SqlCommand(sqlstr, conexaoBD)
        Dim dr As SqlDataReader
        Dim dt As New DataTable

        conexaoBD.Open()
        dr = command12.ExecuteReader
        Dim dt12 As New DataTable
        dt12.Load(dr)
        grvplanos.DataSource = dt12
        grvplanos.DataBind()

        Cache("dts") = dt12
        'The first sorting combination saved here
        ViewState("Column_Name") = "NUMERO"
        ViewState("Sort_Order") = "ASC"
        conexaoBD.Close()
        Calctotal()
        If grvplanos.Rows.Count = 0 Then
            message = "alertBootstrap('Nenhum Registro Encontrado','alert-danger')"
            ScriptManager.RegisterClientScriptBlock(Me, Me.GetType(), "alert", message, True)
        End If

    End Sub

    Private Sub Calctotal()
        Dim total As Double = 0
        Dim valor As Double = 0
        For Each linha As GridViewRow In grvplanos.Rows
            If linha.Cells(14).Text.Trim = "&nbsp;" Or linha.Cells(14).Text = String.Empty Then
                valor = 0
            Else
                valor = CDbl(linha.Cells(14).Text)
            End If

            total = valor + total
        Next

        'lblValor.Text = "Valor Total: " & total.ToString("R$ ###,###,###.##")
    End Sub

    Private Sub grvplanos_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles grvplanos.RowDataBound
        ' verifica se  a linha é de dados e tem todas as colunas
        If e.Row.Cells.Count > 1 Then


            If e.Row.Cells(2).Text.Trim <> "Status" And e.Row.Cells(2).Text.Trim <> "&nbsp;" And e.Row.Cells(2).Text.Trim <> "" Then
                If e.Row.Cells(2).Text.Trim = "Concluido" Then
                    e.Row.Cells(2).BackColor = System.Drawing.Color.Green
                    e.Row.Cells(2).ForeColor = System.Drawing.Color.White
                ElseIf e.Row.Cells(2).Text.Trim = "Andamento" Then
                    e.Row.Cells(2).BackColor = System.Drawing.Color.Yellow
                    e.Row.Cells(2).ForeColor = System.Drawing.Color.Black
                ElseIf e.Row.Cells(2).Text.Trim = "Pendente" Then
                    e.Row.Cells(2).BackColor = System.Drawing.Color.Red
                    e.Row.Cells(2).ForeColor = System.Drawing.Color.White
                ElseIf e.Row.Cells(2).Text.Trim = "Homologacao" Then
                    e.Row.Cells(2).BackColor = System.Drawing.Color.Blue
                    e.Row.Cells(2).ForeColor = System.Drawing.Color.White
                Else
                    e.Row.Cells(2).BackColor = System.Drawing.Color.White
                    e.Row.Cells(2).ForeColor = System.Drawing.Color.Black
                End If
            End If

            'Verifica categoria
            If e.Row.Cells(1).Text.Trim <> "CATEGORIA" And e.Row.Cells(1).Text.Trim <> "&nbsp;" And e.Row.Cells(1).Text.Trim <> "" Then

                If e.Row.Cells(1).Text.Trim = "Necessita Diretoria" Then
                    e.Row.Cells(1).BackColor = System.Drawing.Color.Red
                    e.Row.Cells(1).ForeColor = System.Drawing.Color.Black
                ElseIf e.Row.Cells(1).Text.Trim = "Processo Interno" Then
                    e.Row.Cells(1).BackColor = System.Drawing.Color.Yellow
                    e.Row.Cells(1).ForeColor = System.Drawing.Color.Black
                ElseIf e.Row.Cells(1).Text.Trim = "Melhoria" Then
                    e.Row.Cells(1).BackColor = System.Drawing.Color.Green
                    e.Row.Cells(1).ForeColor = System.Drawing.Color.Black
                Else
                    e.Row.Cells(1).BackColor = System.Drawing.Color.Gray
                    e.Row.Cells(1).ForeColor = System.Drawing.Color.White
                End If
            End If
        End If
    End Sub
End Class
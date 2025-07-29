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
Public Class aprovacao
    Inherits System.Web.UI.Page

    Shared wcodigo As String
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


        If Not Page.IsPostBack Then
            Atualgrid()
            Atualcc(0)
        End If
    End Sub

    Private Sub Atualgrid()
        Dim conexaoBD = New SqlConnection(My.Settings.conexaobanco)
        Dim sqlstr As String
        Dim sqlfiltro As String
        sqlfiltro = String.Empty

        sqlstr = "SELECT  
                        AL_COD CODIGO,AL_DESC DESCRICAO,
                        CASE AL_EXCECAO
	                        WHEN 0 THEN 'NORMAL'
	                        WHEN 1  THEN 'EXCECAO'
	                        ELSE 'NORMAL'
                        END AS TIPO,
                        COUNT(AL_COD) APROVADORES
                        FROM  SAL010 AL
                        WHERE AL.D_E_L_E_T_ =  ' '
                        GROUP BY AL_COD,AL_DESC,AL_EXCECAO
                        ORDER BY AL_COD"

        Dim command12 = New SqlCommand(sqlstr, conexaoBD)
        Dim dr As SqlDataReader
        Dim dt As New DataTable

        conexaoBD.Open()
        dr = command12.ExecuteReader
        Dim dt12 As New DataTable
        dt12.Load(dr)
        gdvEmp.DataSource = dt12
        gdvEmp.DataBind()

        Cache("dts") = dt12
        'The first sorting combination saved here
        ViewState("Column_Name") = "DESCRICAO"
        ViewState("Sort_Order") = "ASC"
        conexaoBD.Close()

    End Sub

    Private Sub Atualcc(linha As Integer)
        If wcodigo Is Nothing Or wcodigo = "" Then
            Return
        End If
        Dim conexaoBD = New SqlConnection(My.Settings.conexaobanco)
        Dim sqlstr As String
        Dim sqlfiltro As String
        sqlfiltro = String.Empty
        Dim wid As String = wcodigo

        sqlstr = "SELECT  
                AL_NIVEL NIVEL,AL_APROV COD_APROV, AK_NOME APROVADOR, AK_LIMMIN [LIM MINIMO],AK_LIMMAX [LIM MAXIMO]
                FROM  SAL010 AL
                LEFT JOIN SAK010 AK ON AL.AL_APROV = AK.AK_COD AND AK.D_E_L_E_T_ =  ' '
                WHERE AL.D_E_L_E_T_ =  ' '
                AND  AL_COD IN (" + wid + ")   ORDER BY AL_NIVEL"



        Dim command12 = New SqlCommand(sqlstr, conexaoBD)
        Dim dr As SqlDataReader
        Dim dt As New DataTable

        conexaoBD.Open()
        dr = command12.ExecuteReader
        dt.Load(dr)
        gdvcc.DataSource = dt
        gdvcc.DataBind()

        conexaoBD.Close()

    End Sub

    Private Sub gdvEmp_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gdvEmp.SelectedIndexChanged
        Dim wid As Integer = sender.selectedRow.RowIndex
        gdvcc.SelectedIndex = -1
        gdvcc.DataSource = Nothing
        gdvcc.DataBind()
        Atualcc(wid)
    End Sub

    Private Sub gdvEmp_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gdvEmp.PageIndexChanging
        gdvEmp.PageIndex = e.NewPageIndex
        gdvEmp.SelectedIndex = -1
    End Sub
    Private Sub gdvEmp_Sorting(sender As Object, e As GridViewSortEventArgs) Handles gdvEmp.Sorting
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
        gdvEmp.DataSource = dt
        gdvEmp.DataBind()
        ViewState("Column_Name") = sColimnName
        ViewState("Sort_Order") = sSortOrder
    End Sub
    Private Sub gdvcc_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gdvcc.PageIndexChanging
        gdvcc.PageIndex = e.NewPageIndex
        gdvcc.SelectedIndex = -1
    End Sub

    Protected Sub chkRow_CheckedChanged(sender As Object, e As EventArgs)
        wcodigo = ""
        For Each row As GridViewRow In gdvEmp.Rows
            If row.RowType = DataControlRowType.DataRow Then
                Dim chkRow As CheckBox = TryCast(row.Cells(0).FindControl("chkRow"), CheckBox)
                If chkRow.Checked Then
                    Dim codigo As String = row.Cells(1).Text
                    ' Dim country As String = TryCast(row.Cells(2).FindControl("lblCountry"), Label).Text
                    If String.IsNullOrEmpty(wcodigo) Then
                        wcodigo = wcodigo + "'" + codigo + "'"
                    Else
                        wcodigo = wcodigo + ",'" + codigo + "'"
                    End If

                End If
            End If
        Next

        Dim wid As Integer = 1
        gdvcc.SelectedIndex = -1
        gdvcc.DataSource = Nothing
        gdvcc.DataBind()

        Atualcc(wid)

    End Sub
    Protected Sub chkAll_CheckedChanged(sender As Object, e As EventArgs)
        ' Response.Write("<script>window.addEventListener('load', function(){ setespera(); });</script>")
        wcodigo = ""
        For Each row As GridViewRow In gdvEmp.Rows
            If row.RowType = DataControlRowType.DataRow Then
                Dim chkRow As CheckBox = TryCast(row.Cells(0).FindControl("chkRow"), CheckBox)
                If chkRow.Checked Then
                    Dim codigo As String = row.Cells(1).Text
                    ' Dim country As String = TryCast(row.Cells(2).FindControl("lblCountry"), Label).Text
                    If String.IsNullOrEmpty(wcodigo) Then
                        wcodigo = wcodigo + "'" + codigo + "'"
                    Else
                        wcodigo = wcodigo + ",'" + codigo + "'"
                    End If

                End If
            End If
        Next
        Dim wid As Integer = 1
        gdvcc.SelectedIndex = -1
        gdvcc.DataSource = Nothing
        gdvcc.DataBind()
        Atualcc(wid)


    End Sub

End Class
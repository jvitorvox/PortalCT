Public Class master
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        btnLotes.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnCob.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnFin.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnObras.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnRh.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btncolabora.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnGlobaltec.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnRegionais.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btncorretores.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnDM.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnRetencao.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnCtrInterno.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnCentral.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
        btnGescontr.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"

        'btnCamp.Attributes("onclick") = "javascript: document.body.style.cursor = 'wait';"
    End Sub

    Public Sub MudarLabel(titulo)

        lbluser.Text = " " + RTrim(Session("usuario"))
        If lbluser.Text.Trim = "" Then
            lbluser.Text = "Guest"
        End If

    End Sub

    Public Sub habilitarbnt()

        Dim painel As String = Session("urls")

        ' desabilita todos os botoes Menos Ramais e TI
        btnLotes.Visible = False
        btnRh.Visible = False
        btnTi.Visible = False
        btnObras.Visible = False
        btnFin.Visible = False
        btnCob.Visible = False
        'btnCamp.Visible = False
        btnCont.Visible = False
        btnDiretoria.Visible = False
        btnEscritorios.Visible = False
        btnJuridico.Visible = False
        btnCtrVendas.Visible = False
        btnRegionais.Visible = False
        btnAdminis.Visible = False
        btncorretores.Visible = False
        btnSuprimentos.Visible = False
        'btnChamados.Visible = False
        btnProjetos.Visible = False
        btnEngenharia.Visible = False
        btnDM.Visible = False
        btnCtrInterno.Visible = False
        btnRetencao.Visible = False
        btnGlobaltec.Visible = False
        btnCentral.Visible = False
        btnAssoexc.Visible = False
        btnGescontr.Visible = False

        ' acesso total
        If painel.Contains("@@@@") Then
            btnLotes.Visible = True
            btnRh.Visible = True
            btnTi.Visible = True
            btnObras.Visible = True
            btnFin.Visible = True
            btnCob.Visible = True
            'btnCamp.Visible = True
            btnCont.Visible = True
            btnDiretoria.Visible = True
            btnEscritorios.Visible = True
            btnJuridico.Visible = True
            btnCtrVendas.Visible = True
            btnRegionais.Visible = True
            btnAdminis.Visible = True
            btncorretores.Visible = True
            btnSuprimentos.Visible = True
            btnChamados.Visible = True
            btnProjetos.Visible = True
            btnEngenharia.Visible = True
            btnDM.Visible = True
            btnCtrInterno.Visible = True
            btnRetencao.Visible = True
            btnCentral.Visible = True
            btnAssoexc.Visible = True
            btnGescontr.Visible = True
        Else
            If painel.Contains("PAINEL RH") Then
                btnRh.Visible = True
            End If

            If painel.Contains("PAINEL TI") Then
                'btnTi.Visible = True
            End If

            If painel.Contains("PAINEL LOTES") Then
                btnLotes.Visible = True
            End If

            If painel.Contains("PAINEL OBRAS") Then
                btnObras.Visible = True
            End If

            If painel.Contains("PAINEL COBRANCA") Then
                btnCob.Visible = True
            End If

            If painel.Contains("PAINEL FINANCEIRO") Then
                btnFin.Visible = True
            End If

            'If painel.Contains("PAINEL CAMPANHAS") Then
            '    btnCamp.Visible = True
            'End If

            If painel.Contains("PAINEL CONTABIL") Then
                btnCont.Visible = True
            End If

            If painel.Contains("PAINEL ESCRITORIOS") Then
                btnEscritorios.Visible = True
            End If
            If painel.Contains("PAINEL DIRETORIA") Then
                btnDiretoria.Visible = True
            End If
            If painel.Contains("PAINEL JURIDICO") Then
                btnJuridico.Visible = True
            End If
            If painel.Contains("PAINEL CTRVENDAS") Then
                btnCtrVendas.Visible = True
            End If
            If painel.Contains("PAINEL REGIONAIS") Then
                btnRegionais.Visible = True
            End If
            If painel.Contains("PAINEL ADMINISTRATIVO") Then
                btnAdminis.Visible = True
            End If
            If painel.Contains("PAINEL CORRETORES") Then
                btncorretores.Visible = True
            End If

            If painel.Contains("PAINEL SUPRIMENTOS") Then
                btnSuprimentos.Visible = True
            End If

            If painel.Contains("PAINEL PROJETOS") Then
                btnProjetos.Visible = True
            End If

            If painel.Contains("PAINEL ENGENHARIA") Then
                btnEngenharia.Visible = True
            End If

            If painel.Contains("PAINEL DM") Then
                btnDM.Visible = True
            End If
            If painel.Contains("PAINEL RETENCAO") Then
                btnRetencao.Visible = True
            End If
            If painel.Contains("PAINEL CTRINTERNO") Then
                btnCtrInterno.Visible = True
            End If
            If painel.Contains("PAINEL CENTRAL") Then
                btnCentral.Visible = True
            End If
            If painel.Contains("PAINEL MAP PROCESSOS") Then
                btnCentral.Visible = True
            End If
            If painel.Contains("PAINEL GESTAO CONTRATOS") Then
                btnGescontr.Visible = True
            End If
        End If

    End Sub

    'Protected Sub btnRh_Click(sender As Object, e As EventArgs) Handles btnRh.Click
    '    Response.Redirect("https://portalct.casaeterra.com/rh")
    'End Sub


    Protected Sub bntSair_Click(sender As Object, e As EventArgs) Handles bntSair.Click

        Session.Abandon()
        FormsAuthentication.SignOut()

        Response.Redirect("default.aspx")

    End Sub

    Protected Sub btnFin_Click(sender As Object, e As EventArgs) Handles btnFin.Click
        Response.Redirect("https://portalct.casaeterra.com/finct")
    End Sub

    Private Sub btnhelp_Click(sender As Object, e As EventArgs) Handles btnhelp.Click
        Response.Redirect("https://suportect.casaeterra.com:8080")
    End Sub

    Private Sub btncolabora_Click(sender As Object, e As EventArgs) Handles btncolabora.Click
        Response.Redirect("https://portalct.casaeterra.com/colaboradores")
    End Sub


    Protected Sub btnCont_Click(sender As Object, e As EventArgs) Handles btnCont.Click
        Response.Redirect("https://portalct.casaeterra.com/contabil")
    End Sub

    Protected Sub btnObras_Click(sender As Object, e As EventArgs) Handles btnObras.Click
        Response.Redirect("https://portalct.casaeterra.com/obras")
    End Sub


    Protected Sub btnCob_Click(sender As Object, e As EventArgs) Handles btnCob.Click
        Response.Redirect("https://portalct.casaeterra.com/cobranca")
    End Sub

    Private Sub btnGlobaltec_Click(sender As Object, e As EventArgs) Handles btnGlobaltec.Click
        Response.Redirect("https://portalct.casaeterra.com/globaltec")
    End Sub

    Protected Sub btnLotes_Click(sender As Object, e As EventArgs) Handles btnLotes.Click
        Response.Redirect("https://portalct.casaeterra.com/gestaolotesuau")
    End Sub

    Private Sub btnPlano_Click(sender As Object, e As EventArgs) Handles btnPlano.Click
        Response.Redirect("planoacao.aspx")
    End Sub

    Protected Sub btnTi_Click(sender As Object, e As EventArgs) Handles btnTi.Click
        '    Response.Redirect("https://portalct.casaeterra.com/ti")
    End Sub

    Protected Sub btnRh_Click(sender As Object, e As EventArgs) Handles btnRh.Click
        Response.Redirect("https://portalct.casaeterra.com/rh")
    End Sub

    Protected Sub btnEscritorios_Click(sender As Object, e As EventArgs) Handles btnEscritorios.Click
        Response.Redirect("https://portalct.casaeterra.com/escritorios")
    End Sub

    Private Sub btnDiretoria_Click(sender As Object, e As EventArgs) Handles btnDiretoria.Click
        Response.Redirect("https://portalct.casaeterra.com/diretoria")
    End Sub

    Private Sub btnJuridico_Click(sender As Object, e As EventArgs) Handles btnJuridico.Click
        Response.Redirect("https://portalct.casaeterra.com/juridico")
    End Sub

    Private Sub btnCtrVendas_Click(sender As Object, e As EventArgs) Handles btnCtrVendas.Click
        Response.Redirect("https://portalct.casaeterra.com/ctrvendas")
    End Sub

    Private Sub btnRegionais_Click(sender As Object, e As EventArgs) Handles btnRegionais.Click
        Response.Redirect("https://portalct.casaeterra.com/regionais")
    End Sub
    Private Sub btnAdminis_Click(sender As Object, e As EventArgs) Handles btnAdminis.Click
        Response.Redirect("https://portalct.casaeterra.com/administrativo")
    End Sub
    Private Sub btncorretores_Click(sender As Object, e As EventArgs) Handles btncorretores.Click
        Response.Redirect("https://portalct.casaeterra.com/corretores")
    End Sub

    Private Sub btnChamados_Click(sender As Object, e As EventArgs) Handles btnChamados.Click
        Response.Redirect("https://portalct.casaeterra.com/chamados")
    End Sub

    Private Sub btnSuprimentos_Click(sender As Object, e As EventArgs) Handles btnSuprimentos.Click
        Response.Redirect("https://portalct.casaeterra.com/suprimentos")
    End Sub

    Protected Sub btnProjetos_Click(sender As Object, e As EventArgs) Handles btnProjetos.Click
        Response.Redirect("https://portalct.casaeterra.com/projetos")
    End Sub

    Private Sub btnEngenharia_Click(sender As Object, e As EventArgs) Handles btnEngenharia.Click
        Response.Redirect("https://portalct.casaeterra.com/engenharia")
    End Sub
    Private Sub btnDM_Click(sender As Object, e As EventArgs) Handles btnDM.Click
        Response.Redirect("https://portalct.casaeterra.com/dm")
    End Sub

    Private Sub btnRetencao_Click(sender As Object, e As EventArgs) Handles btnRetencao.Click
        Response.Redirect("https://portalct.casaeterra.com/retencao")
    End Sub

    Private Sub btnCtrInterno_Click(sender As Object, e As EventArgs) Handles btnCtrInterno.Click
        Response.Redirect("https://portalct.casaeterra.com/ctrinterno")
    End Sub

    Protected Sub btnCentral_Click(sender As Object, e As EventArgs) Handles btnCentral.Click
        Response.Redirect("https://portalct.casaeterra.com/centralsolucoes")
    End Sub

    Protected Sub btnAssoexc_Click(sender As Object, e As EventArgs) Handles btnAssoexc.Click
        Response.Redirect("https://portalct.casaeterra.com/assessoriaexec")
    End Sub

    Protected Sub btnGescontr_Click(sender As Object, e As EventArgs) Handles btnGescontr.Click
        Response.Redirect("https://portalct.casaeterra.com/gestaocontratos")
    End Sub

End Class
<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="dashboard.aspx.vb" Inherits="PortalCT._default" %>

<%@ MasterType VirtualPath="master.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <div class="row" style=" margin-top:5%">
        <div class="col-sm-3" style="height: 90px; width: 100px">
            <a href="arquivos/institucional interno.mp4" title="Video Institucional Interno">
                <img src="imagens/institucional.png" style="width: 180px; height: 90px; position: absolute; margin-left: -60%" />
            </a>

            <%--            <asp:HyperLink ID="HyperLink1" runat="server"  ImageUrl="~/imagens/institucional.png" NavigateUrl="~/arquivos/institucional%20interno.mp4" ToolTip="Video Institucional Interno">HyperLink</asp:HyperLink>--%>
            <%--            <asp:ImageButton ID="ImageButton2" runat="server" Style="height: 90px; width: 100px" ImageUrl="~/imagens/corona2.png" />--%>
        </div>
        <%--        <div class="col-sm-3">
            <asp:ImageButton ID="ImgUau" runat="server" Style="height:90px;width:100px" ImageUrl="~/imagens/logo_uau.png" />
        </div>--%>
        <div class="col-sm-3" style="height: 90px; width: 100px; left: 5%">
            <%--            <asp:HyperLink ID="HyperLink1" runat="server" Style="height:90px;width:100px"  ImageUrl="~/imagens/maes.jpg" NavigateUrl="~/arquivos/Dias das Maes CT1.mp4">HyperLink</asp:HyperLink>--%>
            <%--            <asp:ImageButton ID="ImageButton1" runat="server" Style="height: 90px; width: 100px" ImageUrl="~/imagens/corona2.png" />--%>
            <asp:ImageButton ID="ImageButton1" runat="server" Style="height: 90px; width: 100px" ImageUrl="~/imagens/livros.png" />
        </div>

        <div class="col-sm-3" style="height: 90px; width: 100px; left: 8%">
            <asp:ImageButton ID="ImageButton2" runat="server" Style="height: 100px; width: 120px" ImageUrl="~/imagens/acionamento.png" ToolTip="Regras Acionamento" />
        </div>

          <div class="col-sm-3" style="height: 90px; width: 100px; left: 11%">
            <asp:ImageButton ID="ImageButton3" runat="server" Style="height: 100px; width: 100px" ImageUrl="~/imagens/mapaprocessos.png" ToolTip="Mapas de processos" />
        </div>

    </div>
    <div class="row" style="margin-top: 2%">
        <div class="col-md-6">
            <div style="background-color: darkcyan; color: #fff; border-color: #e08e0b; border-radius: 3px; padding: 15px; margin-bottom: 20px; border: 1px solid transparent; box-sizing: border-box; display: block; font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif; font-weight: 400; font-size: 16px; line-height: 2.0;">
                <i class="fa  fa-pencil fa-3x"></i><b>Informações</b>
            </div>
            <div class="table-responsive">
                <asp:GridView ID="GridView1" CssClass=" table table-striped table-bordered table-hover" runat="server" Style="max-width: 100%" AllowPaging="True" Font-Size="10pt" AutoGenerateColumns="True" ShowHeader="False">
                </asp:GridView>
            </div>
        </div>
        <div class="col-md-6">
            <div style="background-color: darkcyan; color: #fff; border-color: #e08e0b; border-radius: 3px; padding: 15px; margin-bottom: 20px; border: 1px solid transparent; box-sizing: border-box; display: block; font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif; font-weight: 400; font-size: 16px; line-height: 2.0;">
                <i class="fa  fa-gift fa-3x"></i><b>Aniversariantes do dia</b>
            </div>
            <div class="table-responsive">
                <asp:GridView ID="grdniverhoje" CssClass=" table table-striped table-bordered table-hover" runat="server" Style="max-width: 100%" AllowPaging="True" Font-Size="10pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" ReadOnly="True" />
                        <asp:BoundField DataField="Empreendimento" HeaderText="Empreendimento" SortExpression="Empreendimento" ReadOnly="True" />
                        <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" ReadOnly="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UAUConnectionString %>" SelectCommand="
select  *  from (
SELECT		Pessoas.nome_pes AS Nome,  Empresas.Desc_emp Empreendimento, Empresas.UF_emp UF			
FROM		Pessoas 
			LEFT JOIN PesEndereco 
				ON CodPes_pend = Pessoas.cod_pes 
				AND Tipo_pend = 0 /* Endereço principal */
			INNER JOIN CapacitacaoRH 
				ON Pessoas.cod_pes =  CapacitacaoRH.CodPes_CapRH
				AND Pessoas.cod_pes =  CapacitacaoRH.CodPes_CapRH
			LEFT OUTER JOIN Obras 
				ON CapacitacaoRH.Empresa_CapRH =  Obras.Empresa_obr AND CapacitacaoRH.Obra_CapRH =  Obras.cod_obr
			LEFT OUTER JOIN Empresas 
				ON Obras.Empresa_obr =  Empresas.Codigo_emp

WHERE		CodSitF_CapRh not in ( 1,5) 
			AND	MONTH( Pessoas.dtnasc_pes) IN (MONTH(GETDATE()))
			AND DAY( Pessoas.dtnasc_pes) = (DAY(GETDATE()))
			AND (CapacitacaoRH.Funcionario_CapRH = 1)

union  
select  Nome COLLATE DATABASE_DEFAULT Nome , 'MATRIZ' Empreendimento, uf COLLATE DATABASE_DEFAULT uf from  Intranetct.dbo.pj
where 	MONTH( dtnasc) IN (MONTH(GETDATE()))
			AND DAY( dtnasc) = (DAY(GETDATE()))
) aniversario
ORDER BY  Nome
"></asp:SqlDataSource>

            </div>
        </div>



    </div>

    <div class="alert table" style="background-color: #337ab7; position: fixed; top: 97%; height: 3%" id="lblAvisosPainel">
        <i class="halflings-icon info-sign"></i>
        <h4 style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: 12px; text-align: center; color: white; width: 600px; position: relative; left: 30%">Desenvolvido por : Ti Casa &amp; Terra</h4>
    </div>

    <div class="row" style="margin-top: 3%">
        <div class="col-lg-6 col-md-6" style="margin-left: -40px">
            <label>Aniversariantes do Mês</label>
            <asp:GridView ID="grdNiver" runat="server" CssClass=" table table-striped table-bordered table-hover" AutoGenerateColumns="False" Font-Size="9px" max-width="100%" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="Dia" HeaderText="Dia" ReadOnly="True" SortExpression="Dia" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" ReadOnly="True" />
                    <asp:BoundField DataField="Empreendimento" HeaderText="Empreendimento" SortExpression="Empreendimento" ReadOnly="True" />
                    <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" ReadOnly="True" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:UAUConnectionString %>" SelectCommand="SELECT * FROM (
SELECT		REPLICATE('0', 2 - LEN(DAY(Pessoas.dtnasc_pes))) + RTrim(DAY(Pessoas.dtnasc_pes)) AS Dia, Pessoas.nome_pes AS Nome,  Empresas.Desc_emp Empreendimento, Empresas.UF_emp UF			
FROM		Pessoas 
			LEFT JOIN PesEndereco 
				ON CodPes_pend = Pessoas.cod_pes 
				AND Tipo_pend = 0 /* Endereço principal */
			INNER JOIN CapacitacaoRH 
				ON Pessoas.cod_pes =  CapacitacaoRH.CodPes_CapRH
				AND Pessoas.cod_pes =  CapacitacaoRH.CodPes_CapRH
			LEFT OUTER JOIN Obras 
				ON CapacitacaoRH.Empresa_CapRH =  Obras.Empresa_obr AND CapacitacaoRH.Obra_CapRH =  Obras.cod_obr
			LEFT OUTER JOIN Empresas 
				ON Obras.Empresa_obr =  Empresas.Codigo_emp

WHERE		CodSitF_CapRh not in ( 1,5) 
			AND	MONTH( Pessoas.dtnasc_pes) IN (MONTH(GETDATE()))
			AND (CapacitacaoRH.Funcionario_CapRH = 1)

union  
select  DAY(dtnasc) Dia, Nome COLLATE DATABASE_DEFAULT Nome , 'MATRIZ' Empreendimento, uf COLLATE DATABASE_DEFAULT uf from  Intranetct.dbo.pj
where 	MONTH( dtnasc) IN (MONTH(GETDATE()))
			
) aniversario

ORDER BY	DIA,NOME
"></asp:SqlDataSource>

        </div>
        <div class="col-lg-6 col-md-6" style="margin-left: -40px">
            <label>Novos Colaboradores</label>
            <asp:GridView ID="grdAdm" runat="server" CssClass=" table table-striped table-bordered table-hover" AutoGenerateColumns="False" Font-Size="9px" max-width="100%" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Empreendimento" HeaderText="Empreendimento" SortExpression="Empreendimento" />
                    <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
                </Columns>

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:UAUConnectionString %>" SelectCommand="SELECT		Pessoas.nome_pes AS Nome,  Empresas.Desc_emp Empreendimento, Empresas.UF_emp UF			
FROM		Pessoas 
			LEFT JOIN PesEndereco 
				ON CodPes_pend = Pessoas.cod_pes 
				AND Tipo_pend = 0 /* Endereço principal */
			INNER JOIN CapacitacaoRH 
				ON Pessoas.cod_pes =  CapacitacaoRH.CodPes_CapRH
				AND Pessoas.cod_pes =  CapacitacaoRH.CodPes_CapRH
			LEFT OUTER JOIN Obras 
				ON CapacitacaoRH.Empresa_CapRH =  Obras.Empresa_obr AND CapacitacaoRH.Obra_CapRH =  Obras.cod_obr
			LEFT OUTER JOIN Empresas 
				ON Obras.Empresa_obr =  Empresas.Codigo_emp

WHERE		CodSitF_CapRh &lt;&gt; 1 
			AND	MONTH( CapacitacaoRH.dtAdimissao_CapRH) IN (MONTH(GETDATE()))
			AND	YEAR( CapacitacaoRH.dtAdimissao_CapRH) IN (YEAR(GETDATE()))
			AND (CapacitacaoRH.Funcionario_CapRH = 1)
			AND Pessoas.nome_pes &lt;&gt; 'FLAVIA LUZIA PEREIRA DE SOUZA'
ORDER BY	pessoas.nome_pes"></asp:SqlDataSource>
        </div>


    </div>



    <div class="row" style="margin-top: 3%; margin-bottom: 5%">
        <div class="col-lg-6 col-md-6">
            <div id="m-booked-weather-bl250-3808" style="left: 10%">
                <a href="//ibooked.com.br/weather/brasilia-w631268" class="booked-wzs-250-175" style="background-color: #137AE9;">
                    <div class="booked-wzs-250-175-data wrz-18">
                        <div class="booked-wzs-250-175-right">
                            <div class="booked-wzs-day-deck">
                                <div class="booked-wzs-day-val">
                                    <div class="booked-wzs-day-number">
                                        <span class="plus">+</span>26
                                    </div>
                                    <div class="booked-wzs-day-dergee">
                                        <div class="booked-wzs-day-dergee-val">&deg;</div>
                                        <div class="booked-wzs-day-dergee-name">C</div>
                                    </div>
                                </div>
                                <div class="booked-wzs-day">
                                    <div class="booked-wzs-day-d">H: <span class="plus">+</span>26&deg;</div>
                                    <div class="booked-wzs-day-n">L: <span class="plus">+</span>19&deg;</div>
                                </div>
                            </div>
                            <div class="booked-wzs-250-175-city">Brasília</div>
                            <div class="booked-wzs-250-175-date">Sexta-Feira, 13 Janeiro</div>
                            <div class="booked-wzs-left"><span class="booked-wzs-bottom-l">Ver Previsão de 7 Dias</span> </div>
                        </div>
                    </div>
                    <table cellpadding="0" class="booked-wzs-table-250">
                        <tr>
                            <td>Sáb</td>
                            <td>Dom</td>
                            <td>Seg</td>
                            <td>Ter</td>
                            <td>Qua</td>
                            <td>Qui</td>
                        </tr>
                        <tr>
                            <td class="week-day-ico">
                                <div class="wrz-sml wrzs-18"></div>
                            </td>
                            <td class="week-day-ico">
                                <div class="wrz-sml wrzs-18"></div>
                            </td>
                            <td class="week-day-ico">
                                <div class="wrz-sml wrzs-18"></div>
                            </td>
                            <td class="week-day-ico">
                                <div class="wrz-sml wrzs-18"></div>
                            </td>
                            <td class="week-day-ico">
                                <div class="wrz-sml wrzs-18"></div>
                            </td>
                            <td class="week-day-ico">
                                <div class="wrz-sml wrzs-18"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="week-day-val"><span class="plus">+</span>26&deg;</td>
                            <td class="week-day-val"><span class="plus">+</span>27&deg;</td>
                            <td class="week-day-val"><span class="plus">+</span>25&deg;</td>
                            <td class="week-day-val"><span class="plus">+</span>25&deg;</td>
                            <td class="week-day-val"><span class="plus">+</span>25&deg;</td>
                            <td class="week-day-val"><span class="plus">+</span>30&deg;</td>
                        </tr>
                        <tr>
                            <td class="week-day-val"><span class="plus">+</span>17&deg;</td>
                            <td class="week-day-val"><span class="plus">+</span>18&deg;</td>
                            <td class="week-day-val"><span class="plus">+</span>19&deg;</td>
                            <td class="week-day-val"><span class="plus">+</span>17&deg;</td>
                            <td class="week-day-val"><span class="plus">+</span>17&deg;</td>
                            <td class="week-day-val"><span class="plus">+</span>20&deg;</td>
                        </tr>
                    </table>
                </a>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div style="z-index: 1000; position: absolute;">
                <iframe frameborder="0" scrolling="no" height="131" width="453" allowtransparency="true" marginwidth="0" marginheight="0" src="https://sslfxrates.forexprostools.com/index.php?force_lang=12&pairs_ids=1617;2103;1;3;&header-text-color=%23FFFFFF&curr-name-color=%230059b0&inner-text-color=%23000000&green-text-color=%232A8215&green-background=%23B7F4C2&red-text-color=%23DC0001&red-background=%23FFE2E2&inner-border-color=%23CBCBCB&border-color=%23cbcbcb&bg1=%23F6F6F6&bg2=%23ffffff&bid=show&ask=show&last=hide&change=hide&last_update=hide"></iframe>
                <br />
                <div style="width: 453"><span style="float: left"><span style="font-size: 11px; color: #333333; text-decoration: none;">Cotações de Moedas fornecidas por <a href="https://br.investing.com/" rel="nofollow" target="_blank" style="font-size: 11px; color: #06529D; font-weight: bold;" class="underline_link">Investing.com Brasil</a>.</span></span></div>
            </div>
        </div>
    </div>

    <script type="text/javascript"> var css_file = document.createElement("link"); css_file.setAttribute("rel", "stylesheet"); css_file.setAttribute("type", "text/css"); css_file.setAttribute("href", '//s.bookcdn.com/css/w/booked-wzs-widget-275.css?v=0.0.1'); document.getElementsByTagName("head")[0].appendChild(css_file); function setWidgetData(data) { if (typeof (data) != 'undefined' && data.results.length > 0) { for (var i = 0; i < data.results.length; ++i) { var objMainBlock = document.getElementById('m-booked-weather-bl250-3808'); if (objMainBlock !== null) { var copyBlock = document.getElementById('m-bookew-weather-copy-' + data.results[i].widget_type); objMainBlock.innerHTML = data.results[i].html_code; if (copyBlock !== null) objMainBlock.appendChild(copyBlock); } } } else { alert('data=undefined||data.results is empty'); } } </script>
    <script type="text/javascript" charset="UTF-8" src="http://widgets.booked.net/weather/info?action=get_weather_info&ver=4&cityID=w631268&type=3&scode=124&ltid=3458&domid=585&cmetric=1&wlangID=8&color=137AE9&wwidth=250&header_color=ffffff&text_color=333333&link_color=08488D&border_form=1&footer_color=ffffff&footer_text_color=333333&transparent=0"></script>
    <!-- weather widget end -->



</asp:Content>

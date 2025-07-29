<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="dashboard.aspx.vb" Inherits="PortalCT._default" %>
<%@ MasterType VirtualPath="master.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <br />
    <br />
    <br />
    <br />
    <div class ="row">
        <div class="col-sm-3">
            <asp:ImageButton ID="ImgGaleria" runat="server" Style="height:90px;width:100px" ImageUrl="~/imagens/galeria.jpg" />
        </div>
        <div class="col-sm-3">
            <asp:ImageButton ID="ImgUau" runat="server" Style="height:90px;width:100px" ImageUrl="~/imagens/logo_uau.png" />
        </div>
        <div class="col-sm-3" Style="height:90px;width:100px" >
<%--            <asp:HyperLink ID="HyperLink1" runat="server" Style="height:90px;width:100px"  ImageUrl="~/imagens/maes.jpg" NavigateUrl="~/arquivos/Dias das Maes CT1.mp4">HyperLink</asp:HyperLink>--%>
<%--            <asp:ImageButton ID="ImageButton1" runat="server" Style="height:90px;width:100px" ImageUrl="~/arquivos/russia2018.jpg" />--%>
        </div>

    </div>
          <div class="table-responsive">
                <asp:GridView ID="GridView1" CssClass=" table table-striped table-bordered table-hover" runat="server" Style="max-width: 100%" AllowPaging="True" Font-Size="10pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="Informações" HeaderText="Informações" ReadOnly="True" SortExpression="Informações" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TIConnectionString %>" SelectCommand="SELECT Informacao as [Informações]  FROM INFORME WHERE STATUS = 'Ativo'  
                                 UNION  
                                 SELECT   Ocorrencia + ': ' + Analista +' - ' +'Periodo : ' +data +' a ' + dataret as [Informações]
                                 From ocorrencias  
                                 Where areati =  'Governanca'  
                                 And STATUS = 'Pendente' "></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Informacao as [Informações]  FROM INFORME WHERE STATUS = 'Ativo'  
                                 UNION  
                                 SELECT   Ocorrencia + ': ' + Analista +' - ' +'Periodo : ' +data +' a ' + dataret as [Informações]
                                 From ocorrencias  
                                 Where areati =  'Governanca'  
                                 And STATUS = 'Pendente'  "></asp:SqlDataSource>
            </div>

      <div class="alert table" style="background-color: #337ab7; position:fixed; top:97%;height:3%"; id="lblAvisosPainel">
                <i class="halflings-icon info-sign"></i>
                <h4 style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: 12px; text-align: center; color: white; width: 600px; position: relative; left: 30%">Desenvolvido por : Ti Casa &amp; Terra</h4>
       </div>

  <div class="row" style="margin-top:3%">
        <div class="col-lg-6 col-md-6" style="margin-left:-40px">
            <label>Aniversariantes do Mês</label>
            <asp:GridView ID="grdNiver" runat="server" CssClass=" table table-striped table-bordered table-hover" AutoGenerateColumns="False" Font-Size="9px" max-width="100%" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="Dia" HeaderText="Dia" ReadOnly="True" SortExpression="Dia" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Empreendimento" HeaderText="Empreendimento" ReadOnly="True" SortExpression="Empreendimento" />
                </Columns>
            </asp:GridView>
        
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:P12OficialConnectionString %>" SelectCommand="SELECT  substring(RA_NASC,7,2) as Dia, RA_NOME AS Nome, 
            (SELECT TOP 1 ZZ3_NOMEMP FROM ZZ3010 Z3 WHERE ZZ3_FILIAL = RA_FILIAL And Z3.D_E_L_E_T_ = '') Empreendimento
             From SRA010 RA 
             Where Cast(substring(RA_NASC,5,2) as int) =  MONTH(getdate()) 
             And  RA.D_E_L_E_T_ = ' ' 
             AND RA_DEMISSA = '     '  
             And RA_CATFUNC &lt;&gt; 'A' 
            And RA_FILIAL &lt;&gt;'5201'
             ORDER BY substring(RA_NASC, 7, 2)
"></asp:SqlDataSource>
          
        </div>
       <div class="col-lg-6 col-md-6" style="margin-left:-40px">
        <label>Novos Colaboradores</label>
        <asp:GridView ID="grdAdm" runat="server" CssClass=" table table-striped table-bordered table-hover" AutoGenerateColumns="False" Font-Size="9px" max-width="100%" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                <asp:BoundField DataField="EMPREENDIMENTO" HeaderText="EMPREENDIMENTO" ReadOnly="True" SortExpression="EMPREENDIMENTO" />
            </Columns>
        
        </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:P12OficialConnectionString %>" SelectCommand="SELECT RA_NOME NOME, 
(SELECT TOP 1 ZZ3_NOMEMP FROM ZZ3010 Z3 WHERE ZZ3_FILIAL = RA_FILIAL And Z3.D_E_L_E_T_ = '') EMPREENDIMENTO  
FROM SRA010 RA 
WHERE  MONTH(RA_ADMISSA) = MONTH(GETDATE()) 
AND YEAR(RA_ADMISSA) = YEAR(GETDATE())  
AND RA_CATFUNC &lt;&gt; 'A' 
AND D_E_L_E_T_ = ' '
AND RA_FILIAL &lt;&gt; '5201'
ORDER BY RA_NOME"></asp:SqlDataSource>
       </div>


  </div>





   
  <div class="row" style="margin-top:3%; margin-bottom:5% ">
        <div class="col-lg-6 col-md-6">
         <div id="m-booked-weather-bl250-3808"; style="left:10%">
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
                <table cellpadding="0" cellspacing="0" class="booked-wzs-table-250">
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
        <div class="col-lg-6 col-md-6" >
           <div  style="z-index:1000;position:absolute;">
                <iframe frameborder="0" scrolling="no" height="131" width="453" allowtransparency="true" marginwidth="0" marginheight="0" src="https://sslfxrates.forexprostools.com/index.php?force_lang=12&pairs_ids=1617;2103;1;3;&header-text-color=%23FFFFFF&curr-name-color=%230059b0&inner-text-color=%23000000&green-text-color=%232A8215&green-background=%23B7F4C2&red-text-color=%23DC0001&red-background=%23FFE2E2&inner-border-color=%23CBCBCB&border-color=%23cbcbcb&bg1=%23F6F6F6&bg2=%23ffffff&bid=show&ask=show&last=hide&change=hide&last_update=hide"></iframe><br /><div style="width:453"><span style="float:left"><span style="font-size: 11px;color: #333333;text-decoration: none;">Cotações de Moedas fornecidas por <a href="https://br.investing.com/" rel="nofollow" target="_blank" style="font-size: 11px;color: #06529D; font-weight: bold;" class="underline_link">Investing.com Brasil</a>.</span></span></div>
            </div>
           </div>
</div>

            <script type="text/javascript"> var css_file = document.createElement("link"); css_file.setAttribute("rel", "stylesheet"); css_file.setAttribute("type", "text/css"); css_file.setAttribute("href", '//s.bookcdn.com/css/w/booked-wzs-widget-275.css?v=0.0.1'); document.getElementsByTagName("head")[0].appendChild(css_file); function setWidgetData(data) { if (typeof (data) != 'undefined' && data.results.length > 0) { for (var i = 0; i < data.results.length; ++i) { var objMainBlock = document.getElementById('m-booked-weather-bl250-3808'); if (objMainBlock !== null) { var copyBlock = document.getElementById('m-bookew-weather-copy-' + data.results[i].widget_type); objMainBlock.innerHTML = data.results[i].html_code; if (copyBlock !== null) objMainBlock.appendChild(copyBlock); } } } else { alert('data=undefined||data.results is empty'); } } </script>
<script type="text/javascript" charset="UTF-8" src="http://widgets.booked.net/weather/info?action=get_weather_info&ver=4&cityID=w631268&type=3&scode=124&ltid=3458&domid=585&cmetric=1&wlangID=8&color=137AE9&wwidth=250&header_color=ffffff&text_color=333333&link_color=08488D&border_form=1&footer_color=ffffff&footer_text_color=333333&transparent=0"></script>
<!-- weather widget end -->
   


</asp:Content>
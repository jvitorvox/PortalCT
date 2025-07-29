using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Xml;
using System.IO;

namespace WebSiteCT2023.privacidade
{
    public partial class privacy : System.Web.UI.Page
    {
        WSCT.login servicoObras = new WSCT.login();

        string dadosObra = string.Empty;
        string emp = string.Empty;
        string obra = string.Empty;
        string token = string.Empty;

        protected string Descricao, Terraplanagem, Agua, Eletrica, RedeEsgoto, Drenagem, Pavimentacao, Sinalizacao, Arborizacao, situacao, Obs, Total, Latitude, Longitude, coordenadasMapa, vendidos, disponiveis;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

  
    }
}
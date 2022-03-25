using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolProyect.BL;
using SchoolProyect.DAL;


namespace SchoolProyect
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPrueba_Click(object sender, EventArgs e)
        {
            Datos bd = new Datos();
            string r = bd.RevisarConection();
            Response.Write("<script>alert('"+r+"')</script>");
        }

        protected void btnIniciarSesion_Clic(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Aún no está habilitado esa función')</script>");
        }
    }
}
using SchoolProyect.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolProyect.DAL.Models;

namespace SchoolProyect
{
    public partial class CambioDeGrupo : System.Web.UI.Page
    {
        Operaciones opRepo = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                int[] listMatriAlum = opRepo.DevuelveAlumnos();
                foreach (int matris in listMatriAlum)
                {
                    DropDownList1.Items.Add(matris.ToString());
                }

                string[] listGrupo = opRepo.DevuelveGrupo();
                foreach (var grup in listGrupo)
                {
                    DropDownList2.Items.Add(grup.ToString());
                }
            }
        }

        protected void btnBuscarMatri(object sender, EventArgs e)
        {
            int Matri = Convert.ToInt32(DropDownList1.SelectedValue);
            GridView1.DataSource = opRepo.ListGrupAlum(Matri);
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Grupo = DropDownList2.SelectedValue;
            int Matri = Convert.ToInt32(DropDownList1.SelectedValue);                     
            opRepo.CambioGrup(Grupo, Matri);
            Response.AppendHeader("refresh", "1");
            string script = "alert('EL CAMBIO SE HIZO');";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
        }
    }
}
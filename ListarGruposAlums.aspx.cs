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
    public partial class ListarGruposAlums : System.Web.UI.Page
    {
        Operaciones opRepo = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string[] listGrupo = opRepo.DevuelveGrupo1();
                foreach (var grup in listGrupo)
                {
                    DropDownList1.Items.Add(grup.ToString());
                }

                string[] listGrupo2d = opRepo.DevuelveGrupo2();
                foreach (var grup in listGrupo2d)
                {
                    DropDownList2.Items.Add(grup.ToString());
                }

                string[] listGrupo3d = opRepo.DevuelveGrupo3();
                foreach (var grup in listGrupo3d)
                {
                    DropDownList3.Items.Add(grup.ToString());
                }

            }
        }

        protected void btnVerGrupo(object sender, EventArgs e)
        {
            string Grupo = DropDownList1.SelectedValue;
            GridView1.DataSource = opRepo.AlumGrupo1er(Grupo);
            GridView1.DataBind();

            GridView4.DataSource = opRepo.Consulta2Final(Grupo);
            GridView4.DataBind();
        }

        protected void btnVerGrup2(object sender, EventArgs e)
        {
            string Grupo = DropDownList2.SelectedValue;
            GridView2.DataSource = opRepo.AlumGrupo2do(Grupo);
            GridView2.DataBind();

            GridView5.DataSource = opRepo.Consulta2Final(Grupo);
            GridView5.DataBind();
        }

        protected void btnVerGrup3(object sender, EventArgs e)
        {
            string Grupo = DropDownList3.SelectedValue;
            GridView3.DataSource = opRepo.AlumGrupo3er(Grupo);
            GridView3.DataBind();

            GridView6.DataSource = opRepo.Consulta2Final(Grupo);
            GridView6.DataBind();
        }
    }
}
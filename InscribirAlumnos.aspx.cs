using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolProyect.BL;
using SchoolProyect.DAL.Models;

namespace SchoolProyect
{
    public partial class InscribirAlumnos : System.Web.UI.Page
    {
        Operaciones opRepo = new Operaciones();

        public void Mensaje(string mensaje)
        {
            string msg = mensaje;
            string msg1 = msg.Replace("'", " ");
            string msg2 = msg1.Replace("\r", " ");
            string msg3 = msg2.Replace("\n", " ");
            string msg4 = msg3.Replace("\\", " ");
            string msg5 = msg4.Replace("\"", " ");

            string script = "alert('" + msg5 + "');";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {                
                string[] listGrup = opRepo.DevuelveGrupo();
                foreach (string grup in listGrup)
                    DropDownList1.Items.Add(grup);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                string Grupo = DropDownList1.SelectedValue;
                string Nombre_Al = txtNombre.Text;
                string ApellidoPat = txtApellidoP.Text;
                string ApellidoMat = txtApellidoM.Text;

                //opRepo.InscribeAlum(Grupo, alum.nombre, alum.apelli_p, alum.apelli_m);
                opRepo.InscribeAlum(Grupo, Nombre_Al, ApellidoPat, ApellidoMat);
                string script = "alert('ALUMNO REGISTRADO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);

            }
            catch (FormatException)
            {
                Mensaje("Las cajas de texto se encuentran vacías");
                string script = "alert('INGRESAME BIEN LOS CAMPOS, NO SEAS MALO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
        }
    }
}
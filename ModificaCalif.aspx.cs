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
    public partial class ModificaAlumno : System.Web.UI.Page
    {
        Operaciones opRepo = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string[] listMate = opRepo.DevuelveMaterias1er();
                foreach (string mate in listMate)
                {
                    DropDownList1.Items.Add(mate);
                    DropDownList2.Items.Add(mate);
                }

                string[] listMate2 = opRepo.DevuelveMaterias2do();
                foreach (string mate in listMate2)
                {
                    DropDownList5.Items.Add(mate);
                    DropDownList6.Items.Add(mate);
                }

                string[] listMate3 = opRepo.DevuelveMaterias3er();
                foreach (string mate in listMate3)
                {
                    DropDownList8.Items.Add(mate);
                    DropDownList9.Items.Add(mate);
                }

                int[] listMatri = opRepo.DevuelveMatris1();
                foreach (int matris in listMatri)
                    DropDownList3.Items.Add(matris.ToString());

                int[] listMatri2 = opRepo.DevuelveMatris2();
                foreach (int matris in listMatri2)
                    DropDownList4.Items.Add(matris.ToString());

                int[] listMatr3 = opRepo.DevuelveMatris3();
                foreach (int matris in listMatr3)
                    DropDownList7.Items.Add(matris.ToString());

                


            }
            TextBox1.Enabled = false;
            TextBox3.Enabled = false;
            TextBox5.Enabled = false;
            TextBox7.Enabled = false;
            TextBox9.Enabled = false;
            TextBox11.Enabled = false;
        }

        protected void btnButton_Click(object sender, EventArgs e)
        {
            try
            {
                int matri = Convert.ToInt32(TextBox1.Text);
                string Mate = DropDownList1.SelectedValue;
                double calif = Convert.ToDouble(TextBox2.Text);

                opRepo.InsertarCal(matri, Mate, calif);
                Response.AppendHeader("refresh", "1");
                string script = "alert('ALUMNO DE 1ero CALIFICADO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
            catch (FormatException)
            {
                string script = "alert('INGRESAME BIEN LOS CAMPOS, NO SEAS MALO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
        }

        protected void btnButton_Click2(object sender, EventArgs e)
        {
            try
            {
                int matri = Convert.ToInt32(TextBox3.Text);
                string Mate = DropDownList2.SelectedValue;
                double calif = Convert.ToDouble(TextBox4.Text);

                opRepo.ActualCalif(matri, Mate, calif);
                Response.AppendHeader("refresh", "1");
                string script = "alert('ALUMNO CON CALIFICACIÓN ACTUALIZADA');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
            catch (FormatException)
            { 
                string script = "alert('INGRESAME BIEN LOS CAMPOS, NO SEAS MALO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";            

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            int Matri = Convert.ToInt32(DropDownList3.SelectedValue);
            TextBox1.Text = Matri.ToString();            
            TextBox3.Text = Matri.ToString();            
            GridView1.DataSource = opRepo.AlumMatri1(Matri);
            GridView1.DataBind();
        }

        protected void btnBuscar2_Click(object sender, EventArgs e)
        {
            int Matri = Convert.ToInt32(DropDownList4.SelectedValue);
            TextBox5.Text = Matri.ToString();
            TextBox7.Text = Matri.ToString();
            GridView2.DataSource = opRepo.AlumMatri2(Matri);
            GridView2.DataBind();
        }

        protected void btnButton_Click2doAño(object sender, EventArgs e)
        {
            try
            {
                int matri = Convert.ToInt32(TextBox5.Text);
                string Mate = DropDownList5.SelectedValue;
                double calif = Convert.ToDouble(TextBox6.Text);

                opRepo.InsertarCal(matri, Mate, calif);
                Response.AppendHeader("refresh", "1");
                string script = "alert('ALUMNO DE 2DO CALIFICADO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
            catch(FormatException)
            {
                string script = "alert('INGRESAME BIEN LOS CAMPOS, NO SEAS MALO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
        }

        protected void btnActualizarCalif2do(object sender, EventArgs e)
        {
            try
            {
                int matri = Convert.ToInt32(TextBox7.Text);
                string mate = DropDownList6.SelectedValue;
                double calif = Convert.ToDouble(TextBox8.Text);

                opRepo.ActualCalif(matri, mate, calif);
                Response.AppendHeader("refresh", "1");
                string script = "alert('ALUMNO CON CALIFICACIÓN ACTUALIZADA');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
            catch (FormatException)
            {
                string script = "alert('INGRESAME BIEN LOS CAMPOS, NO SEAS MALO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
        }

        protected void btnLimpiar_Click2(object sender, EventArgs e)
        {
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }

        protected void btnBuscar3_Click(object sender, EventArgs e)
        {
            int Matri = Convert.ToInt32(DropDownList7.SelectedValue);
            TextBox9.Text = Matri.ToString();
            TextBox11.Text = Matri.ToString();
            GridView3.DataSource = opRepo.AlumMatri3(Matri);
            GridView3.DataBind();
        }

        protected void btnButton_Click3erAño(object sender, EventArgs e)
        {
            try
            {
                int matri = Convert.ToInt32(TextBox9.Text);
                string mate = DropDownList8.SelectedValue;
                double calif = Convert.ToDouble(TextBox10.Text);

                opRepo.InsertarCal(matri, mate, calif);
                Response.AppendHeader("refresh", "1");
                string script = "alert('ALUMNO DE 3ER CALIFICADO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
            catch(FormatException)
            {
                string script = "alert('INGRESAME BIEN LOS CAMPOS, NO SEAS MALO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
        }

        protected void btnActualizarCalif3er(object sender, EventArgs e)
        {
            try
            {
                int matri = Convert.ToInt32(TextBox11.Text);
                string mate = DropDownList9.SelectedValue;
                double calif = Convert.ToDouble(TextBox12.Text);

                opRepo.ActualCalif(matri, mate, calif);
                Response.AppendHeader("refresh", "1");
                string script = "alert('ALUMNO CON CALIFICACIÓN ACTUALIZADA');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
            catch (FormatException)
            {
                string script = "alert('INGRESAME BIEN LOS CAMPOS, NO SEAS MALO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
        }

        protected void btnLimpiar_Click3(object sender, EventArgs e)
        {
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
        }
        //http://125.165.102.3:5070/
    }
}
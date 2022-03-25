using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolProyect.DAL.Models;
using SchoolProyect.BL;

namespace SchoolProyect
{
    public partial class ConsultarAlumnos : System.Web.UI.Page
    {
        Operaciones op = new Operaciones();

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = op.getAlumnos();
            GridView1.DataBind();
        }
    }
}
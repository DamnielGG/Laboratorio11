using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;

namespace Laboratorio11
{
    public partial class _Default : Page
    {
        static List<Nota> ListaNotas = new List<Nota>();
        static List<Alumno> ListaAlumno = new List<Alumno>();
        static List<Universidad> ListaUniversidad = new List<Universidad>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(ListaUniversidad);
            string archivo = Server.MapPath("Datos.json");
            System.IO.File.WriteAllText(archivo, json);
        }

        protected void ButtonGuardarAlumno_Click(object sender, EventArgs e)
        {
            Alumno alumno = new Alumno();
            alumno.Nombre = TextBoxNombre.Text;
            alumno.Apellido = TextBoxApellido.Text;
            alumno.Carne = TextBoxCarne.Text;
            alumno.Notas = ListaNotas.ToArray().ToList();
            ListaAlumno.Add(alumno);
            ListaNotas.Clear();
            Guardar();
        }

        protected void ButtonGuardarNotas_Click(object sender, EventArgs e)
        {
            Nota nota = new Nota();
            nota.Curso = TextBoxCurso.Text;
            nota.Punteo = Convert.ToInt16(TextBoxPunteo.Text);
            ListaNotas.Add(nota);
            GridView1.DataSource = ListaNotas;
            GridView1.DataBind();
            Guardar();
        }

        protected void ButtonGuardarUniversidad_Click(object sender, EventArgs e)
        {
            Universidad universidad = new Universidad();
            universidad.Nombre = DropDownListUniversidad.Text;
            universidad.Alumnos = ListaAlumno.ToArray().ToList();
            ListaUniversidad.Add(universidad);
            ListaAlumno.Clear();
            Guardar();
        }
    }
}
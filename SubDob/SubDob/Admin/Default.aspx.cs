using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SubDob.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IniciarAdmi_Click(object sender, EventArgs e)
        {
            /*Datos estáticos*/
            String usuario = textUser.Text;
            String contra = textPass.Text;
            if (usuario.Equals("RaViLao")  && contra.Equals("paralelepipedo1."))
            {
                Response.Write("<script>alert('Usuario Correcto')</script>");
                Response.Redirect("GestionarPaginaW.aspx");
            }
            else
            {
                Response.Write("<script>alert('Usuario InCorrecto')</script>");
            }
            
        }
    }
}
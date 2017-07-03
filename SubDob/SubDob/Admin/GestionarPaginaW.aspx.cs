using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SubDob.Admin
{
    public partial class verSubDobAdmi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgrVideo_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarVideo.aspx");
        }

        protected void manejarVideos_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminVideosLenguas.aspx");
        }
        protected void agregarNuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarVideo.aspx");
        }

        
    }
}
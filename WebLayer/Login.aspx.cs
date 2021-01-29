using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebLayer
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string sPass = txtPassword.Value.Trim();//  SE PIDE LA CONTRASEÑA Y SE LE PONE LA PROPIEDAD TRIM, QUE ELIMINA ESPACIOS

            using (DataLayer.Entities.TechnologicalWarehouseEntities1 db = new DataLayer.Entities.TechnologicalWarehouseEntities1()) //  SE INSTANCIA EL MODELO DE BASE DE DATOS DE ENTITY FRMEWORK
            {
                var log = from q in db.tblLogin
                          where q.NameUser == txtUser.Value
                          && q.PasswordUser == sPass
                          select q; //  SE HACE LA COMPARACION DE SI USUARIO Y CONTRASEÑA EXISTEN EN LA BD
                if(log.Count()>0)
                {
                    Response.Write(@"<script language='javascript'> alert('Login successfully');</script>");
                    Response.Redirect("ShowData.aspx"); //  SE MUESTRA UN MENSAJE DE PROCESO EXITOSO Y SE REDIRIGE A LA PAGINA PRINCIPAL
                }
                else
                {                    
                    Response.Write(@"<script language='javascript'> alert('Error');</script>");
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer;

namespace WebLayer
{
    public partial class ShowData : System.Web.UI.Page
    {
        DataLayer.Class.StockEntities tblElement = new DataLayer.Class.StockEntities();
        DataLayer.Class.StockMethods method = new DataLayer.Class.StockMethods();
        protected void Page_Load(object sender, EventArgs e)
        {
            dtgShowData.DataBind(); //  para actualizar el gridview apenas se carga la página
        
        }


        public void Delete() //  funciobn de borrar
        {
             try
                {
                    tblElement.ProductCode = Convert.ToInt32(txtDeleteId.Value);
                    Response.Write(@"<script language='javascript'> alert('Borrado con exito');</script>");
                    method.Delete(tblElement);

                }
                catch (Exception)
                {
                    Response.Write(@"<script language='javascript'> alert('Ha ocurrido un error');</script>");

                }

            
        }

        public void Update()
        {

            try
            {
                tblElement.ProductCode = Convert.ToInt32(txtUpdateModalCode.Value);
                tblElement.NameProduct = drpProductNameModal.Text;
                tblElement.ProductDescription = txtDescripionModal.Text;
                tblElement.ProductBrand = txtBrandModal.Text;
                tblElement.ProductModel = txtModelModal.Text;
                tblElement.ProductSerial = txtSerialModal.Text;
                tblElement.ProductStatus = drpStatusModal.Text;
                method.UpdateElement(tblElement);
                Response.Write(@"<script language='javascript'> alert('Actualizado con éxito');</script>");


            }
            catch (Exception)
            {
                Response.Write(@"<script language='javascript'> alert('Ha ocurrido un error');</script>");
            }
        }



        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Delete();
            dtgShowData.DataBind();
            RefreshDataModal();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Update();
            dtgShowData.DataBind();
            RefreshDataModal();
        }

      

        public void RefreshDataModal()
        {
            txtUpdateModalCode.Value = "";
            drpProductNameModal.Text = "";
            txtDescripionModal.Text = "";
            txtBrandModal.Text = "";
            txtModelModal.Text = "";
            txtSerialModal.Text = "";
            drpStatusModal.Text = "";

        }

        protected void btnDeleteAll_Click(object sender, EventArgs e)
        {
            method.DeleteAll();
            dtgShowData.DataBind();
        }

        //  Funciones de agregar

        public void Save()  //  Esta funcion asigna lo introducido por el usuario a los elementos 
                            //  de la tabla a traves d ela instancia con la clase de entidades, captura de errores incluida
        {
            try
            {
                tblElement.ProductCode = Convert.ToInt32(txtProductCode.Value);
                tblElement.NameProduct = dropProductName.Text;
                tblElement.ProductDescription = txtDescription.Text;
                tblElement.ProductBrand = txtBrand.Text;
                tblElement.ProductModel = txtModel.Text;
                tblElement.ProductSerial = txtSerial.Text;
                tblElement.ProductStatus = drpStatus.Text;
                method.Save(tblElement);
                Response.Write(@"<script language='javascript'> alert('Guardado exitosamente!!!');</script>");



            }
            catch (Exception)
            {
                Response.Write(@"<script language='javascript'> alert('Ha ocurrido un error');</script>");
            }

        }





       

        protected void btnSave_Click(object sender, EventArgs e) //  boton de guardar
        {
            Save();
            RefreshData();
            dtgShowData.DataBind();

        }



        protected void btnSHowData_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowData.aspx"); //  este redirige a la pághina principal
        }
        public void RefreshData()
        {
            txtProductCode.Value = "";
            dropProductName.Text = ""; //  este  limpia las casillas
            txtDescription.Text = "";
            txtBrand.Text = "";
            txtModel.Text = "";
            txtSerial.Text = "";
            drpStatus.Text = "";

        }     
    }
}
//  UNIVERSIDAD NACIONAL AUTONOMA DE NICARAGUA
//  UNAN MANAGUA
//  FACULTAD REGIONAL MULTIDISCIPLINARIA D ECARAZO
//  FAREM - CARAZO
//  CARRERA DE INGENIRÍA EN SISTEMAS DE INFORMACIÓN
//  AÑO III SEMESTRE II
//  MATERIA DE PRACTICAS DE ESPECIALIZACIÓN
//  DOCENTE ARTURO RODRIGUEZ
//  ELABORADO POR: ENDERSSON ALONSO MENDOZA MUÑOZ
//  DICIEMBRE DE 2020



using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer.Class
{
    public class StockMethods
    {

      
        DataLayer.Entities.TechnologicalWarehouseEntities1 db = new Entities.TechnologicalWarehouseEntities1(); //  Instancia del modelo de EF

        public void Save(StockEntities entitie)
        {                       
            db.InsertProduct(entitie.ProductCode, entitie.NameProduct, entitie.ProductDescription, entitie.ProductBrand,
                entitie.ProductModel, entitie.ProductSerial, entitie.ProductStatus);
            db.SaveChanges();
        }

        public void Delete(StockEntities entitie)
        {            
            db.DeleteProduct(entitie.ProductCode);
            db.SaveChanges();            
        }

        public void UpdateElement(StockEntities entitie)
        {           
            db.UpdateProduct(entitie.ProductCode, entitie.NameProduct, entitie.ProductDescription, entitie.ProductBrand,
                entitie.ProductModel, entitie.ProductSerial, entitie.ProductStatus);
            db.SaveChanges();
        }  

        public void DeleteAll()
        {
            db.DeleteAll();
        }

        //  en los metodos se utilizan procedimientos almacenaod previamente hechos en sql server, se mandan a llamar
        //  con entity framework y se le pasa por parametro los elementos que requieren, al final se invoca
        //  el metodo SaveChanges() para guardar cambios 
    }
}

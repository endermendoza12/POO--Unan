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
    public class StockEntities
    {
        //  Esta parte se encarga de traer las entidades de la tabla de la base de datos en objetos de C#,
        //  en caso de que llevara un elemento double se le pondria un signo de interrogacion
        //  ? para indicar de que se aceptan valores nulos

        public int ProductCode { get; set; }
        public string NameProduct { get; set; }
        public string ProductDescription { get; set; }
        public string ProductBrand { get; set; }
        public string ProductModel { get; set; }
        public string ProductSerial { get; set; }
        public string ProductStatus { get; set; }
    }
}

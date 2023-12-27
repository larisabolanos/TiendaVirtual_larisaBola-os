using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace TiendaVirtual_larisaBolaños.CLASES
{
    public class Articulo
    {
        public int codigoarticulo { get; set; }
        public int descripcion { get; set; }
        public float precio { get; set; }
        public int categoria { get; set; }





        public Articulo(int codigoarticulo, int articulo, float precio, int categoria)
        {

            codigoarticulo = codigoarticulo;
         
            categoria = categoria;
            descripcion = descripcion;
            this.precio = precio;

           
        }
    }
}


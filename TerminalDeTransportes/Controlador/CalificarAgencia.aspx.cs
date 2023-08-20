using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_CalificarAgencia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void IB_Calificar_Click(object sender, ImageClickEventArgs e)
    {
        A_Asignar asignar = new A_Asignar();
      
        asignar.Id_agencia = DDL_ElegirAgencia.SelectedValue;
        asignar.Puntuacion = int.Parse(DDL_Puntuacion.Text);
 
        new DAO_Asignar().agregaCalificacion(asignar);
    }
   
}
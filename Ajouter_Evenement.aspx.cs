
using DevExpress.Web;
using System.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
 
using System.Web.UI.WebControls;

public partial class Ajouter_Evenement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void callbacAjouter_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {
        try
        {


            callbacAjouter.JSProperties["cp_Insert"] = "";

            var ID_Contact = Convert.ToInt32(Request.QueryString["ID_Contact"]);

            var HD = HDebut.DateTime.TimeOfDay;
            var HF =HFin.DateTime.TimeOfDay;

            DataLayerExperienceDataContext Layer = new DataLayerExperienceDataContext();
            var ID_TypeEv = Convert.ToInt32(TxtType.Value);
            var Objet = TxtObjet.Text;
            var DateDebut = DtDateDebut.Date;
          //  var Heure = DD;
            var DateFin = DtDateFin.Date;
         //   var HeureFin = DF;
            var DescriptionEv = TxtDescriptionEv.Text;
            var Lieu = TxtLieu.Text;
            var Attribue_a = TxtAttribue_a.Text;



            Layer.insertNomenclature_Evenement(ID_TypeEv, Objet, DateDebut,HD, DateFin, HF, Lieu, DescriptionEv, ID_Contact);

            callbacAjouter.JSProperties["cp_Insert"] = "Ajouter";
        }
        catch (Exception ex) { }
    }
    
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;


public partial class DefaultRessources : System.Web.UI.Page
{
     protected void GridRessouerce_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {

        //  1 ere Methode
        // var IDSocite = e.Parameters;
        //  2 ere Methode

        //if (gridSociete.FocusedRowIndex > 0)
        //{
            var IDSocite = gridSociete.GetRowValues(gridSociete.FocusedRowIndex, "ID_Entreprise").ToString();
            SqlDataContact.SelectParameters["ID_Entreprise"].DefaultValue = IDSocite;
            
      //  }

        GridRessouerce.DataBind();
    }



    protected void gridSociete_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {
        gridSociete.DataBind();
    }

    protected void GridRessouerce_Load(object sender, EventArgs e)
    {
        if (gridSociete.FocusedRowIndex > 0)
        {
            var IDSocite = gridSociete.GetRowValues(gridSociete.FocusedRowIndex, "ID_Entreprise").ToString();

            SqlDataContact.SelectParameters["ID_Entreprise"].DefaultValue = IDSocite;
        }
    }

    protected void callbacSupprimer_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {

        callbacSupprimer.JSProperties["cp_Exist"] = "";

        DataLayerExperienceDataContext Layer = new DataLayerExperienceDataContext();
        var ID_Entreprise = Convert.ToInt32( gridSociete.GetRowValues(gridSociete.FocusedRowIndex, "ID_Entreprise"));


        var choix = e.Parameter;

        if(choix== "supprimer")
        {


      
        var req = (from p in Layer.GetContact(ID_Entreprise)
                   select p).ToList();

        if(req.Count()!= 0)
        {
            callbacSupprimer.JSProperties["cp_Exist"] = "Exist";

        }
        else
        {
            Layer.DeleteEntreprise(ID_Entreprise);
            callbacSupprimer.JSProperties["cp_Exist"] = "Supp";
        }

        }
        if (choix == "valider")
        {
            Layer.DeleteContact_byIDEntreprise(ID_Entreprise);
            Layer.DeleteEntreprise(ID_Entreprise);
            callbacSupprimer.JSProperties["cp_Exist"] = "Supp";
        }

        }

   

    protected void gridEven_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {

        if(GridRessouerce.FocusedRowIndex > -1)
        {
        var ID_Contact = GridRessouerce.GetRowValues(GridRessouerce.FocusedRowIndex, "ID_Contact") ;
        SqlDataEvenement.SelectParameters["ID_Contact"].DefaultValue = ID_Contact.ToString();

        gridEven.DataBind();

        }
    }
}
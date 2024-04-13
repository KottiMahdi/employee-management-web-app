using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PageHomeEmployer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }

    protected void GridResourceDetail_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {


        var E = GridEmplye.FocusedRowIndex;
        if (E != -1)
        {
            var Matricule = GridEmplye.GetRowValues(GridEmplye.FocusedRowIndex, "ID_Matricule").ToString();

            SqlDataResourceDetail.SelectParameters["Matricule"].DefaultValue = Matricule;
            GridResourceDetail.DataBind();
        }
    }


    protected void callbacSupprimer_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {

        callbacSupprimer.JSProperties["cp_Exist"] = "";

        DataLayerExperienceDataContext Layer = new DataLayerExperienceDataContext();
        var ID_Employes = Convert.ToInt32(GridEmplye.GetRowValues(GridEmplye.FocusedRowIndex, "ID_Employes"));


        var choix = e.Parameter;

        if (choix == "supprimer")
        {



            var req = (from p in Layer.GetEmployeeByMatricule(ID_Employes)
                       select p).ToList();

            if (req.Count() != 0)
            {
                callbacSupprimer.JSProperties["cp_Exist"] = "Exist";

            }
            else
            {
                Layer.DeleteEmployes(ID_Employes);
                callbacSupprimer.JSProperties["cp_Exist"] = "Supp";
            }

        }
        if (choix == "valider")
        {
            //Layer.DeleteContact_byIDEntreprise(ID_Employes);
            Layer.DeleteEmployes(ID_Employes);
            callbacSupprimer.JSProperties["cp_Exist"] = "Supp";
        }

    }

    protected void GridEmplye_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {
        GridEmplye.DataBind();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnValidation_Click(object sender, EventArgs e)
    {
        DataLayerExperienceDataContext Layer = new DataLayerExperienceDataContext();



        var req = (from p in Layer.UtilisateurUsers
                   where p.Email == Textlogin.Text & p.password == Textmdp.Text
                   select p).ToList();


        if ((req.Count > 0))
        {
                      
            Page.Session["UtilisateurSession"] = req[0].users;
            Page.Session["IDUser"] = req[0].id;

            Page.Response.Redirect("Default.aspx?ModuleID=10");

        }
        else { 
            Page.Response.Redirect("Contact.aspx");
        }
    }
}
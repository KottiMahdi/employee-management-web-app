using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangMotsPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var User = Page.Session["UtilisateurSession"];


        txtSession.Text = User.ToString();
    }

    protected void CallbackChangePass_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {
        CallbackChangePass.JSProperties["cp_Inser"] = " ";
        var confirmPass = PasswordConfirmTextbox.Text;


        // Update the password.

        //MembershipUser u = Membership.GetUser(userName);

        //try
        //{
        //    if (u.ChangePassword(u.GetPassword(), PasswordTextbox.Text))
        //    {
        //        CareDataContext Layer = new CareDataContext();
        //        Layer.UpdateTroubleLogging(userName);

        //        Msg.Text = "Password changed.";


        //        //if (Context.User.Identity.IsAuthenticated)
        //        //{
        //        //    try
        //        //    {
        //        //        Response.Redirect("~/");
        //        //    }
        //        //    catch (Exception)
        //        //    { }
        //        //}

        //        CallbackChangePass.JSProperties["cp_Inser"] = "add";

        //    }

        //    else
        //    {
        //        Msg.Text = "Password change failed. Please re-enter your values and try again.";
        //        CallbackChangePass.JSProperties["cp_Inser"] = "Error";
        //    }
        //}
        //catch (Exception ex)
        //{
        //    Msg.Text = "An exception occurred: " + Server.HtmlEncode(ex.Message) + ". Please re-enter your values and try again.";
        //    CallbackChangePass.JSProperties["cp_add"] = "add";
        DataLayerExperienceDataContext Layer = new DataLayerExperienceDataContext();


        var passw = txtOldPassword.Text;


        var id = Convert.ToInt32(Page.Session["IDUser"]);


        var password = PasswordTextbox.Text;
        Layer.UpdatePassordByID(password, id);
        CallbackChangePass.JSProperties["cp_Inser"] = "Changer";
    }


    protected void CallbackDate_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {
        e.Result = " ";

        var typ = txtSession.Text;

        //if (typ.Contains("@"))
        //{
        //    CareDataContext Layer = new CareDataContext();

        //    var req = (from p in Layer.aspnet_Membership where p.Email.ToString() == typ.ToString() select p).ToList();

        //    if (req.Count() == 0)
        //    {
        //        e.Result = "Enter a valid e-mail address.";
        //    }
        //}
        //else
        //{
        //    MembershipUser usrInfo = Membership.GetUser(typ);

        //    if (usrInfo == null)
        //    {
        //        e.Result = "Enter a valid UserName.";
        //    }

        //}
        

    }


    protected void CallbackDateOLD_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {
        DataLayerExperienceDataContext Layer = new DataLayerExperienceDataContext();


        var id = Convert.ToInt32(Page.Session["IDUser"]);

        var req = (from p in Layer.UtilisateurUsers
                   where p.id==id
                   select p).ToList();

        var oldpass = txtOldPassword.Text;
        var pass = req[0].password;


        if (oldpass!= pass) { 

        e.Result = "false";

        }
        else
        {
            e.Result = "true";

        }

    }



    

    protected void btnValidation_Click(object sender, EventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Drawing;
using System.IO;

public partial class Modifier_Employer : System.Web.UI.Page
{
    private static string CandidateImgPath = "~/Image/Employee/www.png";
    protected string TransfertFichierPath = System.Web.Configuration.WebConfigurationManager.AppSettings["TransfertFichierPathEquipement"].ToString();
    const string UploadDirectory = "~/Image/Employee/";

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            var ID_Matricule = Convert.ToInt32(Request.QueryString["ID_Matricule"]);


            DataLayerExperienceDataContext Layer = new DataLayerExperienceDataContext();

            var req = (from p in Layer.GetEmployeeByMatricule(ID_Matricule)
                       select p).ToList();

            TxtNom.Text = req[0].Nom;
            TxtPrenom.Text = req[0].Prenom;
            txtDateRecu.Date= req[0].Date_recrutement.GetValueOrDefault();
            txtDateNai.Date = req[0].Dat_nais.GetValueOrDefault();
            TxtEmail.Text = req[0].Email;
            TxtAdresse.Text = req[0].Adresse;
            TxtTelephone.Text = req[0].Telephone.ToString();
            TxtVille.Text = req[0].Ville;
            TxtMatricule.Text = req[0].ID_Matricule.ToString();
            CandidatImg.ImageUrl = req[0].ImageEmployer;

            if (req[0].ImageEmployer != "")
            {

                Session["image"] = req[0].ImageEmployer;


            }
            else
            {
                Session["image"] = CandidateImgPath;
            }


            ASPXDiscipline.Value = req[0].ID_Discipline.ToString();
            ASPXDiscipline.DataBind();
            ASPXSocieter.Value = req[0].ID_Societe.ToString();
            ASPXSocieter.DataBind();
            ASPxFonction.Value = req[0].ID_Fonction.ToString();
            ASPxFonction.DataBind();
            ASPXRelation.Value = req[0].ID_Relation.ToString();
            ASPXRelation.DataBind();
            ASPxEtat.Value = req[0].Etats.ToString();
            ASPxEtat.DataBind();
            ASPxNiveau.Value = req[0].ID_Niveau.ToString();
            ASPxEtat.DataBind();


        }
      
    }
    protected void uplImage_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
    {
        e.CallbackData = SavePostedFileImg(e.UploadedFile);
        Session["image"] = "Image/Employee/" + e.CallbackData;

    }
    private string SavePostedFileImg(UploadedFile uploadedFile)
    {
        string fileName = Path.Combine(MapPath(UploadDirectory), DateTime.Now.ToString("ddMMyyyymmss") + "." + uploadedFile.FileName.Split('.')[1]);
        using (System.Drawing.Image original = System.Drawing.Image.FromStream(uploadedFile.FileContent))
        {
            using (System.Drawing.Image thumbnail = PhotoUtils.CreateThumbnail(original, 100))
            {
                PhotoUtils.SaveToJpeg((Bitmap)thumbnail, fileName, 100);

            }
        }
        return DateTime.Now.ToString("ddMMyyyymmss") + "." + uploadedFile.FileName.Split('.')[1];
    }
    protected void ClbckImage_Callback(object sender, CallbackEventArgsBase e)
    {
        //onUploadEnds display the icon on the PreviewImage
        CandidateImgPath = e.Parameter;
        CandidatImg.ImageUrl = CandidateImgPath;
        CandidatImg.Width = 200;
        CandidatImg.Height = 220;
    }
    protected void callbacAjouter_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {
        try
        {


            callbacAjouter.JSProperties["cp_Insert"] = "";



            DataLayerExperienceDataContext Layer = new DataLayerExperienceDataContext();
            var Matricule = Convert.ToInt32(Request.QueryString["ID_Matricule"]);



            var Nom = TxtNom.Text;
            var Prenom = TxtPrenom.Text;
            var Telephone = Convert.ToInt32(TxtTelephone.Text);
            var Email = TxtEmail.Text;
            var Adresse = TxtAdresse.Text;
            var Fonction = Convert.ToInt32(ASPxFonction.Value);
            var Nom_de_Societe = Convert.ToInt32(ASPXSocieter.Value);
            var Ville = TxtVille.Text;
            var Discipline = Convert.ToInt32(ASPXDiscipline.Value);
            var ImageEmployer = Session["image"].ToString();

            var Etat = Convert.ToBoolean(ASPxEtat.Value);
            var Relation = Convert.ToInt32(ASPXRelation.Value);
            var Date_de_naissance = txtDateNai.Text;
            var Date_de_recrutement = txtDateRecu.Text;
            var Niveau = Convert.ToInt32(ASPxNiveau.Value);


            Layer.UpdateEmployes(Nom, Prenom, Date_de_naissance, Email, Adresse, Telephone, Fonction, Nom_de_Societe, Niveau, Ville, Discipline, Matricule, Relation, Date_de_recrutement,Etat,ImageEmployer);

            callbacAjouter.JSProperties["cp_Insert"] = "Ajouter";
        }
        catch (Exception ex) { }
    }
}
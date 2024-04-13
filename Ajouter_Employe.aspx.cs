using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using DevExpress.Web.Internal;
using System.Drawing;
using System.IO;



public partial class Ajouter_Employe : System.Web.UI.Page
{

    private static string CandidateImgPath = "~/Image/Employee/www.png";
    protected string TransfertFichierPath = System.Web.Configuration.WebConfigurationManager.AppSettings["TransfertFichierPathEquipement"].ToString();
    const string UploadDirectory = "~/Image/Employee/";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            

            CandidateImgPath = "~/Image/Employee/www.png";
            CandidatImg.ImageUrl = CandidateImgPath;

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
            var Nom = TxtNom.Text;
            var Prenom = TxtPrenom.Text;
            var Telephone = Convert.ToInt32(TxtTelephone.Text);
            var Email = TxtEmail.Text;
            var Adresse = TxtAdresse.Text;
            var Fonction = Convert.ToInt32(ASPxFonction.Value);
            var Nom_de_Societe = Convert.ToInt32(ASPXSocieter.Value);
            var Ville = TxtVille.Text;
            var ImageEmployer = Session["image"].ToString();


            var Discipline = Convert.ToInt32(ASPXDiscipline.Value);
            var Etat = Convert.ToBoolean(ASPxEtat.Value);
            var Matricule = Convert.ToInt32(TxtMatricule.Value);
           
            var Relation = Convert.ToInt32(ASPXRelation.Value);
            var Date_de_naissance = txtDateNai.Text;
            var Date_de_recrutement = txtDateRecu.Text;
            var Niveau = Convert.ToInt32(ASPxNiveau.Value);

            Layer.InsertEmployes(Nom, Prenom, Date_de_naissance, Email, Adresse, Telephone, Fonction, Nom_de_Societe, Niveau, Ville, Discipline, Matricule, Relation, Date_de_recrutement,Etat, ImageEmployer);

            callbacAjouter.JSProperties["cp_Insert"] = "Ajouter";
        }
        catch (Exception ex) { }
    }

    //protected void UploadControl_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
    //{
    //    e.CallbackData = SavePostedFile(e.UploadedFile);
    //}

    //protected string SavePostedFile(UploadedFile uploadedFile)
    //{
    //    if (!uploadedFile.IsValid)
    //        return string.Empty;
    //    string fileName = Path.ChangeExtension(Path.GetRandomFileName(), ".jpg");
    //    string fullFileName = CombinePath(fileName);
    //    using (Image original = Image.FromStream(uploadedFile.FileContent))
    //    using (Image thumbnail = new ImageThumbnailCreator(original).CreateImageThumbnail(new Size(350, 350)))
    //        ImageUtils.SaveToJpeg((Bitmap)thumbnail, fullFileName);
    //    //UploadingUtils.RemoveFileWithDelay(fileName, fullFileName, 5);
    //    return fileName;
    //}
    //protected string CombinePath(string fileName)
    //{
    //    return Path.Combine(Server.MapPath(UploadDirectory), fileName);
    //}

    //Pièces jointes

 

}
 

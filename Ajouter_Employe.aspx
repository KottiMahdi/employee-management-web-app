<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ajouter_Employe.aspx.cs" Inherits="Ajouter_Employe" %>
<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
            <style type="text/css">
                .dropZoneExternal > div,
.dropZoneExternal > img
{
    position: absolute;
}
.dropZoneExternal
{
    position: relative;
    border: 1px dashed #f17f21!important;
    cursor: pointer;
}
.dropZoneExternal,
.dragZoneText
{
    width: 200px;
    /*max-width: 350px;
    min-width: 286px;*/
    height: 200px;
}
#dragZone
{
    width: 100%;
    display: table;
}
#uploadedImage
{
    width: 100%;
}
.dropZoneText
{
    width: 300px;
    height: 150px;
    color: #fff;
    background-color: #888;
}
#dropZone
{
    top: 0;
    padding: 100px 25px;
}
.uploadControlDropZone,
.hidden
{
    display: none;
}
.dropZoneText,
.dragZoneText
{
    display: table-cell;
    vertical-align: middle;
    text-align: center;
    font-size: 20pt;
}
.dragZoneText
{
    color: #808080;
}
.dxucInlineDropZoneSys span
{
    color: #fff!important;
    font-size: 10pt;
    font-weight: normal!important;
}
.validationMessage
{
    padding: 0 20px;
    text-align: center;
}
.uploadContainer
{
    width: 100%;
    max-width: 350px;
    min-width: 286px;
    margin-top: 10px;
}
.Note
{
    max-width: 500px;
}
             </style>
    <script type="text/javascript">
             function CliAjoutEmployee() {

                callbacAjouter.PerformCallback();
             }



             function CliAjoutEntreprise() {



             }


             function EndCallBAjout(s, e) {


                 var Choix = s.cp_Insert;
              

                 if (Choix == "Ajouter") {
                    

                     txterror.SetText('Ajouter avec succès');
                    
                     PopupAlerts.Show();
                     
                 }

                 else {
                     txterror.SetText('Errore');
                     PopupAlerts.Show();

                 }
             }
             function fermerpopup() {
                 alert(100);
                 window.parent.GridEmplye.PerformCallback();
                 alert(200);
                 
                 PopupAlerts.Hide();
                 alert(300);
                 window.parent.popupWind.Hide();
             }
        </script>
   <%-- <script type="text/javascript">
        function onUploadControlFileUploadComplete(e) {
            alert('10');
            if (e.isValid) {
                alert('20');
                document.getElementById("uploadedImage").src = "Image/Employee/" + e.callbackData;
                alert('30');
            }
            alert('40');
            setElementVisible("uploadedImage", e.isValid);
            alert('50');
        }
        function onImageLoad() {
            alert('60');
            var externalDropZone = document.getElementById("externalDropZone");
            alert('70');
            var uploadedImage = document.getElementById("uploadedImage");
            alert('80');
            uploadedImage.style.left = (externalDropZone.clientWidth - uploadedImage.width) / 2 + "px";
            alert('90');
            uploadedImage.style.top = (externalDropZone.clientHeight - uploadedImage.height) / 2 + "px";
            alert('100');
            setElementVisible("dragZone", false);
            alert('110');
        }
        function setElementVisible(elementId, visible) {
            document.getElementById(elementId).className = visible ? "" : "hidden";
        }
    </script>--%>


    <script type="text/javascript">

    function Uploader_OnFileUploadComplete(args) {
        if (args.isValid) {
            ClbckImage.PerformCallback('~/Image/Employee/' + args.callbackData);
        }
    }

    function Uploader_OnFilesUploadComplete(args) {
        //Mettre a jour l'etat du btnUpload
        UpdateUploadButton();
    }
    function Uploader_OnUploadStart() {
        //Desactiver le btnUpload lorsque le telechargement de l'icon a commencer
        btnUpload.SetEnabled(false);
    }
    function UpdateUploadButton() {
        //Si le Uploader.Text != NULL setEnabled = True else False
        btnUpload.SetEnabled(uploaderCandidateImage.GetText(0) != "");
    }
</script>


    



    <form id="form1" runat="server">
        
        
    
               
        <dx:ASPxFormLayout runat="server" Width="100%" ID="formLayout" Theme="Glass" ColumnCount="2">
  
                        <Items>
                            <dx:LayoutGroup  ShowCaption="False" ColCount="1" Width="150px"  >
                              
                                <Items>
                                    <dx:LayoutItem ShowCaption="False"  >
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                           


                                        <table border="0" style="border-spacing: 0; border-collapse: collapse;" id="mainContainer">
                                            <tr>
                                                <td class="content" style="vertical-align: top; align-content: center;">
                                                    <table style="border-spacing: 0; border-collapse: collapse;">
                                                        <tr>
                                                            <td style="padding-right: 20px; vertical-align: top; text-align: center;">
                                                                <table style="border-spacing: 0; border-collapse: collapse;">

                                                                    <tr>
                                                                        <td class="caption">
                                                                            <dx:ASPxLabel ID="lblSelectImage" runat="server" AssociatedControlID="uplImage" Theme="Aqua" Font-Names="Arial">
                                                                            </dx:ASPxLabel>

                                                                        </td>
                                                                        <td>
                                                                         
                                                                                <table width="100%">
                                                                                    <tr>
                                                                                        <td colspan="2">
                                                                                            <dx:ASPxCallbackPanel ID="ClbckImage" runat="server" Width="100%" ClientInstanceName="ClbckImage" 
                                                                                    OnCallback="ClbckImage_Callback" Theme="Glass">
                                                                                    <PanelCollection>
                                                                                        <dx:PanelContent ID="PanelContent2" runat="server">
                                                                                        
                                                                                             <dx:ASPxImage ID="CandidatImg" Theme="Aqua" runat="server" Width="200" Height="220" ClientInstanceName="CandidatImg">
                                                                                            </dx:ASPxImage>
                                                                                        
                                                                                        </dx:PanelContent>
                                                                                    </PanelCollection>
                                                                                </dx:ASPxCallbackPanel>

                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="170px">

                                                                                            <dx:ASPxUploadControl ID="uplImage" ClientInstanceName="uploaderCandidateImage" runat="server"
                                                                                                 Font-Names="Arial"
                                                                                                Width="170px" OnFileUploadComplete="uplImage_FileUploadComplete" Theme="Aqua">
                                                                                                <ClientSideEvents
                                                                                                    FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete(e);}"
                                                                                                    FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete(e);}"
                                                                                                    FilesUploadStart="function(s, e) { Uploader_OnUploadStart(); }"
                                                                                                    TextChanged="function(s, e) { UpdateUploadButton(); }"></ClientSideEvents>
                                                                                                <ValidationSettings MaxFileSize="4000000"
                                                                                                    AllowedContentTypes="image/bmp,image/x-xbitmap,image/gif,image/jpeg,image/jpg,image/pjpeg,image/png,image/x-png">
                                                                                                </ValidationSettings>
                                                                                            </dx:ASPxUploadControl>

                                                                                        </td>

                                                                                        <td style="text-align: left">
                                                                                            <dx:ASPxButton ID="btnUpload" runat="server" AutoPostBack="False" ClientInstanceName="btnUpload" ClientEnabled="false"
                                                                                                BackgroundImage-ImageUrl="../../Image/icons8-checkmark-20.png"
                                                                                                Theme="Aqua" Width="30px" Font-Names="Arial">
                                                                                                <ClientSideEvents Click="function(s, e) { uploaderCandidateImage.Upload();}" />

                                                                                                      <BackgroundImage ImageUrl="../../Image/icons8-checkmark-20.png"></BackgroundImage>
                                                                                            </dx:ASPxButton>

                                                                                        </td>
                                                                                    </tr>
                                                                                </table>

 

                                                                        </td>

                                                                    </tr>
                                                                    <tr>

                                                                        <td colspan="2" style="text-align: left;">
                                                                            <dx:ASPxLabel runat="server" Text="Types d&#39;images autoris&#233;s:.jpg,,.gif,.png" Theme="Aqua" Font-Size="8pt" ID="lblAllowebMimeType" Font-Names="Arial">
                                                                            </dx:ASPxLabel>
                                                                            <br />
                                                                            <dx:ASPxLabel ID="lblMaxFileSize" runat="server" Text="Taille maximale du fichier: 4Mo" Font-Size="8pt" Theme="Aqua" Font-Names="Arial">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                    </tr>

                                                                </table>
                                                            </td>

                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>

      
                                                   </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>

                                  
                                   
                                </Items>
                            </dx:LayoutGroup>
                             <dx:LayoutGroup  ShowCaption="False" ColCount="2"  >
                                 <Items>
                                       <dx:LayoutItem Caption="Nom" >
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="TxtNom"  BackColor="LightYellow"  runat="server" Width="170px">
                                        </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>

                                    <dx:LayoutItem Caption="Date de recrutement">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                              <dx:ASPxDateEdit ID="txtDateRecu" runat="server" Width="94%" Theme="Glass"></dx:ASPxDateEdit>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Prenom">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server"  BackColor="LightYellow" ID="TxtPrenom" >
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>

                                    <dx:LayoutItem Caption="Discipline">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxComboBox ID="ASPXDiscipline"  BackColor="LightYellow" runat="server" DataSourceID="sqlDiscipline" 
                                                    TextField="Description" ValueField="ID_Discipline" >
                                                </dx:ASPxComboBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Date de naissance">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                
                                                <dx:ASPxDateEdit ID="txtDateNai" runat="server" Width="94%" Theme="Glass"></dx:ASPxDateEdit>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Niveau">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxComboBox ID="ASPxNiveau"  BackColor="LightYellow" runat="server"  DataSourceID="SqlNiveau" TextField="Nom_Niveau" ValueField="ID_Niveau" >
                                                </dx:ASPxComboBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Email">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server"  BackColor="LightYellow" ID="TxtEmail" >
                                                    <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                      <dx:LayoutItem Caption="Telephone">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server"  BackColor="LightYellow"  ID="TxtTelephone" >
                                                    <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Nom de Societe">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxComboBox ID="ASPXSocieter" runat="server" DataSourceID="sqlSocieter"
                                                     TextField="Nom_Societe"  BackColor="LightYellow" ValueField="ID_Societe">
                                                </dx:ASPxComboBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                   
                                     <dx:LayoutItem Caption="Ville">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server"  BackColor="LightYellow" ID="TxtVille" >
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                      <dx:LayoutItem Caption="Etat">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                              <dx:ASPxComboBox ID="ASPxEtat"  BackColor="LightYellow" runat="server"  DataSourceID="SqlEtat" 
                                                  TextField="Nom_Etat" ValueField="Etats" >
                                                  </dx:ASPxComboBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                       
                                   
                                    <dx:LayoutItem Caption="Fonction">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxComboBox ID="ASPxFonction" runat="server"   BackColor="LightYellow" DataSourceID="SqlFonction" TextField="Nom_Fonction" ValueField="ID_Fonction" >
                                                </dx:ASPxComboBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Matricule">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server" ID="TxtMatricule"  BackColor="LightYellow" >
                                                    <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>      
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Relation">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxComboBox ID="ASPXRelation"  BackColor="LightYellow" runat="server"  DataSourceID="SqlRelation" TextField="Nom_Relation" ValueField="ID_Relation" >
                                                </dx:ASPxComboBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                   
                                      <dx:LayoutItem Caption="Adresse" ColumnSpan="2">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxMemo runat="server" ID="TxtAdresse"   BackColor="LightYellow" Width="100%" Height="97px" >
                                                </dx:ASPxMemo>

                                                

                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>

                                 </Items>
                              </dx:LayoutGroup>
                             <dx:LayoutGroup  ShowCaption="False"  ColumnSpan="2" >
                              
                                <Items>
                                    <dx:LayoutItem ShowCaption="False">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <table style="width:100% ;text-align:right" >
                                                    <tr>
                                                        <td  style="text-align:right" >
                                                            <dx:ASPxButton ID="ASPxButton1" ClientVisible="true" Width="90px" AutoPostBack="false" runat="server" Text="Valider">
                                                                <ClientSideEvents Click="CliAjoutEmployee" />
                                                            </dx:ASPxButton>
                                                            </td>
                                                        <td style="width:100px" >
                                                            <dx:ASPxButton ID="ASPxButton" Width="90px" runat="server" AutoPostBack="false" Text="Fermer">
                                                                 <ClientSideEvents Click="function(s, e) {
                                                                               parent.window.popupWind.Hide(); 
                                                                    }
                                                                    
                                                                    " />
                                                            </dx:ASPxButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                        </Items>
                            </dx:LayoutGroup>
                        </Items>
                    </dx:ASPxFormLayout>
  
        <dx:ASPxCallback ID="callbacAjouter" ClientInstanceName="callbacAjouter" OnCallback="callbacAjouter_Callback" runat="server">
                <ClientSideEvents EndCallback="function(s, e) {
                                                                              EndCallBAjout(s,e); 
                                                                    }
                                                                    
                                                                    "  />
            </dx:ASPxCallback>
       
             <dx:ASPxPopupControl ID="PopupAlerts" ClientInstanceName="PopupAlerts" AutoUpdatePosition="false"
        runat="server" Theme="Glass" Width="400px" HeaderText="Information"
        Modal="True"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter">
        
        <ContentCollection>
            <dx:PopupControlContentControl ID="PopupControlContentControl2" runat="server">
                <table width="100%">
                    <tr align="center">

                        <td>
                            <dx:ASPxLabel ID="txterror" runat="server" ClientInstanceName="txterror" ForeColor="Red"></dx:ASPxLabel>
                        </td>

                    </tr>

                    <tr>
                        <td align="right">
                            <dx:ASPxButton ID="ASPxButton14" runat="server" Text="Fermer" Width="100%" AutoPostBack="False"
                                Theme="Glass">

                                <ClientSideEvents Click="function(s, e) {
                                    fermerpopup();
                                                    	
                                                   }"></ClientSideEvents>
                            </dx:ASPxButton>
                        </td>
                    </tr>
                </table>
            </dx:PopupControlContentControl>

        </ContentCollection>
        </dx:ASPxPopupControl>

       <asp:SqlDataSource ID="sqlDiscipline" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
            SelectCommand="SelectDiscipline"
              SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
         <asp:SqlDataSource ID="sqlSocieter" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
            SelectCommand="SelectSocieter"
              SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlFonction" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
            SelectCommand="SelectFonction"
              SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlRelation" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
            SelectCommand="SelectRelation"
              SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlNiveau" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
            SelectCommand="SelectNiveau"
              SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlEtat" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
            SelectCommand="SelectEtat"
              SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
    </form>
</body>
</html>

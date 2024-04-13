<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Utilisateur1.aspx.cs" Inherits="Utilisateur1" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function GridMenuItemClick(e) {
            if (e.item == null) return;
            var name = e.item.name;
            if (name == "add") AddUtilisateur();
            if (name == "update") EditUtilisateur();
            if (name == "delete") DeleteUtilisateur();
        }
        function AddUtilisateur() {

            GridUtilisateur.AddNewRow();
        }
        function EditUtilisateur() {

            var valueRow = GridUtilisateur.GetFocusedRowIndex();
            GridUtilisateur.StartEditRow(valueRow);
        }
        function DeleteUtilisateur() {

            var valueRow = GridUtilisateur.GetFocusedRowIndex();
            GridUtilisateur.DeleteRow(valueRow);
        }

        function DeleteUtilisateur() {
            GridUtilisateur.GetRowValues(GridUtilisateur.GetFocusedRowIndex(), 'users', SelectshowDeleteUtilisateur);

        }

        function SelectshowDeleteUtilisateur(value) {
            txterror.SetText("Souhaitez-vous réellement supprimer " + value + " ? ");
            PopupAlerts.Show();
        }



        function valider() {
            var valueRow = GridUtilisateur.GetFocusedRowIndex();
            GridUtilisateur.DeleteRow(valueRow);
            PopupAlerts.Hide();

            txterrorSuc.SetText("Supprimer avec succès");
            PopupAlertsSuc.Show();

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxPopupMenu ID="ASPxPopupUtilisateur" runat="server" ClientInstanceName="ASPxPopupUtilisateur" CssPostfix="Glass" Theme="Glass">
            <Items>


                <dx:MenuItem Name="add" Text="Ajouter ">
                    <Image Height="16px" Url="~/Image/Add.png" Width="16px">
                    </Image>
                </dx:MenuItem>

                <dx:MenuItem Name="update" Text="Modifier ">
                    <Image Height="16px" Url="~/Image/Pencil-icon.png" Width="16px">
                    </Image>
                </dx:MenuItem>
                <dx:MenuItem Name="delete" Text="Supprimer ">
                    <Image Height="16px" Url="~/Image/Delete_32x32.png" Width="16px">
                    </Image>
                </dx:MenuItem>

            </Items>
            <SubMenuStyle GutterWidth="0px" />
            <ClientSideEvents ItemClick="function(s, e) {GridMenuItemClick(e);}" />
        </dx:ASPxPopupMenu>
        <div>
            <dx:ASPxMenu ID="mnSeuilManagement" runat="server" ClientInstanceName="mnSeuilManagement" AllowSelectItem="True"
                ShowPopOutImages="True" AutoSeparators="RootOnly" Theme="Aqua" ItemAutoWidth="false" SeparatorColor="#7EACB1" Width="100%">
                <ClientSideEvents ItemClick="function(s, e) {GridMenuItemClick(e);}"></ClientSideEvents>
                <Items>
                    <dx:MenuItem Name="Seuil" Image-Url="~/Image/icons8-pc-64.png" Image-Height="16px" Text="Systeme de mesure">
                        <Items>
                            <dx:MenuItem Name="add" Text="Ajouter">
                                <Image Url="~/Image/Add.png" Width="16px" Height="16px" />
                            </dx:MenuItem>
                            <dx:MenuItem Name="update" Text="Modifier">
                                <Image Url="~/Image/Pencil-icon.png" Width="16px" Height="16px" />
                            </dx:MenuItem>
                            <dx:MenuItem Name="delete" Text="Supprimer">
                                <Image Url="~/Image/Delete_32x32.png" Width="16px" Height="16px" />
                            </dx:MenuItem>
                        </Items>
                    </dx:MenuItem>
                </Items>
            </dx:ASPxMenu>
            <dx:ASPxGridView ID="GridUtilisateur" ClientInstanceName="GridUtilisateur" Width="100%" runat="server"
                AutoGenerateColumns="False" DataSourceID="SqlUtilisateur" KeyFieldName="id"
                Theme="Aqua">
                <ClientSideEvents Init="function(s, e) { 
                      var popup = window.parent; 
                      popup.window['GridUtilisateur'] = GridUtilisateur;}"
                    ContextMenu="function(s, e) {
                                 var x = ASPxClientUtils.GetEventX(e.htmlEvent);
                                 var y = ASPxClientUtils.GetEventY(e.htmlEvent);
   
                          if(e.objectType == 'row'){
                           GridUtilisateur.SetFocusedRowIndex(e.index);
                           ASPxPopupUtilisateur.ShowAtPos(x,y); 
                                                          }
                            }" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" Visible="false" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="users" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="password" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    
                    <dx:GridViewDataComboBoxColumn  FieldName="ID_Role" Caption="Role"  >
                        <PropertiesComboBox DataSourceID="SQLRole" TextField="Nom_Role" ValueField="ID_Role"  >

                        </PropertiesComboBox>
                     </dx:GridViewDataComboBoxColumn>

                </Columns>
                <SettingsBehavior AllowFocusedRow="true" />
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlUtilisateur" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
                SelectCommand="SelectUtilisateur" DeleteCommand="DeleteUtilisateur" DeleteCommandType="StoredProcedure"
                 InsertCommand="InsertUtilisateur" InsertCommandType="StoredProcedure" 
                SelectCommandType="StoredProcedure" UpdateCommand="UpdateUtlisateur" 
                UpdateCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="users" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="ID_Role" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="users" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="ID_Role" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SQLRole" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
              
            SelectCommand="SelectRole" SelectCommandType="StoredProcedure" 
          >
             
        </asp:SqlDataSource>
            <dx:ASPxPopupControl ID="PopupAlerts" ClientInstanceName="PopupAlerts" AutoUpdatePosition="false"
                runat="server" Theme="Glass" Width="450px" HeaderText="Supprimer Employee"
                Modal="True"
                PopupHorizontalAlign="WindowCenter"
                PopupVerticalAlign="TopSides">
                <HeaderImage Url="~/Image/icons8-delete-64.png" Width="25">
                </HeaderImage>

                <ContentCollection>
                    <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server">




                        <table style="width: 100%">
                            <tr style="text-align: center">

                                <td style="text-align: center" colspan="3">
                                    <dx:ASPxLabel ID="txterror" runat="server" Font-Bold="true" ClientInstanceName="txterror" ForeColor="Red"></dx:ASPxLabel>
                                    <br />
                                    <br />
                                </td>

                            </tr>

                            <tr>
                                <td style="text-align: right">
                                    <dx:ASPxButton ID="ASPxButton3" runat="server" Text="Valider" Width="80px" AutoPostBack="False"
                                        Theme="Glass">
                                        <ClientSideEvents Click="function(s, e) {
                                                     valider();
                                                   }"></ClientSideEvents>
                                    </dx:ASPxButton>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="text-align: left">
                                    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Fermer" Width="80px" AutoPostBack="False"
                                        Theme="Glass">
                                        <ClientSideEvents Click="function(s, e) {
                                                  
                                                  
                                                   PopupAlerts.Hide();  	
                                                   }"></ClientSideEvents>
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                        </table>
                    </dx:PopupControlContentControl>

                </ContentCollection>
            </dx:ASPxPopupControl>
            <dx:ASPxPopupControl ID="PopupAlertsSuc" ClientInstanceName="PopupAlertsSuc" AutoUpdatePosition="false"
                runat="server" Theme="Glass" Width="350px" HeaderText="Information"
                Modal="True"
                PopupHorizontalAlign="WindowCenter"
                PopupVerticalAlign="TopSides">
                <HeaderImage Url="~/Image/icons8-remove-48.png" Width="25">
                </HeaderImage>

                <ContentCollection>
                    <dx:PopupControlContentControl ID="PopupControlContentControl3" runat="server">




                        <table style="width: 100%">
                            <tr style="text-align: center">

                                <td style="text-align: center">
                                    <dx:ASPxLabel ID="txterrorSuc" runat="server" Font-Bold="true" ClientInstanceName="txterrorSuc" ForeColor="Red"></dx:ASPxLabel>
                                    <br />
                                    <br />
                                </td>

                            </tr>

                            <tr>


                                <td style="text-align: center">
                                    <dx:ASPxButton ID="ASPxButton5" runat="server" Text="Fermer" Width="80px" AutoPostBack="False"
                                        Theme="Glass">
                                        <ClientSideEvents Click="function(s, e) {
                                                  
                                                   GridUtilisateur.PerformCallback(); 
                                                   PopupAlertsSuc.Hide();  	
                                                   }"></ClientSideEvents>
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                        </table>
                    </dx:PopupControlContentControl>

                </ContentCollection>
            </dx:ASPxPopupControl>
        </div>
    </form>
</body>
</html>

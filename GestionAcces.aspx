<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestionAcces.aspx.cs" Inherits="GestionAcces" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="100%">
                <tr>
                    <td style="width: 150px">
                        <dx:ASPxComboBox ID="ASPXUtilisa" BackColor="LightYellow" runat="server" DataSourceID="SqlUtilisateur"
                            TextField="users" ValueField="id">
                        </dx:ASPxComboBox>

                    </td>
                    <td style="text-align: left">
                        <dx:ASPxButton ID="ASPxButton2" ClientVisible="true" Width="90px" AutoPostBack="false" runat="server" Text="Valider">
                        </dx:ASPxButton>
                    </td>
                </tr>
            </table>
            <dx:ASPxFormLayout ID="ASPxFormLayout2" runat="server" EnableViewState="false" EncodeHtml="false" ColumnCount="3"
                RequiredMarkDisplayMode="RequiredOnly" Theme="Aqua" Width="100%">
                <Items>
                    <dx:LayoutGroup Caption="Procédure" GroupBoxStyle-Caption-Font-Bold="true" Width="33%" ColumnSpan="1">
                        <Items>
                            <dx:LayoutItem Caption=" ">
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer>


                                        <dx:ASPxListBox ID="ASPxListBox1" ClientInstanceName="GridNavBar" ImageUrlField="ImageUrl"
                                            Theme="Glass" runat="server" SelectionMode="CheckColumn" AutoGenerateColumns="False"
                                            CellPadding="4" EnableSelectAll="true" TextField="Description" ValueField="ID_NavBar"
                                            DataSourceID="SqlNavBar" Height="350px" Width="100%">

                                            
                                            <ItemImage Width="37px">
                                            </ItemImage>

                                            
                                        </dx:ASPxListBox>


                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                        </Items>
                    </dx:LayoutGroup>
                </Items>

                <Items>
                    <dx:LayoutGroup Caption="Paramétrage" GroupBoxStyle-Caption-Font-Bold="true" Width="33%" ColumnSpan="1">
                        <Items>
                            <dx:LayoutItem Caption=" ">
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer>


                                        <dx:ASPxListBox ID="ASPxListBox2" ClientInstanceName="GridNavBar" ImageUrlField="ImageUrl"
                                            Theme="Glass" runat="server" SelectionMode="CheckColumn" AutoGenerateColumns="False"
                                            CellPadding="4" EnableSelectAll="true" TextField="Description" ValueField="ID_NavBar"
                                            DataSourceID="SqlNavBar2" Height="350px" Width="100%">

                                           
                                             
                                            <ItemImage Width="37px">
                                            </ItemImage>

                                        </dx:ASPxListBox>


                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                        </Items>
                    </dx:LayoutGroup>
                </Items>
                <Items>
                    <dx:LayoutGroup Caption="Administrative" GroupBoxStyle-Caption-Font-Bold="true" Width="33%" ColumnSpan="1">
                        <Items>
                            <dx:LayoutItem Caption=" ">
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer>


                                        <dx:ASPxListBox ID="ASPxListBox3" ClientInstanceName="GridNavBar" ImageUrlField="ImageUrl"
                                            Theme="Glass" runat="server" SelectionMode="CheckColumn" AutoGenerateColumns="False"
                                            CellPadding="4" EnableSelectAll="true" TextField="Description" ValueField="ID_NavBar"
                                            DataSourceID="SqlNavBar3" Height="350px" Width="100%">



                                            <ItemImage Width="37px">
                                            </ItemImage>
                                        </dx:ASPxListBox>


                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                        </Items>
                    </dx:LayoutGroup>
                </Items>
            </dx:ASPxFormLayout>



            <asp:SqlDataSource ID="SqlNavBar" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
                SelectCommand="SelectNavBar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="sqlNavBar2" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
                SelectCommand="SelectNavBar2" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="sqlNavBar3" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
                SelectCommand="SelectNavBar3" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlUtilisateur" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
                SelectCommand="SelectUtilisateur" DeleteCommand="DeleteUtilisateur" DeleteCommandType="StoredProcedure"
                InsertCommand="InsertUtilisateur" InsertCommandType="StoredProcedure"
                SelectCommandType="StoredProcedure" UpdateCommand="UpdateUtlisateur"
                UpdateCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

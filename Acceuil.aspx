<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Acceuil.aspx.cs" Inherits="Acceuil" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body onload="initClock()">
    <form id="form1" runat="server">
        <div>
            <style>
                * {
                    margin: 0;
                    padding: 0;
                }

                .bodyDate {
                    height: 300px;
                    display: flex;
                    justify-content: center;
                    /* align-items:center;*/
                    background: #10101e;
                }

                .datetime {
                    color: #fff;
                    /*background: #10101e;*/
                    background: #2e94e3;
                    box-shadow: 0 0 30px #10101e;
                    font-family: "Segoe UI",sans-serif;
                    width: 340px;
                    padding: 15px 10px;
                    border: 3px solid #10101e;
                    border-radius: 5px;
                    /*-webkit-box-reflect: below 1px linear-gradient(transparent,rgba(255,255,255,0.1));
                transition: 0.5s;
                transition-property: background,box-shadow;*/
                }

                    .datetime:hover {
                        background: #10101e;
                    }

                .date {
                    font-size: 20px;
                    font-weight: 600;
                    text-align: center;
                    letter-spacing: 3px;
                }

                .time {
                    font-size: 60px;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                }

                    .time span:not(:last-child) {
                        position: relative;
                        margin: 0 6px;
                        font-weight: 600;
                        text-align: center;
                        letter-spacing: 3px;
                    }

                    .time span:last-child {
                        background: #ff8800;
                        font-size: 30px;
                        font-weight: 600;
                        text-transform: uppercase;
                        margin-top: 10px;
                        padding: 0 5px;
                        border-radius: 3px;
                    }
            </style>
            <style>
                .container {
                    position: relative;
                }

                .topleft {
                    position: absolute;
                }

                .dxisControl .dxis-itemTextArea {
                    top: 17px;
                    left: 17px;
                    bottom: auto;
                    width: 285px;
                    padding: 15px 16px 21px;
                    color: #fff;
                    border-radius: 5px;
                    box-shadow: 0px 4px 0px rgba(50, 50, 50, 0.3);
                    background-color: #333333;
                    background-color: rgba(0, 0, 0, 0.75);
                }

                    .dxisControl .dxis-itemTextArea a {
                        color: white;
                    }

                        .dxisControl .dxis-itemTextArea a:hover, a:focus {
                            text-decoration: underline;
                        }

                    .dxisControl .dxis-itemTextArea p {
                        color: #b0b0b0;
                    }

                    .dxisControl .dxis-itemTextArea > p {
                        margin-bottom: 0 !important;
                    }

                .dxisControl .dxis-nbDotsBottom {
                    padding: 0;
                    margin-top: -25px;
                }

                    .dxisControl .dxis-nbDotsBottom .dxis-nbSlidePanel {
                        right: 15px;
                        left: auto !important;
                        transform: matrix(1, 0, 0, 1, 0, 0) !important;
                        -webkit-transform: matrix(1, 0, 0, 1, 0, 0) !important;
                    }

                .isdemoH3 {
                    font-size: 28px !important;
                    color: white;
                    padding-bottom: 9px;
                }

                .newsticker_wrapper.BlogTwo {
                    background: #dfdfdf url(Image/tab-strip-bg.png) repeat-x 0 0;
                    font: 12px Arial, Helvetica, sans-serif;
                    color: #333;
                    border: 1px solid #a9a9a9;
                    padding: 0 !important;
                    line-height: 23px;
                    -webkit-text-size-adjust: none;
                    border-radius: 3px;
                    height: 27px;
                }

                    .newsticker_wrapper.BlogTwo.dark {
                        background: #151515;
                        color: #bdbdbd;
                        border: 1px solid #000;
                    }

                    .newsticker_wrapper.BlogTwo h4 {
                        color: #363636;
                        padding: 6px 9px;
                        margin: 0 10px 0 0;
                        font: 12px Arial, Helvetica, sans-serif;
                        overflow: hidden;
                        background: #a9a9a9 url(Image/panel-title-light-bg.gif) repeat-x 0 0;
                        text-shadow: 1px 1px 1px #E8E8E8;
                        height: 27px;
                    }

                    .newsticker_wrapper.BlogTwo.dark h4 {
                        color: #737373;
                        background: #0e0e0e url(Image/panel-title-light-bg.gif) repeat-x 0 0;
                        text-shadow: 1px 1px 1px #000;
                    }

                    .newsticker_wrapper.BlogTwo .newsticker {
                        margin: 0;
                        padding: 0;
                    }

                        .newsticker_wrapper.BlogTwo .newsticker li {
                            padding: 0 15px;
                            margin: 2px;
                            list-style-type: none;
                            list-style-image: none;
                        }

                            .newsticker_wrapper.BlogTwo .newsticker li a {
                                font: 12px Arial, Helvetica, sans-serif;
                                color: #333;
                                text-decoration: none;
                                line-height: 23px;
                            }

                    .newsticker_wrapper.BlogTwo.dark .newsticker li a {
                        color: #bdbdbd;
                    }

                    .newsticker_wrapper.BlogTwo .newsticker li a:hover {
                        color: #000;
                        text-decoration: none;
                    }

                    .newsticker_wrapper.BlogTwo.dark .newsticker li a:hover {
                        color: #fff;
                    }

                    .newsticker_wrapper.BlogTwo .newsticker_controls {
                        position: absolute;
                        top: 0;
                        left: auto;
                        right: 0;
                        list-style-type: none;
                        list-style-image: none;
                        margin: 0 0 0 10px;
                        padding: 0;
                    }

                        .newsticker_wrapper.BlogTwo .newsticker_controls li {
                            float: left;
                            height: 27px;
                            width: 15px;
                            background: url(../../Image/buttons.png) no-repeat;
                            cursor: pointer;
                            list-style-type: none;
                            list-style-image: none;
                        }

                        .newsticker_wrapper.BlogTwo .newsticker_controls .pause {
                            background-position: -11px 7px;
                        }

                        .newsticker_wrapper.BlogTwo .newsticker_controls .resume {
                            background-position: -11px -21px;
                        }

                        .newsticker_wrapper.BlogTwo .newsticker_controls .previous {
                            background-position: 4px 7px;
                        }

                        .newsticker_wrapper.BlogTwo .newsticker_controls .next {
                            background-position: -26px 7px;
                        }


                    /* Reveal */
                    .newsticker_wrapper.BlogTwo.newsticker_style_reveal .newsticker li {
                        left: 15px !important;
                    }

                    /* Scroll */
                    .newsticker_wrapper.BlogTwo.newsticker_style_scroll .newsticker li {
                        margin-right: 80px;
                        margin-top: 2px;
                        padding: 0;
                    }




                .newsticker_title {
                }
            </style>
            <style>
                .custom-nav-bar {
                    width: 100%;
                    padding: 0 !important;
                }
            </style>
            <script type="text/javascript">

                function showOrderTravail(obj, ApplicationId, ID_Patient) {
                    // window.parent.DetailRendezVous(ID)
                    window.parent.popup("InfoPatient.aspx?ApplicationId=" + ApplicationId + "&ID_Patient=" + ID_Patient, 1000, 450, "INFORMATION PATIENT");
                }





            </script>
            <script type="text/javascript">

                function Urlpage(e) {
                    /// var url = e.item.GetNavigateUrl();

                    //  alert(e.item.name);
                    //    alert(url);

                <%--  var lang = "&lang=<%= System.Threading.Thread.CurrentThread.CurrentCulture.Name%>";
                if (url.toString().indexOf(lang) == -1) {
                   // e.item.SetNavigateUrl(url);
                }--%>

                }

                function UrlpageInit(e) {
             <%--   var pane = splitter.GetPaneByName('ContentUrlPane');
                var url = pane.GetContentUrl();

                alert(url);

                var lang = "&lang=<%= System.Threading.Thread.CurrentThread.CurrentCulture.Name%>";

                if (url.toString().indexOf(lang) == -1) {
                    pane.SetContentUrl(url);
                }--%>
                }

                function EndCallbackResult() {

                    //   alert(10);
                }

                function PaneCollPage() {
                    var selectedItemName = nbMain.GetSelectedItem().name;
                    splitter.GetPaneByName('ContentUrlPane').SetContentUrl(selectedItemName);
                }

                function splitter_Init() {
                    var popup = window.parent;
                    popup.window['splitter'] = splitter;
                }
            </script>



            <script type="text/javascript">
                function OnItemClick(s, e) {
                    if (confirm("Do you really want to open '" + e.item.GetText() + "' ?"))
                        window.open(e.item.name)
                }



                function ItemChoix(s, e) {

                    var nam = e.item.GetText();


                    if (nam == "Gestion Employées" || nam == "Tableau de bord") {
                        var masterpanel = splitter.GetPaneByName('paneMenu');
                        masterpanel.Collapse(splitter.GetPaneByName('ContentUrlPane'));

                    }

                }


            </script>
            <dx:ASPxSplitter ID="splitter" ClientInstanceName="splitter" runat="server" FullscreenMode="true" Height="900" Theme="Glass">
                <ClientSideEvents Init="splitter_Init" PaneCollapsed="PaneCollPage" PaneExpanded="PaneCollPage" />
                <Panes>
                    <dx:SplitterPane Size="380px" Collapsed="false" Name="paneMenu" ShowCollapseBackwardButton="true">
                        <ContentCollection>
                            <dx:SplitterContentControl runat="server">
                                <table style="width: 100%">
                                    <tr>
                                        <td>
                                            <div style="float: left; width: 100%; margin-right: 2%">

                                                <dx:ASPxMenu ID="ASPxMenu1" ClientInstanceName="mnLinks" runat="server" Width="100%" Theme="Office365">
                                                    <Items>
                                                        <dx:MenuItem Name="itemInformationBE" Text=" " ClientEnabled="false">
                                                        </dx:MenuItem>
                                                    </Items>
                                                </dx:ASPxMenu>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="datetime">
                                                <div class="date">

                                                    <span id="dayname">Day</span>
                                                    <span id="month">Month</span>
                                                    <span id="daynum">00  </span>
                                                    <span id="year">Year  </span>

                                                </div>

                                                <div class="time">

                                                    <span id="hour">00</span>:
                                                    <span id="miutes">00</span>:
                                                    <span id="seconds">00  </span>
                                                    <span id="period">AM</span>

                                                </div>
                                            </div>

                                            <script type="text/javascript">
                                                function updateClock() {
                                                    var now = new Date();
                                                    var dname = now.getDate(),
                                                        mo = now.getMonth(),
                                                        dnum = now.getDate(),
                                                        yr = now.getFullYear(),
                                                        hou = now.getHours(),
                                                        min = now.getMinutes(),
                                                        sec = now.getSeconds(),
                                                        pe = "AM";

                                                    if (hou == 0) {
                                                        hou = 12;

                                                    }
                                                    if (hou > 12) {
                                                        hou = hou - 12;
                                                        pe = "PM";
                                                    }

                                                    Number.prototype.pad = function (digits) {

                                                        for (var n = this.toString() ; n.length < digits; n = 0 + n);
                                                        return n;

                                                    }



                                                    var months = ["Jan", "Fév", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"];
                                                    var week = ["Dimanche", "Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi"];
                                                    var ids = ["dayname", "month", "daynum", "year", "hour", "miutes", "seconds", "period"];
                                                    var values = [week[dname], months[mo], dnum.pad(2), yr, hou.pad(2), min.pad(2), sec.pad(2), pe];

                                                    for (var i = 0; i < ids.length; i++)
                                                        document.getElementById(ids[i]).firstChild.nodeValue = values[i];

                                                }
                                                function initClock() {
                                                    updateClock();
                                                    window.setInterval("updateClock()", 1);
                                                }
                                            </script>


                                        </td>
                                    </tr>
                                    <tr>
                                        <td>

                                            <div style="height: 400px; float: left; width: 100%; margin-right: 2%">

                                                <div style="float: left; width: 100%; margin-right: 2%">
                                                    <dx:ASPxMenu ID="ASPxMenu2" ClientInstanceName="mnLinks" runat="server" Width="100%" Theme="Office365">
                                                        <Items>
                                                            <dx:MenuItem Name="itemInformationBE" Text=" " ClientEnabled="false">
                                                            </dx:MenuItem>
                                                        </Items>
                                                    </dx:ASPxMenu>
                                                </div>
                                                <dx:ASPxNavBar ID="nbMain" ClientInstanceName="nbMain" runat="server" AllowSelectItem="true" Target="contentUrlPane"
                                                    EnableAnimation="true" Theme="Office365" CssClass="custom-nav-bar"
                                                    Width="100%">
                                                    <ClientSideEvents ItemClick="ItemChoix" />
                                                    <Groups>
                                                        <dx:NavBarGroup Name="NavProcedure" Text="Procédure">
                                                            <Items>
                                                                <%--<dx:NavBarItem Text="Tableau de bord" Image-Width="48px" Image-Height="48px" Name="Pagehomes.aspx" Image-Url="~/Image/icons8-dashboard-layout-48.png" Selected="true" NavigateUrl="~/Pagehomes.aspx">
                                                                </dx:NavBarItem>--%>
                                                                <dx:NavBarItem Text="Gestion Employées" Image-Width="32px" Image-Height="32px" Image-Url="Image/icons8-user-groups-48.png" NavigateUrl="~/PageHomeEmployer.aspx ">
                                                                </dx:NavBarItem>


                                                            </Items>
                                                        </dx:NavBarGroup>


                                                        <dx:NavBarGroup Name="navBarGrpTechnicalData" Text="Paramétrage" Visible="true">

                                                            <Items>

                                                                <dx:NavBarItem Text="   Fonction" Image-Width="25px" Image-Height="25px" Image-Url="Image/icons8-web-design-64.png" NavigateUrl="~/Fonction.aspx">
                                                                </dx:NavBarItem>
                                                                <dx:NavBarItem Text="   Niveau" Image-Width="25px" Image-Height="25px" Image-Url="Image/icons8-level-up-48.png" NavigateUrl="~/Niveau.aspx">
                                                                </dx:NavBarItem>
                                                                <dx:NavBarItem Text="   Etats" Image-Width="25px" Image-Height="25px" Image-Url="Image/icons8-stats-32.png" NavigateUrl="~/Etats.aspx">
                                                                </dx:NavBarItem>
                                                                <dx:NavBarItem Text="   Discipline" Image-Width="25px" Image-Height="25px" Image-Url="Image/icons8-hub-64.png" NavigateUrl="~/ParametrageDiscipline.aspx">
                                                                </dx:NavBarItem>
                                                                <dx:NavBarItem Text="   Societer" Image-Width="25px" Image-Height="25px" Image-Url="Image/icons8-business-building-48.png" NavigateUrl="~/Societer.aspx">
                                                                </dx:NavBarItem>
                                                                <dx:NavBarItem Text="   Relations" Image-Width="25px" Image-Height="25px" Image-Url="Image/icons8-family-48.png" NavigateUrl="~/Relations.aspx">
                                                                </dx:NavBarItem>
                                                                <dx:NavBarItem Text="   Role" Image-Width="25px" Image-Height="25px" Image-Url="Image/icons8-pen-and-paper-64.png" NavigateUrl="~/Role.aspx">
                                                                </dx:NavBarItem>
                                                                 

                                                            </Items>

                                                        </dx:NavBarGroup>

                                                        <dx:NavBarGroup Name="Ad" Expanded="false" Text="Administrative" Visible="true">
                                                            <Items>
                                                                <dx:NavBarItem Text="   Utilisateur" Image-Width="25px" Image-Height="25px" Image-Url="Image/icons8-web-accessibility-48.png" NavigateUrl="~/Utilisateur1.aspx">
                                                                </dx:NavBarItem>
                                                                <dx:NavBarItem Text="   Gestion d'acces" Image-Width="25px" Image-Height="25px" Visible="false" Image-Url="Image/permission_settings.png" NavigateUrl="~/GestionAcces.aspx" >
                                                                </dx:NavBarItem>
                                                            </Items>

                                                        </dx:NavBarGroup>
                                                        <dx:NavBarGroup Text="Paramétrage" Expanded="false" Visible="false">

                                                            <Items>
                                                                <dx:NavBarItem Text="Users" Image-Url="~/Image/BO_Users.png">
                                                                </dx:NavBarItem>
                                                                <dx:NavBarItem Text="Notes" Image-Url="~/Image/BO_Notes_Large.png">
                                                                </dx:NavBarItem>
                                                                <dx:NavBarItem Text="Reports" Image-Url="~/Image/BO_Reports_Large.png">
                                                                </dx:NavBarItem>
                                                            </Items>
                                                        </dx:NavBarGroup>
                                                    </Groups>
                                                </dx:ASPxNavBar>
                                            </div>

                                        </td>
                                    </tr>
                                </table>
                            </dx:SplitterContentControl>
                        </ContentCollection>
                    </dx:SplitterPane>
                    <dx:SplitterPane Name="ContentUrlPane" ScrollBars="Auto" ContentUrlIFrameName="contentUrlPane" ContentUrl="~/PageHomeEmployer.aspx">
                        <ContentCollection>
                            <dx:SplitterContentControl ID="splContentCtrlSettings" runat="server">
                            </dx:SplitterContentControl>
                        </ContentCollection>
                    </dx:SplitterPane>
                </Panes>
            </dx:ASPxSplitter>


        </div>
    </form>
</body>
</html>

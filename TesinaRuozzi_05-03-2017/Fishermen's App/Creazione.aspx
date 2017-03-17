<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Creazione.aspx.cs" Inherits="Fishermen_s_App.Creazione" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>MEME Generator</h1>

            </div>
        </div>

        <%-- Canvas --%>

    <div id="box1" style="">
            <h2>Step 1: Upload Meme Template:</h2>
            <input id="ifile" type="file" autocomplete="off" />
        </div>

        <div id="box2" class="container" style="display: none;">
            <h2>Step 2: Write Top & Bottom Lines:</h2>
            <div class="col-md-4">
                <div runat="server" style="margin:3%; padding:1%;" class="row">
                    <input id="topline" placeholder="TOP LINE" autocomplete="off" />
                </div>
                <div runat="server" style="margin:3%; padding:1%;" id="riga1" class="row">
                    <input id="testoRig1" placeholder="TOP LINE" autocomplete="off" />
                </div>
                <div runat="server" style="margin:3%; padding:1%;" id="riga2" class="row">
                    <input id="testoRig2" placeholder="TOP LINE" autocomplete="off" />
                </div>
                <div runat="server" style="margin:3%; padding:1%;" id="riga3" class="row">
                    <input id="testoRig3" placeholder="TOP LINE" autocomplete="off" />
                </div>
                <div runat="server" style="margin:3%; padding:1%;" id="riga4" class="row">
                    <input id="testoRig4" placeholder="TOP LINE" autocomplete="off" />
                </div>
                <div runat="server" style="margin:3%; padding:1%;" id="riga5" class="row">
                    <input id="testoRig5" placeholder="TOP LINE" autocomplete="off" />
                </div>
                <div runat="server" style="margin:3%; padding:1%;" id="riga6" class="row">
                    <input id="testoRig6" placeholder="TOP LINE" autocomplete="off" />
                </div>
                <div runat="server" style="margin:3%; padding:1%;" id="riga7" class="row">
                    <input id="testoRig7" placeholder="TOP LINE" autocomplete="off" />
                </div>
                <div runat="server" style="margin:3%; padding:1%;" class="row">
                    <input id="bottomline" placeholder="BOTTOM LINE" autocomplete="off" />
                </div>
                <div runat="server" style="background-color: red;" class="row">
                    <a style="text-decoration: none; color:black; text-align:center;" id="Aggiung">aggiungi campo di testo</a>
                </div>
            </div>
            
                  <div class="col-md-8" style="margin-top: 2%; width: 65%; text-align: center;">
            <canvas id="c" style="width: 100%;"></canvas>
        </div>
                
        </div>

        <br />
        <br />
        <%--<a href="">Make Another Meme!</a>--%>
    </div>

    <script runat="server" type="text/javascript" src="Scripts/MemeGenScript.js"></script>


</asp:Content>

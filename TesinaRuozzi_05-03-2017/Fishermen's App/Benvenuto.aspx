<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Benvenuto.aspx.cs" Inherits="Fishermen_s_App.Benvenuto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Benvenuto</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-2 col-md-offset-2">
                <asp:Image ID="UserProfile" runat="server" Height="140px" Width="140px" CssClass="img-responsive img-thumbnail " />
            </div>
            <div class="col-md-3">
                <h3>Benvenuto <asp:Literal ID="UserName" runat="server"></asp:Literal></h3>
                <br />
                <h5>Sei registrato dal: <asp:Literal ID="UserRegDate" runat="server"></asp:Literal></h5>
            </div>
        </div>

        <br />
        <br />

        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <ul class="nav nav-pills nav-justified">
                    <li><a data-toggle="tab" href="#Modify">Modifica il tuo profilo</a></li>
                    <li><a data-toggle="tab" href="#Memes">I tuoi MEME</a></li>
                </ul>
            </div>
        </div>

        <div class="tab-content"> 
            <div id="Modify" class="tab-pane">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1>Aggiorna il tuo profilo</h1>
                            <p>Lascia vuoto il campo se non desideri modificarlo</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h4>Modifica Nome o Email</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Name" runat="server" Text="Nome profilo"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextName" runat="server" TextMode="SingleLine"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="EMail" runat="server" Text="Posta elettronica"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextEMail" runat="server" TextMode="Email"></asp:TextBox>
                        </div>                        
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h4>Modifica Password</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="ConfirmPassword" runat="server" Text="Password"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextConfirmPassword" runat="server" TextMode="Password" ></asp:TextBox>
                            <asp:CompareValidator runat="server" ControlToValidate="TextConfirmPassword" ControlToCompare="TextPassword" CssClass="alert-danger" ErrorMessage="La Password e la Password di conferma devono coincidere!"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2 col-md-offset-5">
                            <br />
                            <asp:Button ID="Update" class="btn" runat="server" Text="Aggiorna" OnClick="Update_Click" />
                            <br />
                            <asp:PlaceHolder runat="server" ID="OkMessage" Visible="false">
                                <p class="text-success" >
                                    <asp:Literal runat="server" ID="OkText" />
                                </p>
                            </asp:PlaceHolder>
                            <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                                <p class="text-danger">
                                    <asp:Literal runat="server" ID="FailureText" />
                                </p>
                            </asp:PlaceHolder>
                        </div>
                    </div>
                </div>                
            </div>

            <div id="Memes" class="tab-pane">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1>I tuoi meme</h1>
                        </div>
                    </div>
                    <asp:PlaceHolder ID="NoMemes" Visible="false" runat="server">
                        <div class="row">
                            <h4>Non hai ancora realizzato un Meme,<br /><a href="Creazione.aspx" class="alert-link">Vuoi crearne uno ora?</a></h4>
                        </div>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="OkMemes" Visible="false" runat="server">
                        <asp:Repeater runat="server">

                        </asp:Repeater>
                    </asp:PlaceHolder>
                </div>
            </div>

        </div>


    </div>
</asp:Content>

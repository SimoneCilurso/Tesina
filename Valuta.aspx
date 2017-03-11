<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Valuta.aspx.cs" Inherits="Fishermen_s_App.Valuta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    PROVA DI MODIFICA
    
    
    <%--<asp:PlaceHolder ID="Load" runat="server" Visible="true">   
        <asp:Repeater runat="server" ID="visMeme" OnItemDataBound="visMeme_ItemDataBound" >
            <ItemTemplate>
                <div class="row" style="margin: 0px;">
                    <div class="col-md-2 col-xs-1"></div>
                    <div class="col-md-8 col-xs-10" style="text-align:center; border: solid 3px black; margin:0px;">
                        <br />
                        <asp:Image ID="aspImg" runat="server" CssClass="img-rounded <%--ImgValuta img-responsive center-block" />

                        <br />
                        <asp:Literal ID="visNome" runat="server"></asp:Literal>
                        <br />
                        <asp:Literal ID="visDescrizione" runat="server"></asp:Literal>
                        <br />
                        <asp:Literal ID="visAutore" runat="server"></asp:Literal>
                        <br />
                        <asp:Literal ID="visDataCrea" runat="server"></asp:Literal>
                        <br />
                        <img id="s1" src="Images/Immagini%20WebApp/Empty.gif" alt="1 stella" title="1 stella" class="stelle" />
                        <img id="s2" src="Images/Immagini%20WebApp/Empty.gif" alt="2 stella" title="2 stella" class="stelle" />
                        <img id="s3" src="Images/Immagini%20WebApp/Empty.gif" alt="3 stella" title="3 stella" class="stelle" />
                        <img id="s4" src="Images/Immagini%20WebApp/Empty.gif" alt="4 stella" title="4 stella" class="stelle" />
                        <img id="s5" src="Images/Immagini%20WebApp/Empty.gif" alt="5 stella" title="5 stella" class="stelle" />
                        <br />
                        <br />
                    </div>
                    <div class="col-md-2 col-xs-1"></div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="Empty" runat="server" Visible="false">
        <div class="col-md-4" >
        </div>
        <div class="col-md-4" >
            <asp:Literal ID="noUser" runat="server" Text="There aren't users in the DataBase :(" ></asp:Literal>
        </div>
        <div class="col-md-4" >
        </div>
    </asp:PlaceHolder>--%>


    <div class="container" runat="server">
       <div class="row">
           <h1 id="titolo" runat="server"></h1>
       </div>
       <div class="row">
           <div class="col-md-8">
               <asp:Image ID="ImgMeme" runat="server" />
           </div>
           <div class="col-md-4">
               <div class="row">
                   <h4 runat="server" id="AutoreTxt"></h4>
               </div>
               <div class="row">
                   <h4 runat="server" id="DescrizioneTxt"></h4>
               </div>
               <div class="row">
                   <h4 runat="server" id="CategoriaTxt"></h4>
               </div>
               <div class="row">
                   <h4 runat="server" id="DataTxt"></h4>
               </div>
           </div>
       </div>

    <div class="row">
        <div class="col-md-2" style="text-align: center;" >
            <button id="ValM" onclick="ValMClick()">-</button>
           <%-- <asp:Button ID="ValMeno" runat="server" OnClick="ValMeno_Click"   Text="-" />--%>
        </div>
        <div class="col-md-1" style="text-align: center;" runat="server" id="val1" >
            <p>1</p>
            <%--<asp:literal  runat="server" Text="1" ></asp:literal>--%>
        </div>
        <div class="col-md-1" style="text-align: center;"  runat="server" id="val2">
            <p>2</p>
           <%-- <asp:literal  runat="server" Text="2" ></asp:literal>--%>
        </div>
        <div class="col-md-1" style="text-align: center;"  runat="server" id="val3">
            <p>3</p>
            <%--<asp:literal  runat="server" Text="3" ></asp:literal>--%>
        </div>
        <div class="col-md-1"  style="text-align: center;" runat="server" id="val4">
            <p>4</p>
            <%--<asp:literal  runat="server" Text="4" ></asp:literal>--%>
        </div>
        <div class="col-md-1" style="text-align: center;"  runat="server" id="val5">
            <p>5</p>
         <%--   <asp:literal  runat="server" Text="5" ></asp:literal>--%>
        </div>
        <div class="col-md-2" style="text-align: center;" runat="server">
           <button id="ValP">+</button>
       <%--     <asp:Button ID="ValPiu" runat="server" OnClick="ValPiu_Click"   Text="+" />--%>
        </div>
    </div>

       <div class="row">
           <asp:Button runat="server" ID="sendValuta" OnClick="sendValuta_Click" Text="invia valutazione" />
       </div>
   </div>
    <script type="text/javascript">
        var uri = "api/Meme";
        var ValutazioneCorrente = 0;
        var VM = document.getElementById("ValM");
        var VP = document.getElementById("ValP");
        var V1 = document.getElementById("Val1");
        var V2 = document.getElementById("Val2");
        var V3 = document.getElementById("Val3");
        var V4 = document.getElementById("Val4");
        var V5 = document.getElementById("Val5");

        $(document).ready(function () {

            $("#ValP").click(function(){
                
                if (ValutazioneCorrente != 5) {
                    ValutazioneCorrente = ValutazioneCorrente + 1;
                    switch (ValutazioneCorrente) {

                        case 2:

                            V1.style.backgroundColor = "red";
                            V2.style.backgroundColor = "red";
                            V3.style.backgroundColor = "white";
                            V4.style.backgroundColor = "white";
                            V5.style.backgroundColor = "white";
                            break;
                        case 3:
                            V1.style.backgroundColor = "red";
                            V2.style.backgroundColor = "red";
                            V3.style.backgroundColor = "red";
                            V4.style.backgroundColor = "white";
                            V5.style.backgroundColor = "white";
                            break;
                        case 4:
                            V1.style.backgroundColor = "red";
                            V2.style.backgroundColor = "red";
                            V3.style.backgroundColor = "red";
                            V4.style.backgroundColor = "red";
                            V5.style.backgroundColor = "white";
                            break;
                        case 5:
                            V1.style.backgroundColor = "red";
                            V2.style.backgroundColor = "red";
                            V3.style.backgroundColor = "red";
                            V4.style.backgroundColor = "red";
                            V5.style.backgroundColor = "red";
                            break;
                    }
                }

            })
        });




        function ValPClick() {












            if (ValutazioneCorrente != 5) {
                ValutazioneCorrente = ValutazioneCorrente + 1;
                switch (ValutazioneCorrente) {
                    
                    case 2:

                        V1.style.backgroundColor = "red";
                        V2.style.backgroundColor = "red";
                        V3.style.backgroundColor = "white";
                        V4.style.backgroundColor = "white";
                        V5.style.backgroundColor = "white";
                        break;
                    case 3:
                        V1.style.backgroundColor = "red";
                        V2.style.backgroundColor = "red";
                        V3.style.backgroundColor = "red";
                        V4.style.backgroundColor = "white";
                        V5.style.backgroundColor = "white";
                        break;
                    case 4:
                        V1.style.backgroundColor = "red";
                        V2.style.backgroundColor = "red";
                        V3.style.backgroundColor = "red";
                        V4.style.backgroundColor = "red";
                        V5.style.backgroundColor = "white";
                        break;
                    case 5:
                        V1.style.backgroundColor = "red";
                        V2.style.backgroundColor = "red";
                        V3.style.backgroundColor = "red";
                        V4.style.backgroundColor = "red";
                        V5.style.backgroundColor = "red";
                        break;
                }
            }
        }
        function ValMClick() {
            if (ValutazioneCorrente != 1) {
                ValutazioneCorrente = ValutazioneCorrente - 1;
                switch (ValutazioneCorrente) {
                    case 1:
                        V1.style.backgroundColor = "red";
                        V2.style.backgroundColor = "white";
                        V3.style.backgroundColor = "white";
                        V4.style.backgroundColor = "white";
                        V5.style.backgroundColor = "white";
                        break;
                    case 2:
                        V1.style.backgroundColor = "red";
                        V2.style.backgroundColor = "red";
                        V3.style.backgroundColor = "white";
                        V4.style.backgroundColor = "white";
                        V5.style.backgroundColor = "white";
                        break;
                    case 3:
                        V1.style.backgroundColor = "red";
                        V2.style.backgroundColor = "red";
                        V3.style.backgroundColor = "red";
                        V4.style.backgroundColor = "white";
                        V5.style.backgroundColor = "white";
                        break;
                    case 4:
                        V1.style.backgroundColor = "red";
                        V2.style.backgroundColor = "red";
                        V3.style.backgroundColor = "red";
                        V4.style.backgroundColor = "red";
                        V5.style.backgroundColor = "white";
                        break;
                 
                }
            }
        }
    </script>
</asp:Content>

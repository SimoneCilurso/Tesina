using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fishermen_s_App.Models;

namespace Fishermen_s_App
{
    public partial class Valuta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Meme meme1 = new Meme();
                meme1.Nome = "Meme1";
                meme1.Percorso = "/Memes/meme1.jpg";
                meme1.Autore = "Lorenzo Ruozzi";
                meme1.DataCreazione = System.DateTime.Now;
                meme1.Descrizione = "ciao ciao";

                Meme meme2 = new Meme();
                meme2.Nome = "Meme2";
                meme2.Percorso = "/Memes/meme2.jpg";
                meme2.Autore = "Lorenzo Ruozzi";
                meme2.DataCreazione = System.DateTime.Now;
                meme2.Descrizione = "ciao ciao";

                List<Meme> listMeme = new List<Meme>();

                listMeme.Add(meme1);
                listMeme.Add(meme2);

                //if (listMeme == null)
                //{
                //    Empty.Visible = true;
                //    Load.Visible = false;
                //}
                //else
                //{
                //    Empty.Visible = false;
                //    Load.Visible = true;
                //    visMeme.DataSource = listMeme;
                //    visMeme.DataBind();

                //}
            }
        }

        protected void visMeme_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                var Item = (Meme)e.Item.DataItem;
                var litNome = (Literal)e.Item.FindControl("visNome");
                var litAutore = (Literal)e.Item.FindControl("visAutore");
                var litDesc = (Literal)e.Item.FindControl("visDescrizione");
                var litDataCrea = (Literal)e.Item.FindControl("visDataCrea");                
                var aspImage = (Image)e.Item.FindControl("aspImg");
                litNome.Text = (String)Item.Nome;
                litDesc.Text = (String)Item.Descrizione;
                litAutore.Text = (String)Item.Autore;
                litDataCrea.Text = Item.DataCreazione.ToString();
                aspImage.ImageUrl = Item.Percorso;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fishermen_s_App.Models;
using Fishermen_s_App.Service;

namespace Fishermen_s_App
{
    public partial class Benvenuto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Context.User.Identity.Name);
                Utente utente = UtenteService.GetUtenteById(id);
                if (utente==null)
                {
                    utente = new Utente();
                    utente.Nome = "gigalollo";
                    utente.ImgProfilo = "/Images/Users/User1.jpg";
                    utente.Password = "ciaone";
                    utente.Email = "ciao@gmail.com";
                    utente.DataRegistrazione = System.DateTime.Now;
                    utente.DataUltimoAggiornamento = System.DateTime.Now;
                }

                UserProfile.ImageUrl = utente.ImgProfilo;
                UserName.Text = utente.Nome;
                UserRegDate.Text = utente.DataRegistrazione.ToString();

                //Ha creato Meme l'utente?
                //funzione per guardare restituisce true o false

                NoMemes.Visible = true;
                OkMemes.Visible = false;
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            bool mod = false;
            int id = Convert.ToInt32(Context.User.Identity.Name);
            Utente utente = UtenteService.GetUtenteById(id);
            if (TextName.Text != "")
            {
                utente.Nome = TextName.Text;
                mod = true;
            }
            if (TextEMail.Text != "")
            {
                utente.Email = TextEMail.Text;
                mod = true;
            }
            if (TextPassword.Text != "")
            {
                utente.Password = TextPassword.Text;
                mod = true;
            }
            if (mod==true)
            {
                utente.DataUltimoAggiornamento = System.DateTime.Now;
                int res = UtenteService.Save(utente);
                if (res == 1)
                {
                    OkMessage.Visible = true;
                    OkText.Text = "Complimenti! Aggiornamento completato";
                } else if (res == -1)
                {
                    ErrorMessage.Visible = true;
                    FailureText.Text = "Errore! Impossibile contattare il database";
                }
            }

        }
    }
}
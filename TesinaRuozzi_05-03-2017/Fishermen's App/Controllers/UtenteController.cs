using Fishermen_s_App.Models;
using Fishermen_s_App.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Fishermen_s_App.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class UtenteController
    {
        [HttpGet]
        public Utente getUtenteById(int id)
        {
            return UtenteService.GetUtenteById(id);
        }

        [HttpGet]
        public int isExistingEmail(string mail) //Restituisce 1 se esiste, 0 se non esiste e -1 se c'è un errore
        {
            return UtenteService.isExistingEmail(mail);
        }

        [HttpPost]
        public int Save (Utente user) //Restituisce 1 se l'operazione ha avuto successo, -1 se ha fallito
        {
            return UtenteService.Save(user);
        }

    }
}
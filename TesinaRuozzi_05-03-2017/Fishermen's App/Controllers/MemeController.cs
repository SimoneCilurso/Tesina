using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Fishermen_s_App.Models;
using System.Web.Http.Cors;

namespace Fishermen_s_App.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class MemeController : ApiController
    {

        [HttpGet]
        public Meme getNewMeme()
        {
            return null;
        }

        [HttpGet]
        public int getProvVal(int valAtt, bool isPiu )
        {
            if (isPiu)
            {
                return valAtt++;
            } else
            {
                return valAtt--;
            }
        }


    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Fishermen_s_App.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class StickerController : ApiController
    {

    }
}

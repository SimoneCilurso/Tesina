﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace Fishermen_s_App
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            config.EnableCors();

            config.MapHttpAttributeRoutes();



            config.Routes.MapHttpRoute(
               name: "DefaultAction",
               routeTemplate: "api/{controller}/{action}/{id}",
               defaults: new { id = RouteParameter.Optional }
           );

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}

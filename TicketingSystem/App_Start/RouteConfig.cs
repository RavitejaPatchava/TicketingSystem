using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace TicketingSystem
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "DefaultLocalized",
                url: "{language}/{controller}/{action}/{id}",
                constraints: new { language = "en-US|fr-CA" },
             //constraints: new { lang = @"(\w{2})|(\w{2}-\w{2})" },   // en or en-US
             defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
);
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "TicketRequests", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}

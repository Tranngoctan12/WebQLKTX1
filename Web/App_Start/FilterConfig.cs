﻿using System.Web;
using System.Web.Mvc;
using Web.Middlewares;

namespace Web
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            //filters.Add(new HandleErrorAttribute());
          //filters.Add(new CheckUserSessionAttribute());
        }
    }
}

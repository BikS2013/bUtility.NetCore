﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace bUtility.Logging
{
    public static class Extensions
    {
        public static string ToJSON(this Exception ex)
        {
            Newtonsoft.Json.JsonSerializerSettings settings = new Newtonsoft.Json.JsonSerializerSettings();
            settings.Formatting = Newtonsoft.Json.Formatting.Indented;
            var text = Newtonsoft.Json.JsonConvert.SerializeObject(ex, settings);
            return text;
        }

    }
}

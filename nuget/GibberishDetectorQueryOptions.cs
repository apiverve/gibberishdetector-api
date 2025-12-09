using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.GibberishDetector
{
    /// <summary>
    /// Query options for the Gibberish Detector API
    /// </summary>
    public class GibberishDetectorQueryOptions
    {
        /// <summary>
        /// Text to analyze (max 10,000 characters)
        /// Example: asdfghjkl qwerty
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }
    }
}

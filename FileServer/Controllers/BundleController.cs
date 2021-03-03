using System.Collections.Generic;
using System.IO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace FileServer.Controllers
{
    public class BundleInfo
    {
        public string Name;
        public string Version;
    }

    [ApiController]
    [Route("[controller]")]
    public class BundleController : ControllerBase
    {
        private readonly ILogger<BundleController> mLogger;

        public BundleController(ILogger<BundleController> logger)
        {
            mLogger = logger;
        }

    }
} 
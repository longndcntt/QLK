using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLKho.Model
{
    public class DataProvider
    {
        private static DataProvider _Instance;

        public DataProvider()
        {
            DB = new QLKHOEntities();
        }

        public static DataProvider Instance { get { if (_Instance == null) _Instance = new DataProvider(); return _Instance;  } set => Instance = value; }

        public QLKHOEntities DB { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;

namespace ALX_MPES_BOL
{
    public partial class TBL_Departement
    {
        DataClasses1DataContext dept = new DataClasses1DataContext("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");
        public TBL_Departement[] searchallDept()
        {
            var search = from cc in dept.TBL_Departements
                         select cc;
            return search.ToArray<TBL_Departement>();
        }
        public TBL_Departement[] searchDeptbyid()
        {
            var search = from cc in dept.TBL_Departements
                         where cc.Dept_code==_Dept_code
                         select cc;
            return search.ToArray<TBL_Departement>();
        }
        public string registerDept()
        {

            String reg = Convert.ToString(dept.AddDept(_Dept_code,_Dept_name));
            return reg;
        }
    }
}
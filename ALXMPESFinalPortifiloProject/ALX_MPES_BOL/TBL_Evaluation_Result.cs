using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ALX_MPES_BOL
{
    public partial class TBL_Evaluation_Result
    {
        DataClasses1DataContext res=new DataClasses1DataContext("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");
        public String addstudresult()
        {
            String studres = Convert.ToString(res.addevaulationresult(_mentor_name,_evaluator_id,_result));
            return studres;
        }
        public TBL_Evaluation_Result[] searchstudresultbyname()
        {
            var search = from cc in res.TBL_Evaluation_Results
                         where cc.mentor_name == _mentor_name 
                         select cc;
            return search.ToArray<TBL_Evaluation_Result>();
        }
    }
}
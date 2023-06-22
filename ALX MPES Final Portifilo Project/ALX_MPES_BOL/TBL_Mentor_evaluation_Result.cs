using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ALX_MPES_BOL
{
    public partial class TBL_Mentor_evaluation_Result
    {
        DataClasses1DataContext average=new DataClasses1DataContext("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");

        public String addaverageresult()
        {
            String studres = Convert.ToString(average.averageresult(_mentor_name,_Totalresult));
            return studres;
        }
        public TBL_Mentor_evaluation_Result[] searchaverage()
        {
            var search = from cc in average.TBL_Mentor_evaluation_Results
                         where cc.mentor_name == _mentor_name
                         select cc;
            return search.ToArray<TBL_Mentor_evaluation_Result>();
        }
    }
}
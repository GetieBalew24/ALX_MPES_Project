using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ALX_MPES_BOL
{
    public partial class TBL_Criteria
    {
        DataClasses1DataContext criteria=new DataClasses1DataContext("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");
        public String addCriteria()
        {
            String criteri = Convert.ToString(criteria.addevaluationCriteria(_CriteriaID, _CriteriaName, _Createdby));
            return criteri;
        }
        public TBL_Criteria[] searchallCriteria()
        {
            var search = from cc in criteria.TBL_Criterias         
                         select cc;
            return search.ToArray<TBL_Criteria>();
        }
    }
}
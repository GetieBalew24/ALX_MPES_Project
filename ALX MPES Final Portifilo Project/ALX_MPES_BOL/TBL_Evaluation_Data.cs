using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ALX_MPES_BOL
{
    public partial class TBL_Evaluation_Data
    {
        DataClasses1DataContext evaldata=new DataClasses1DataContext("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");
        public String addevaluationData()
        {
            String evaluationdata = Convert.ToString(evaldata.addevaluationdata(_mentor_id,_evaluator_id,_CriteriaID,_Criteria_result));
            return evaluationdata;
        }
        public TBL_Evaluation_Data[] searchbymentorandevalid()
        {
            var sum = from cc in evaldata.TBL_Evaluation_Datas
                      where cc.mentor_id == _mentor_id && cc.evaluator_id == _evaluator_id
                        select cc;
            return sum.ToArray<TBL_Evaluation_Data>();
        }
    }
}
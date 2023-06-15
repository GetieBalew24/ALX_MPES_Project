using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ALX_MPES_BOL;
namespace ALX_MPES_BLL
{
    public class ALX_MPES
    {
        TBL_Account user = new TBL_Account();
        TBL_Criteria criteria = new TBL_Criteria(); 
        TBL_Evaluation_Data evaluation_Data = new TBL_Evaluation_Data();
        TBL_Departement depts=new TBL_Departement();
        TBL_Mentor mentr=new TBL_Mentor();
        TBL_Evaluation_Result result1 = new TBL_Evaluation_Result();
        TBL_Mentor_evaluation_Result average1 = new TBL_Mentor_evaluation_Result();

        public TBL_Account[] Checkuserlogin(String username, String password)
        {
            user.Username = username;
            user.password = password;
            return user.userlogin();
        }
        public TBL_Criteria[] searchallCriteria() {
        return criteria.searchallCriteria();
        }
        public bool AddCriteria(String criteriaID, String CriteriaName, String Critedby)
        {

            try
            {
                criteria.CriteriaID = criteriaID;
                criteria.CriteriaName = CriteriaName;   
                criteria.Createdby = Critedby;
                String reg = criteria.addCriteria();
                return true;
            }
            catch (Exception ex)
            {
                return true;
            }
        }
        public bool AddEvaluationData(String mId, String EvalId, String crtId,int result)
        {

            try
            {
                evaluation_Data.mentor_id = mId;
                evaluation_Data.evaluator_id =EvalId;
                evaluation_Data.CriteriaID=crtId;
                evaluation_Data.Criteria_result = result;
                String eval = evaluation_Data.addevaluationData();
                return true;
            }
            catch (Exception ex)
            {
                return true;
            }
        }
        public TBL_Evaluation_Data[] searchbymentorandevalid(String mname,String evalid)
        {
            evaluation_Data.mentor_id=mname;
            evaluation_Data.evaluator_id=evalid;
            return evaluation_Data.searchbymentorandevalid();
        }
        public TBL_Departement[] searchdept()
        {
            return depts.searchallDept();
        }
        public TBL_Mentor[] searchmentor(String dept)
        {
            mentr.departement=dept;
            return mentr.searchmentor();    
        }
        public TBL_Mentor[] searchmentorsbyname(String name)
        {
            mentr.full_name=name;
            return mentr.searchmentorbyname();
        }
        //TBL_Evaluation_Result
        public bool AddEvaluationresult(String mname, String EvalId, float result)
        {
            try
            {
                result1.mentor_name= mname;
                result1.evaluator_id = EvalId;
                result1.result = result;
                String eval = result1.addstudresult();
                return true;
            }
            catch (Exception ex)
            {
                return true;
            }
        }
        public TBL_Evaluation_Result[] searchresult(String name)
        {
            result1.mentor_name = name;
            return result1.searchstudresultbyname();
        }
        public bool AddAverageresult(String mname, float result)
        {
            try
            {
                average1.mentor_name = mname;
               average1.Totalresult = result;
                String eval = average1.addaverageresult();
                return true;
            }
            catch (Exception ex)
            {
                return true;
            }
        }
        public TBL_Mentor_evaluation_Result[] searchaveragebyname(String name)
        {
            average1.mentor_name = name;
            return average1.searchaverage();
        }
    }
}
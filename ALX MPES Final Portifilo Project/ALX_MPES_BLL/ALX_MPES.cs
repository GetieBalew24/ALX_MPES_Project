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
        TBL_Student student = new TBL_Student();
        TBL_Menu menu = new TBL_Menu();
        TBL_UsermenuRole role = new TBL_UsermenuRole();
        public TBL_Account[] Checkuserlogin(String username, String password)
        {
            user.Username = username;
            user.password = password;
            return user.userlogin();
        }
        public bool createaccount(String id, String fname, String lname, String email,String dept, String username, String pass, int status, String createdby, String role)
        {
            try
            {
                user.User_ID = id;
                user.First_Name = fname;
                user.Last_Name = lname;
                user.Email=email;
                user.Department = dept;
                user.Username = username;
                user.password = pass;
                user.Account_status= status;
                user.Created_by = createdby;
                user.Role=role;

                String account = user.createAccount();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public TBL_Account[] changepassword(String username)
        {
            user.Username = username;
            return user.changepassword();
        }
        public bool updatedpassword(String pass, String uname)
        {
            try
            {
                user.password = pass;
                user.Username = uname;
                user.updatepassword();
                return true;
            }
            catch (Exception ex)
            {
                return true;
            }

        }
        //Criteria info
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
        public TBL_Departement[] searchdeptbyids(string deptcode)
        {
            depts.Dept_code=deptcode;
            return depts.searchallDept();
        }
        public bool regDepartement(String Deptcode,String deptname)
        {
            depts.Dept_code=Deptcode;
            depts.Dept_name = deptname;
            String reg = depts.registerDept();
            return true;
        }
        //mentor infon.
        public TBL_Mentor[] searchmentor(String dept)
        {
            mentr.departement=dept;
            return mentr.searchmentor();    
        }
        public TBL_Mentor[] searchmentorsbyid(String mid)
        {
            mentr.mentor_id=mid;
            return mentr.searchmentorbyid();
        }
        public TBL_Mentor[] searchallmentors()
        {
           
            return mentr.searchmentorbyid();
        }
        public bool regMentors(String mid,String fname,String mname,String lname,String email,String dept,String spec)
        {
            mentr.mentor_id = mid;
            mentr.first_name=fname;
            mentr.middle_name=mname;
            mentr.last_name=lname;
            mentr.email=email;
            mentr.departement = dept;
            mentr.specialization= spec;
            String ment = mentr.registerMentor();
            return true;
        }
        //TBL_Evaluation_Result
        public bool AddEvaluationresult(String mid, String EvalId, float result)
        {
            try
            {
                result1.mentor_ID= mid;
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
        public TBL_Evaluation_Result[] searchresult(String mid)
        {
            result1.mentor_ID = mid;
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
        public TBL_Student[] searchallStud()
        {
            return student.searchallStudent();
        }
        public TBL_Account[] searchalluserbyuname(String username)
        {
            user.Username = username;
            return user.searchalluserbyuname();
        }
        //Menu Registration
        public bool AddMenu(String MenuId, String ParentMenu, String MenuName, String Link)
        {
            menu.MenuId = MenuId;
            menu.ParentMenu = ParentMenu;
            menu.MenuName = MenuName;
            menu.Link = Link;
            String newacc = menu.AddMenu();
            return true;
        }

        public TBL_Menu[] searchMenu()
        {
            return menu.searchMenu();
        }
        public TBL_Menu[] searchRootMenu(String ParentMenu)
        {
            menu.ParentMenu = ParentMenu;
            return menu.searchRootMenu();
        }
        public bool assignrole(String Username, String MenuId, int Status, String AssignedBy, DateTime Date)
        {
            role.Username = Username;
            role.MenuId = MenuId;
            role.Status = Status;
            role.Assignedby = AssignedBy;
            role.date = Date;
            String newacc = role.assignrole();
            return true;
        }

    }
}
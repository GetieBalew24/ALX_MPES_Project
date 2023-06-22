using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace ALX_MPES_BOL
{
    public partial class TBL_Mentor
    {
        DataClasses1DataContext mentor = new DataClasses1DataContext("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");
        public string registerMentor()
        {

            String reg = Convert.ToString(mentor.registermentor(_mentor_id,_first_name,_middle_name,_last_name,_email,_departement,_specialization));
            return reg;
        }
        public TBL_Mentor[] searchmentor()
        {
            var ment = from cc in mentor.TBL_Mentors
                       where cc.departement == _departement
                        select cc;
            return ment.ToArray<TBL_Mentor>();
        }
        public TBL_Mentor[] searchmentorbyid()
        {
            var ment = from cc in mentor.TBL_Mentors
                       where cc.mentor_id==_mentor_id
                       select cc;
            return ment.ToArray<TBL_Mentor>();
        }
        public TBL_Mentor[] searchallmentor()
        {
            var ment = from cc in mentor.TBL_Mentors
                       select cc;
            return ment.ToArray<TBL_Mentor>();
        }
    }
}
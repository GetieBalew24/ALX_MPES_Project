using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ALX_MPES_BOL
{
    public partial class TBL_Mentor
    {
        DataClasses1DataContext mentor = new DataClasses1DataContext("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");
        public TBL_Mentor[] searchmentor()
        {
            var ment = from cc in mentor.TBL_Mentors
                       where cc.departement == _departement
                        select cc;
            return ment.ToArray<TBL_Mentor>();
        }
        public TBL_Mentor[] searchmentorbyname()
        {
            var ment = from cc in mentor.TBL_Mentors
                       where cc.full_name==_full_name
                       select cc;
            return ment.ToArray<TBL_Mentor>();
        }
    }
}
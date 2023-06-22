using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ALX_MPES_BOL
{
    public partial class TBL_Student
    {
        DataClasses1DataContext stud = new DataClasses1DataContext("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");
        public TBL_Student[] searchallStudent()
        {
            var student = from cc in stud.TBL_Students
                          select cc;
            return student.ToArray<TBL_Student>();
        }
    }
}
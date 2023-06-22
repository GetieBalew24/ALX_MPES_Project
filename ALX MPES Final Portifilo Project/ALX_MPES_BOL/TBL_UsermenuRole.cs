using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ALX_MPES_BOL
{
    public partial class TBL_UsermenuRole
    {
        DataClasses1DataContext role = new DataClasses1DataContext("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");
        public string assignrole()
        {

            String assignrole = Convert.ToString(role.AssignRole(_Username,_MenuId,_Status,_Assignedby,_date));
            return assignrole;
        }

    }
}
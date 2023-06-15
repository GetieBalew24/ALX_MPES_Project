using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ALX_MPES_BOL
{
    public partial class TBL_Account
    {
        DataClasses1DataContext user=new DataClasses1DataContext("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");
        public TBL_Account[] userlogin()
        {
            var login = from cc in user.TBL_Accounts
                        where cc.Username == _Username && cc.password == _password
                        select cc;
            return login.ToArray<TBL_Account>();
        }
    }
}
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
        public TBL_Account[] searchalluserbyuname()
        {
            var check = from cc in user.TBL_Accounts
                        where cc.Username == _Username
                        select cc;
            return check.ToArray<TBL_Account>();    
        }

        public String createAccount()
        {
            String account = Convert.ToString(user.createaccount(_User_ID,_First_Name,_Last_Name,_Email,_Department,_Username,_password,_Account_status,_Created_by,_Role));
            return account;
        }
        public TBL_Account[] changepassword()
        {
            var userinfos = from ccc in user.TBL_Accounts
                            where ccc.Username == _Username
                            select ccc;
            return userinfos.ToArray<TBL_Account>();
        }
        public void updatepassword()
        {
            user.updatepassword(_password, _Username);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI.com.hisoftware.api2;
using ALX_MPES_BLL;
using ALX_MPES_BOL;
namespace ALX_MPES_Portifilo_Project
{
    public partial class Account : System.Web.UI.Page
    {
        ALX_MPES account = new ALX_MPES();
        int s = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }

        }
        public string Encrypt(String pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            String encpass = Convert.ToBase64String(bytes);
            return encpass;
        }
        protected void btncreateaccount_Click(object sender, EventArgs e)
        {
            save();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
            
        }
        void save()
        {
            int s = 0;
            if (DropDownList3.SelectedValue == "Active")
            {
                s = 1;
            }
            else if (DropDownList3.SelectedValue == "Deactive")
            {
                s = 0;
            }
            if (DropDownList1.SelectedValue == "Student")
            {
                txtid.Visible = false;
                txtemail.Visible = false;
                txtemail.Visible = false;
                txtpassword.Visible = false;    
                txtusername.Visible = false;
                TBL_Student[] stu = account.searchallStud();

                for (int j = 0; j < stu.Count(); j++)
                {

                    String id = stu[j].StudID;
                    String fname = stu[j].First_Name;
                    String lname = stu[j].Last_Name;
                    String email = "default@gmail.com";
                    String dept = stu[j].Dept_code;
                    String username = fname.Substring(0, 3) + id;
                    String pa = fname.Substring(0, 1);
                    String two = fname.Substring(1, 2);
                    String cap = pa.ToUpper();
                    String password = cap + two + "@" + id;
                    int status = 1;
                    String createdby = "Admin";
                    string role = DropDownList1.SelectedValue;
                    // String email=stu[j].first_name+stu[j].middle_name+"@"+"gmail.com";
                    TBL_Account[] chek = account.searchalluserbyuname(username);
                    String pass = Encrypt(password);
                    if (chek.Count() <= 0)
                    {
                        account.createaccount(id, fname, lname, email, dept, username, pass, status, createdby, role);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('All Student Account Created');", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('All student account Allready Created');", true);

                    }

                }
            }
            else if(DropDownList1.SelectedValue == "Mentor")
            {
                TBL_Mentor[] stu = account.searchmentorsbyid(txtid.Text);
                if (stu.Count() > 0)
                {
                    String fname = stu[0].first_name;
                    String lname = stu[0].last_name;
                    txtemail.Text = stu[0].email;
                    String dept = stu[0].departement;
                    txtusername.Text = fname.Substring(0, 3) + txtid.Text;
                    String pa = fname.Substring(0, 1);
                    String two = fname.Substring(1, 2);
                    String cap = pa.ToUpper();
                    txtpassword.Text = cap + two + "@" + txtid.Text;
                    String createdby = "Admin";
                    string role = DropDownList1.SelectedValue;
                    String pass = Encrypt(txtpassword.Text);
                    if (DropDownList3.SelectedValue == "Active")
                    {
                        s = 1;
                    }
                    else if (DropDownList3.SelectedValue == "Deactive")
                    {
                        s = 0;
                    }
                    int status = s;
                    TBL_Account[] chek = account.searchalluserbyuname(txtusername.Text);
                    if (chek.Count() <= 0)
                    {
                        account.createaccount(txtid.Text, fname, lname, txtemail.Text, dept, txtusername.Text, pass, status, createdby, role);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Mentor Account Created');", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Mentor account Allready Created');", true);

                    }

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Id!! please try again');", true);
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Student")
            {
                txtid.Visible = false;
                txtemail.Visible = false;
                txtemail.Visible = false;
                txtpassword.Visible = false;
                txtusername.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Username.Visible = false;
                Password.Visible = false;
                btnSearch.Visible = false;
                TBL_Student[] stu = account.searchallStud();

                for (int j = 0; j < stu.Count(); j++)
                {

                    String id = stu[j].StudID;
                    String fname = stu[j].First_Name;
                    String lname = stu[j].Last_Name;
                    String email = "default@gmail.com";
                    String dept = stu[j].Dept_code;
                    String username = fname.Substring(0, 3) + id;
                    String pa = fname.Substring(0, 1);
                    String two = fname.Substring(1, 2);
                    String cap = pa.ToUpper();
                    String password = cap + two + "@" + id;
                    int status = 1;
                    String createdby = "Admin";
                    string role = DropDownList1.SelectedValue;
                }
              
            }
            else
            {
                txtid.Visible = true;
                txtemail.Visible = true;
                txtemail.Visible = true;
                txtpassword.Visible = true;
                txtusername.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Username.Visible = true;
                Password.Visible = true;
                btnSearch.Visible = true;
            }

        }

        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            TBL_Mentor[] stu = account.searchmentorsbyid(txtid.Text);
            if (stu.Count() != 0)
            {
                String fname = stu[0].first_name;
                String lname = stu[0].last_name;
                txtemail.Text = stu[0].email;
                String dept = stu[0].departement;
                txtusername.Text = fname.Substring(0, 3) + txtid.Text;
                String pa = fname.Substring(0, 1);
                String two = fname.Substring(1, 2);
                String cap = pa.ToUpper();
                txtpassword.Text = cap + two + "@" + txtid.Text;
                String createdby = "Admin";
                string role = DropDownList1.SelectedValue;
                String pass = Encrypt(txtpassword.Text);

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Id!! please try again');", true);
            }
        }
    }
}
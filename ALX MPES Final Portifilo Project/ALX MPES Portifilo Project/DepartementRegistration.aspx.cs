using ALX_MPES_BLL;
using ALX_MPES_BOL;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALX_MPES_Portifilo_Project
{
    public partial class DepartementRegistration : System.Web.UI.Page
    {
        ALX_MPES dept=new ALX_MPES();
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            DeptId();
            /*if (Session["Username"] == null)
            {
                Response.Redirect("Login");
            }*/
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            //DeptId();
            if (dept.regDepartement(txtdeptcode.Text,txtdeptname.Text))
            {
                Page.Response.Redirect(Page.Request.Url.AbsoluteUri);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Mentor Registered Sucessfully');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Error Occured');", true);

            }
        }
        void DeptId()
        {
            TBL_Departement[] generatecode = dept.searchdept(); ;
            /* if (DropDownList1.SelectedValue == "Academic")
             {*/
            foreach (TBL_Departement ping in generatecode)
            {
                count++;
            }
            if (count != 0)
            {
                String lastcount = generatecode[count - 1].Dept_code;
                String sub = lastcount.Substring(9);
                int lastcode = Convert.ToInt32(sub);
                lastcode = lastcode + 1;
                String code = "ALX_Dept/" + lastcode;
                for (int j = 0; j < count; j++)
                {
                    for (int i = 0; i < count; i++)
                    {
                        if (generatecode[i].Dept_code == code)
                        {
                            lastcode = lastcode + 1;
                            code = "ALX_Dept/" + lastcode;

                        }
                    }

                }
               txtdeptcode.Text= "ALX_Dept/" + lastcode;
                txtdeptcode.Enabled = false;

            }
            else
            {
                txtdeptcode.Text = "ALX_Dept/" + count;
                txtdeptcode.Enabled = false;

            }


        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtdeptname.Text = "";
        }
    }
}
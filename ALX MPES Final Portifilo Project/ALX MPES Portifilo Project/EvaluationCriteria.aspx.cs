using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ALX_MPES_BLL;
using ALX_MPES_BOL;
namespace ALX_MPES_Portifilo_Project
{
    public partial class EvaluationCatagory : System.Web.UI.Page
    {
        ALX_MPES cre=new ALX_MPES();
        int count = 0;
        String code;
        String username;
        protected void Page_Load(object sender, EventArgs e)
        {             
              
            generateCriteriaCode();
            if (Session["Username"]==null)
            {
                Response.Redirect("Login");
            }

        }

        protected void btn_add_question_Click(object sender, EventArgs e)
        {
            save();
           // generateCriteriaCode() ;
        }
        void save()
        {
            String crcode = Label1.Text;
            if (cre.AddCriteria(crcode, TextBox1.Text, username))
            {
                lblsucess.Text = "Sucessfully Added";
                TextBox1.Text="";

               
            }
            else
            {
                lblsucess.Text = "Eror occured";
            }
        }
        private void generateCriteriaCode()
        {
            TBL_Criteria[] generatecode = cre.searchallCriteria();
           
            foreach (TBL_Criteria ping in generatecode)
            {
                count++;
            }
            if (count != 0)
            {
                String lastcount = generatecode[count - 1].CriteriaID;
                String sub = lastcount.Substring(8);
                int lastcode = Convert.ToInt32(sub);
                lastcode = lastcode + 1;
                code = "ALX_C_ID" + lastcode;
                for (int j = 0; j < count; j++)
                {
                    for (int i = 0; i < count; i++)
                    {
                        if (generatecode[i].CriteriaID == code)
                        {
                            lastcode = lastcode + 1;
                            code = "ALX_C_ID" + lastcode;

                        }
                    }

                }
                Label1.Text = "ALX_C_ID" + lastcode;
               
            }
            else
            {
                
                Label1.Text = "ALX_C_ID" + count; ;
            }
        }

    }
}
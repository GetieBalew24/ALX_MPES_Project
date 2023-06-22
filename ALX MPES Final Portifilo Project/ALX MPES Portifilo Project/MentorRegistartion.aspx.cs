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
    public partial class MentorRegistartion : System.Web.UI.Page
    {
        ALX_MPES men=new ALX_MPES();
        int count = 0;
        String Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                DropDownList2.DataTextField = "Dept_name";
                DropDownList2.DataValueField = "Dept_code";
                DropDownList2.DataSource = men.searchdept();
                DropDownList2.DataBind();
            }
            MentorId();

        }
        void MentorId()
        {
            TBL_Mentor[] generatecode = men.searchallmentors();
            /* if (DropDownList1.SelectedValue == "Academic")
             {*/
            foreach (TBL_Mentor ping in generatecode)
            {
                count++;
            }
            if (count != 0)
            {
                String lastcount = generatecode[count - 1].mentor_id;
               
                int lastcode = Convert.ToInt32(lastcount);
                lastcode = lastcode + 1;
           
                for (int j = 0; j < count; j++)
                {
                    for (int i = 0; i < count; i++)
                    {
                        if (generatecode[i].mentor_id == lastcode.ToString())
                        {
                            lastcode = lastcode + 1;
                           

                        }
                    }

                }
                String code =lastcode.ToString();
                txtmentorid.Text = code;
                txtmentorid.Enabled = false;

            }
            else
            {

               String code= "000"+count.ToString();
                Id= code;
                txtmentorid.Text = code;
                txtmentorid.Enabled = false;

            }


        }
        protected void btnregister_Click(object sender, EventArgs e)
        {
           
          if( men.regMentors(txtmentorid.Text,txtfname.Text, txtmname.Text, txtlname.Text,txtemail.Text,DropDownList2.SelectedValue,DropDownList1.SelectedValue))
            {
                Page.Response.Redirect(Page.Request.Url.AbsoluteUri);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Mentor Registered Sucessfully');", true);
            }
          else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Error Occured');", true);

            }
           


        }
    }
}
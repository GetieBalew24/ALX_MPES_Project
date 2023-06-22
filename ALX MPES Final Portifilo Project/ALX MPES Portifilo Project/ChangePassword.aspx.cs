using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ALX_MPES_BLL;
using ALX_MPES_BOL;

namespace ALX_MPES_Portifilo_Project
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        ALX_MPES change = new ALX_MPES();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Username"] != null)
                {

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            updatedPASS();
        }
        private String Encryptpassword(String pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            String Encryptedpassword = Convert.ToBase64String(bytes);
            return Encryptedpassword;
        }
        void updatedPASS()
        {
            String newpass = Encryptpassword(txtnewpassword.Text);
            String confpass = Encryptpassword(txtconfimpassword.Text);
            String username = Session["Username"].ToString();
            if (newpass == confpass)
            {
                if (change.updatedpassword(newpass, username))
                {
                    Label3.Text = "Password Changed succesfully";
                    //txtconfpass.Text = "";
                    //txtcpassword.Text = "";
                    //txtnpassword.Text = "";
                }
                else
                {
                    Label3.Text = "Error occured";
                }

            }
            else
            {
                Label3.Text = "password dosen't match";
            }
        }
    }
}
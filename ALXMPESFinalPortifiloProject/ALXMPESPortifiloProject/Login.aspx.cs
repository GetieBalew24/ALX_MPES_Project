﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ALX_MPES_BLL;
using ALX_MPES_BOL;
using Telerik.Web.UI.Chat;

namespace ALX_MPES_Portifilo_Project
{
    public partial class Login : System.Web.UI.Page
    { 
        private readonly ALX_MPES login =new ALX_MPES();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblvalUN.Visible = false;
            lblConfirm.Visible = false;
            lblUsername.Visible = false;
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            CheckData(txt_username.Text, txt_password.Text);
            TBL_Account[] log = login.Checkuserlogin(txt_username.Text, txt_password.Text);
            if (log.Count() > 0)
            {
                if (log[0].LoginStatus == 1 && log[0].Account_status==1)
                {    
                    Session["Username"] = txt_username.Text;
                    Session["fname"] = log[0].First_Name + " " + log[0].Last_Name;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lblConfirm.Visible = true;
                    lblConfirm.Text = "Cntact System Admin";
                }
            }
            else
            {
                lblConfirm.Visible = true;
                lblConfirm.Text = "Please Eneter Correct Account";

            }

        }

        private void CheckData(string text1, string text2)
        {
            if (string.IsNullOrEmpty(text1))
            {
                lblvalUN.Visible = true;
                lblValPass.ForeColor = System.Drawing.Color.Red;
            }
            if (string.IsNullOrEmpty(text2))
            {
                lblValPass.Visible = true;
                lblValPass.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
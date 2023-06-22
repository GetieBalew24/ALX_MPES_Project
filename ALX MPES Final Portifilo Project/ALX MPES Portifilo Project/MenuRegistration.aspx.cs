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
    public partial class MenuRegistration : System.Web.UI.Page
    {
        int count = 0;
        string Id = "";
        ALX_MPES menu=new ALX_MPES();      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                searchallrootMenu();
            }

        }
        void MenuId()
        {
            TBL_Menu[] generatecode = menu.searchMenu();
            /* if (DropDownList1.SelectedValue == "Academic")
             {*/
            foreach (TBL_Menu ping in generatecode)
            {
                count++;
            }
            if (count != 0)
            {
                String lastcount = generatecode[count - 1].MenuId;
                String sub = lastcount.Substring(6);
                int lastcode = Convert.ToInt32(sub);
                lastcode = lastcode + 1;
                String code = "MENU/-" + lastcode;
                for (int j = 0; j < count; j++)
                {
                    for (int i = 0; i < count; i++)
                    {
                        if (generatecode[i].MenuId == code)
                        {
                            lastcode = lastcode + 1;
                            code = "MENU/-" + lastcode;

                        }
                    }

                }
                Id = "MENU/-" + lastcode;

            }
            else
            {
                Id = "MENU/-" + count;

            }


        }

        protected void NewJobPost_Click(object sender, EventArgs e)
        {
            MenuId();
            String root = DropDownList1.SelectedValue;
            if(DropDownList1.SelectedValue=="Root")
            {
                root = "Root";
            }
            menu.AddMenu(Id, root, txtmenuname.Text, txtlink.Text);
            Page.Response.Redirect(Page.Request.Url.AbsoluteUri);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Menu Registered Sucessfully');", true);

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.AbsoluteUri);
        }
        public void searchallrootMenu()
        {
            DropDownList1.DataTextField = "MenuName";
            DropDownList1.DataValueField = "MenuId";
            DropDownList1.DataSource = menu.searchMenu();
            DropDownList1.DataBind();
        }
    }
}
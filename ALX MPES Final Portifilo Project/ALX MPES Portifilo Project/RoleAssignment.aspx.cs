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
    public partial class RoleAssignment : System.Web.UI.Page
    {
        DateTime date = DateTime.Now;
        ALX_MPES role=new ALX_MPES();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                //
                // assignrole
                CheckBox Ck = (CheckBox)GridView1.Rows[i].Cells[0].FindControl("CheckBox1");
                if (Ck.Checked)
                {
                    String menuid = GridView1.Rows[i].Cells[1].Text;
                    int status = 1;
                    role.assignrole(TextBox1.Text, menuid, status, "abc", date);
                    Page.Response.Redirect(Page.Request.Url.AbsoluteUri);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Role Assigned Sucessfully');", true);
                }

            }

        }
        public void assign()
        {
            int count = GridView1.Rows.Count;
            Label1.Text = count.ToString();
        }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox status = (CheckBox)sender;
            GridViewRow row = (GridViewRow)status.NamingContainer;

        }
    }
}
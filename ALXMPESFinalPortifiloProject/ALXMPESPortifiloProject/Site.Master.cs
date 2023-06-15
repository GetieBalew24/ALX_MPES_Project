using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALX_MPES_Portifilo_Project
{
    public partial class SiteMaster : MasterPage
    {
        DataTable dtSource = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Setlbl();
           
                if (Session["Username"] != null)
                {
                    lbluser.Text = (Session["Username"].ToString());
                    login.Visible = false;
                    logout.Visible = true;
                    lbluser.Visible = true;
                if (!IsPostBack)
                {
                    dtSource = GetData(Session["Username"].ToString());
                    DataTable dt = GetChildData(-1);
                    foreach (DataRow dr in dt.Rows)
                    {
                        TreeNode parentNode = new TreeNode();
                        parentNode.Text = dr["menuName"].ToString();
                        parentNode.Value = dr["menuId"].ToString();
                        parentNode.NavigateUrl = dr["link"].ToString();
                        AddNodes(ref parentNode);
                        TreeView1.Nodes.Add(parentNode);
                        TreeView1.CollapseAll();
                    }
                }
                else
                {
                    //Session.Clear();
                    //Session["Username"] = string.Empty;
                   // Response.Redirect("Login");
            
                }
            }
            else
            {
                login.Visible = true;
                logout.Visible = false;
                lbluser.Visible = false;
            }
            }
        private void Setlbl()
        {
            lbldate.Text = DateTime.Now.DayOfWeek.ToString() + ", " + GetMonth(DateTime.Now.Month.ToString()) + ", " + DateTime.Now.Day.ToString() + " " + DateTime.Now.Year.ToString();
            lblpage.Text = "..:::: " + Page.Title + " ::::..";
            lblmenu.Text = "Menu";
            login.Text = "Login";
            logout.Text = "Logout";
        }
        private string GetMonth(string v)
        {
            String mon = "";
            if (v == "1")
                mon = "january";
            else if (v == "2")
                mon = "February";
            else if (v == "3")
                mon = "march";
            else if (v == "4")
                mon = "April";
            else if (v == "5")
                mon = "May";
            else if (v == "6")
                mon = "June";
            else if (v == "7")
                mon = "July";
            else if (v == "8")
                mon = "Augest";
            else if (v == "9")
                mon = "September";
            else if (v == "10")
                mon = "October";
            else if (v == "11")
                mon = "November";
            else if (v == "12")
                mon = "December";
            return mon;
        }
        private void AddNodes(ref TreeNode node)
        {
            DataTable dt = GetChildData(Convert.ToInt32(node.Value));
            foreach (DataRow row in dt.Rows)
            {
                TreeNode childNode = new TreeNode();
                childNode.Value = row["menuId"].ToString();
                childNode.Text = row["menuName"].ToString();
                childNode.NavigateUrl = row["link"].ToString();
                AddNodes(ref childNode);
                node.ChildNodes.Add(childNode);
            }
        }

        private DataTable GetChildData(int parentId)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[]
            {
                new DataColumn("menuId", typeof(int)),
                new DataColumn("parentMenu",typeof(int)),
                new DataColumn("menuName"),
                new DataColumn("link")});

            foreach (DataRow dr in dtSource.Rows)
            {
                if (dr[1].ToString() != parentId.ToString())
                {
                    continue;
                }
                DataRow row = dt.NewRow();
                row["menuId"] = dr["menuId"];
                row["parentMenu"] = dr["parentMenu"];
                row["menuName"] = dr["menuName"];
                row["link"] = dr["link"];
                dt.Rows.Add(row);
            }
            return dt;
        }
        private DataTable GetData(String un)
        {

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-U6O6Q1R\\SQLEXPRESS;Initial Catalog=ALX_MPES;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter(string.Format(" select m.MenuId , m.ParentMenu , m.MenuName , m.Link  from TBL_Menu m inner join TBL_UsermenuRole um on m.MenuId = um.MenuId where Status = '1' and Username = '{0}'", un), conn);
            conn.Open();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
    }
}
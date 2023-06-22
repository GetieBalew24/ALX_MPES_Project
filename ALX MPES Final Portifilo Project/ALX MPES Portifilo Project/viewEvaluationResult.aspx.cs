using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ALX_MPES_BLL;
using ALX_MPES_BOL;
namespace ALX_MPES_Portifilo_Project
{
    public partial class viewEvaluationResult : System.Web.UI.Page
    {
        ALX_MPES view=new ALX_MPES();
        DataTable dt = new DataTable();
        int count = 0;
        int sum = 0;
        double averag = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

            generatereport();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        void generatereport()
        {
            String userid = Session["User_ID"].ToString();
            TBL_Evaluation_Result[] average = view.searchresult(userid);
            foreach (TBL_Evaluation_Result ping in average)
            {
                count++;
            }
            if (count != 0)
            {
                for (int i = 0; i < count; i++)
                {
                    sum = sum + Convert.ToInt32(average[i].result);
                }
                averag = Convert.ToDouble(sum / count);
            }

            dt.Columns.Add("S/N");
            dt.Columns.Add("Mentor ID");
            dt.Columns.Add("No. of Student");
            dt.Columns.Add("Evaluation Result(100%)");
            DataRow dr = dt.NewRow();
            dr["S/N"] = 1;
            dr["Mentor ID"] =userid;
            dr["No. of Student"] = count;
            dr["Evaluation Result(100%)"] = averag;
            dt.Rows.Add(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
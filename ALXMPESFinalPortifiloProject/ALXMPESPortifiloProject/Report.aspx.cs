using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ALX_MPES_BLL;
using ALX_MPES_BOL;
using Telerik.Web.UI;
using Telerik.Web.UI.com.hisoftware.api2;

namespace ALX_MPES_Portifilo_Project
{
    public partial class Report : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        ALX_MPES report=new ALX_MPES();
        int count = 0;
        int sum = 0;
        double averag = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_question_Click(object sender, EventArgs e)
        {
            generatereport();
        }
        void generatereport()
        {
            TBL_Evaluation_Result[] average = report.searchresult(txtname.Text);
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
            dt.Columns.Add("Mentor Name");
            dt.Columns.Add("No. of Student");
            dt.Columns.Add("Evaluation Result(100%)");
            DataRow dr = dt.NewRow();
            dr["S/N"] = 1;
            dr["Mentor Name"] = txtname.Text;
            dr["No. of Student"] = count;
            dr["Evaluation Result(100%)"] = averag;
           dt.Rows.Add(dr);
           GridView1.DataSource = dt;
           GridView1.DataBind();
        }

    }
}
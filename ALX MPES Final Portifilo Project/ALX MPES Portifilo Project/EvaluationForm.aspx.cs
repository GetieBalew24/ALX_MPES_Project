using ALX_MPES_BOL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ALX_MPES_BLL;
using ALX_MPES_BOL;
using System.Reflection.Emit;
using System.Drawing;
using Newtonsoft.Json.Linq;

namespace ALX_MPES_Portifilo_Project
{
    public partial class EvaluationForm : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        ALX_MPES cr=new ALX_MPES();
        int k = 0;
        int count = 0;
        int result = 0;
        int studresult = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                searchalldept();
            txtid.Text = Session["User_ID"].ToString();
            txtid.Enabled = false;

           // searchallmetorbydept();

            TBL_Criteria[] co = cr.searchallCriteria();
            Label1.Text = co[0].CriteriaName;
            Label2.Text = co[1].CriteriaName;
            Label3.Text = co[2].CriteriaName;
            Label4.Text = co[3].CriteriaName;
            Label5.Text = co[4].CriteriaName;
            Label6.Text = co[5].CriteriaName;
            Label7.Text = co[6].CriteriaName;
            Label8.Text = co[7].CriteriaName;
            Label9.Text = co[8].CriteriaName;
            Label10.Text = co[9].CriteriaName;
            Label11.Text = co[10].CriteriaName;
            Label12.Text = co[11].CriteriaName;
            Label13.Text = co[12].CriteriaName;
            Label14.Text = co[13].CriteriaName;
            Label15.Text = co[14].CriteriaName;
            //display();
        }
        private void searchalldept()
        {
            DropDownList1.DataTextField = "Dept_name";
            DropDownList1.DataValueField = "Dept_code";
            DropDownList1.DataSource = cr.searchdept();
            DropDownList1.DataBind();
        }
        private void searchallmetorbydept()
        {
            TBL_Mentor[] dept = cr.searchmentor(DropDownList1.SelectedValue);
            DropDownList2.DataTextField = "first_name";
            DropDownList2.DataValueField = "mentor_id";
            DropDownList2.DataSource = cr.searchmentor(DropDownList1.SelectedValue);
            DropDownList2.DataBind();
        }
        protected void btn1_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton1.Checked == true)
                av= 1;
            else if(RadioButton2.Checked==true)
                av= 2;
            else if(RadioButton3.Checked==true) 
                av= 3;
            else if(RadioButton4.Checked==true)
                av= 4;
            else if(RadioButton5.Checked==true)
                av= 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[0].CriteriaID, av);
            Button1.BackColor = Color.YellowGreen;
        }
        protected void btn2_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton6.Checked == true)
                av = 1;
            else if (RadioButton7.Checked == true)
                av = 2;
            else if (RadioButton8.Checked == true)
                av = 3;
            else if (RadioButton9.Checked == true)
                av = 4;
            else if (RadioButton10.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[1].CriteriaID, av);
            Button2.BackColor = Color.YellowGreen;
        }
        protected void btn3_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton11.Checked == true)
                av = 1;
            else if (RadioButton12.Checked == true)
                av = 2;
            else if (RadioButton13.Checked == true)
                av = 3;
            else if (RadioButton14.Checked == true)
                av = 4;
            else if (RadioButton15.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[2].CriteriaID, av);
            Button3.BackColor = Color.YellowGreen;
        }
        protected void btn4_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton16.Checked == true)
                av = 1;
            else if (RadioButton17.Checked == true)
                av = 2;
            else if (RadioButton18.Checked == true)
                av = 3;
            else if (RadioButton19.Checked == true)
                av = 4;
            else if (RadioButton20.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[3].CriteriaID, av);
            Button4.BackColor = Color.YellowGreen;
        }
        protected void btn5_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton21.Checked == true)
                av = 1;
            else if (RadioButton22.Checked == true)
                av = 2;
            else if (RadioButton23.Checked == true)
                av = 3;
            else if (RadioButton24.Checked == true)
                av = 4;
            else if (RadioButton25.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[4].CriteriaID, av);
            Button5.BackColor = Color.YellowGreen;
        }
        protected void btn6_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton26.Checked == true)
                av = 1;
            else if (RadioButton27.Checked == true)
                av = 2;
            else if (RadioButton28.Checked == true)
                av = 3;
            else if (RadioButton29.Checked == true)
                av = 4;
            else if (RadioButton30.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[5].CriteriaID, av);
            Button6.BackColor = Color.YellowGreen;
        }
        protected void btn7_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton31.Checked == true)
                av = 1;
            else if (RadioButton32.Checked == true)
                av = 2;
            else if (RadioButton33.Checked == true)
                av = 3;
            else if (RadioButton34.Checked == true)
                av = 4;
            else if (RadioButton35.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[6].CriteriaID, av);
            Button7.BackColor = Color.YellowGreen;
        }
        protected void btn8_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedItem.Text);
            int av = 0;
            if (RadioButton36.Checked == true)
                av = 1;
            else if (RadioButton37.Checked == true)
                av = 2;
            else if (RadioButton38.Checked == true)
                av = 3;
            else if (RadioButton39.Checked == true)
                av = 4;
            else if (RadioButton40.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[7].CriteriaID, av);
            Button8.BackColor = Color.YellowGreen;
        }
        protected void btn9_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton41.Checked == true)
                av = 1;
            else if (RadioButton42.Checked == true)
                av = 2;
            else if (RadioButton43.Checked == true)
                av = 3;
            else if (RadioButton44.Checked == true)
                av = 4;
            else if (RadioButton45.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[8].CriteriaID, av);
            Button9.BackColor = Color.YellowGreen;
        }
        protected void btn10_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton46.Checked == true)
                av = 1;
            else if (RadioButton47.Checked == true)
                av = 2;
            else if (RadioButton48.Checked == true)
                av = 3;
            else if (RadioButton49.Checked == true)
                av = 4;
            else if (RadioButton50.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[9].CriteriaID, av);
            Button10.BackColor = Color.YellowGreen;
        }
        protected void btn11_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton51.Checked == true)
                av = 1;
            else if (RadioButton52.Checked == true)
                av = 2;
            else if (RadioButton53.Checked == true)
                av = 3;
            else if (RadioButton54.Checked == true)
                av = 4;
            else if (RadioButton55.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[10].CriteriaID, av);
            Button11.BackColor = Color.YellowGreen;
        }
        protected void btn12_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton56.Checked == true)
                av = 1;
            else if (RadioButton57.Checked == true)
                av = 2;
            else if (RadioButton58.Checked == true)
                av = 3;
            else if (RadioButton59.Checked == true)
                av = 4;
            else if (RadioButton60.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[11].CriteriaID, av);
            Button12.BackColor = Color.YellowGreen;
        }
        protected void btn13_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton61.Checked == true)
                av = 1;
            else if (RadioButton62.Checked == true)
                av = 2;
            else if (RadioButton63.Checked == true)
                av = 3;
            else if (RadioButton64.Checked == true)
                av = 4;
            else if (RadioButton65.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[12].CriteriaID, av);
            Button13.BackColor = Color.YellowGreen;
        }
        protected void btn14_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton66.Checked == true)
                av = 1;
            else if (RadioButton67.Checked == true)
                av = 2;
            else if (RadioButton68.Checked == true)
                av = 3;
            else if (RadioButton69.Checked == true)
                av = 4;
            else if (RadioButton70.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[13].CriteriaID, av);
            Button14.BackColor = Color.YellowGreen;
        }
        protected void btn15_click(object sender, EventArgs e)
        {
            TBL_Criteria[] co = cr.searchallCriteria();
            TBL_Mentor[] dept = cr.searchmentorsbyid(DropDownList1.SelectedValue);
            int av = 0;
            if (RadioButton71.Checked == true)
                av = 1;
            else if (RadioButton72.Checked == true)
                av = 2;
            else if (RadioButton73.Checked == true)
                av = 3;
            else if (RadioButton74.Checked == true)
                av = 4;
            else if (RadioButton75.Checked == true)
                av = 5;
            cr.AddEvaluationData(DropDownList2.SelectedValue, txtid.Text, co[14].CriteriaID, av);
            Button15.BackColor = Color.YellowGreen;
        }
        protected void btn_submit(object sender, EventArgs e)
        {
            save();
        }
        void save()
        {
            TBL_Evaluation_Data[] sum1 = cr.searchbymentorandevalid(DropDownList2.SelectedValue, txtid.Text);
            
            foreach (TBL_Evaluation_Data ping in sum1)
            {
                count++;
            }
            if(count!=0)
            {
                for(int i=0;i< count;i++)
                {
                    result = result + Convert.ToInt32(sum1[i].Criteria_result);
                }
                studresult = (result * 100) / 75;
            }

            if (cr.AddEvaluationresult(DropDownList2.SelectedValue,txtid.Text,studresult))
            {
                txtsubmit.Text = DropDownList2.SelectedValue+ "Sucessfully evalauted";

            }
            else
            {
                txtsubmit.Text = "Eror occured";
            }
        }
      
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            searchallmetorbydept();
            

        }
    }

}
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EvaluationForm.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.EvaluationForm" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mx-0 mx-sm-auto">
  <div class="card">
    <div class="card-header bg-primary">
      <h5 class="card-title text-white mt-2" id="exampleModalLabel">Mentor Evaluation Form</h5>
    </div>

    <div class="modal-body">
      <div class="text-center">
        <i class="far fa-file-alt fa-4x mb-3 text-primary"></i>
        <p>
          <strong>Please rate the mentor on a scale of 1 to 5, with 1 being the lowest and 5 being the highest.</strong>
        </p>
          <hr />
          <div class="form-outline mb-4">
              <asp:Label ID="lbldept" runat="server" Text="Departement:"></asp:Label>
              <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
          </div>
      <div class="form-outline mb-4">
          <asp:Label ID="lblmname" runat="server" Text="Mentors Name"></asp:Label>
         <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
      </div>
       <div class="form-outline mb-4">
          <asp:Label ID="lblid" runat="server" Text="Your ID No:"></asp:Label>
           <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
      </div>
         </div>
        <div class="form-outline mb-4">
            <asp:Table ID="Table1" runat="server" style ="border:1px solid black">
                <asp:TableHeaderRow style ="border:1px solid black">
                    <asp:TableHeaderCell style ="border:1px solid black">Criteria</asp:TableHeaderCell>
                    <asp:TableHeaderCell style ="border:1px solid black">1</asp:TableHeaderCell>
                    <asp:TableHeaderCell style ="border:1px solid black">2</asp:TableHeaderCell>
                    <asp:TableHeaderCell style ="border:1px solid black">3</asp:TableHeaderCell>
                    <asp:TableHeaderCell style ="border:1px solid black">4</asp:TableHeaderCell>
                    <asp:TableHeaderCell style ="border:1px solid black">5</asp:TableHeaderCell>
                    <asp:TableHeaderCell style ="border:1px solid black">Action</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton1" runat="server"  GroupName="q1" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton2" runat="server"  GroupName="q1" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton3" runat="server"  GroupName="q1" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton4" runat="server"  GroupName="q1" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton5" runat="server"  GroupName="q1" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button1" runat="server" Text="Add" OnClick="btn1_click" /></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label2" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton6" runat="server"  GroupName="q2" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton7" runat="server"  GroupName="q2" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton8" runat="server"  GroupName="q2" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton9" runat="server"  GroupName="q2" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton10" runat="server"  GroupName="q2" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button2" runat="server" Text="Add" OnClick="btn2_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label3" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton11" runat="server"  GroupName="q3" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton12" runat="server"  GroupName="q3" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton13" runat="server"  GroupName="q3" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton14" runat="server"  GroupName="q3" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton15" runat="server"  GroupName="q3" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button3" runat="server" Text="Add" OnClick="btn3_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label4" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton16" runat="server"  GroupName="q4" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton17" runat="server"  GroupName="q4" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton18" runat="server"  GroupName="q4" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton19" runat="server"  GroupName="q4" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton20" runat="server"  GroupName="q4" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button4" runat="server" Text="Add" OnClick="btn4_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label5" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton21" runat="server"  GroupName="q5" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton22" runat="server"  GroupName="q5" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton23" runat="server"  GroupName="q5" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton24" runat="server"  GroupName="q5" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton25" runat="server"  GroupName="q5" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button5" runat="server" Text="Add" OnClick="btn5_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label6" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton26" runat="server"  GroupName="q6" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton27" runat="server"  GroupName="q6" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton28" runat="server"  GroupName="q6" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton29" runat="server"  GroupName="q6" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton30" runat="server"  GroupName="q6" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button6" runat="server" Text="Add" OnClick="btn6_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label7" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton31" runat="server"  GroupName="q7" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton32" runat="server"  GroupName="q7" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton33" runat="server"  GroupName="q7" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton34" runat="server"  GroupName="q7" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton35" runat="server"  GroupName="q7" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button7" runat="server" Text="Add" OnClick="btn7_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label8" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton36" runat="server"  GroupName="q8" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton37" runat="server"  GroupName="q8" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton38" runat="server"  GroupName="q8" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton39" runat="server"  GroupName="q8" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton40" runat="server"  GroupName="q8" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button8" runat="server" Text="Add" OnClick="btn8_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label9" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton41" runat="server"  GroupName="q9" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton42" runat="server"  GroupName="q9" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton43" runat="server"  GroupName="q9" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton44" runat="server"  GroupName="q9" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton45" runat="server"  GroupName="q9" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button9" runat="server" Text="Add" OnClick="btn9_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label10" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton46" runat="server"  GroupName="q10" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton47" runat="server"  GroupName="q10" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton48" runat="server"  GroupName="q10" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton49" runat="server"  GroupName="q10" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton50" runat="server"  GroupName="q10" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button10" runat="server" Text="Add" OnClick="btn10_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label11" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton51" runat="server"  GroupName="q11" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton52" runat="server"  GroupName="q11" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton53" runat="server"  GroupName="q11" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton54" runat="server"  GroupName="q11" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton55" runat="server"  GroupName="q11" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button11" runat="server" Text="Add" OnClick="btn11_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label12" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton56" runat="server"  GroupName="q12" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton57" runat="server"  GroupName="q12" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton58" runat="server"  GroupName="q12" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton59" runat="server"  GroupName="q12" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton60" runat="server"  GroupName="q12" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button12" runat="server" Text="Add" OnClick="btn12_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label13" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton61" runat="server"  GroupName="q13" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton62" runat="server"  GroupName="q13" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton63" runat="server"  GroupName="q13" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton64" runat="server"  GroupName="q13" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton65" runat="server"  GroupName="q13" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button13" runat="server" Text="Add" OnClick="btn13_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label14" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton66" runat="server"  GroupName="14" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton67" runat="server"  GroupName="14" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton68" runat="server"  GroupName="14" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton69" runat="server"  GroupName="14" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton70" runat="server"  GroupName="14" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button14" runat="server" Text="Add" OnClick="btn14_click" /></asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label15" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton71" runat="server"  GroupName="15" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton72" runat="server"  GroupName="15" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton73" runat="server"  GroupName="15" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton74" runat="server"  GroupName="15" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:RadioButton ID="RadioButton75" runat="server"  GroupName="15" /></asp:TableCell>
                    <asp:TableCell style ="border:1px solid black"><asp:Button class="btn btn-success btn-block btn-sm" ID="Button15" runat="server" Text="Add" OnClick="btn15_click" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
             
        </div>
        <div class="card-footer text-end">
           <asp:Button class="btn btn-success btn-block btn-lg" ID="btn_add_question"  runat="server" Text="Submit Data" OnClick="btn_submit" />&nbsp&nbsp&nbsp&nbsp&nbsp
           <hr />
            <asp:Label ID="txtsubmit" runat="server" Text=""></asp:Label>
      </div>
</div>
</asp:Content>

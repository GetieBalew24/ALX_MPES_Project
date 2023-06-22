<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EvaluationCriteria.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.EvaluationCatagory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="mx-0 mx-sm-auto">
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  <div class="card">
    <div class="card-header bg-primary">
      <h5 class="card-title text-white mt-2" id="exampleModalLabel">Add Evaluation Criteria</h5>
    </div>
    <div class="modal-body">
      <div class="text-center">
        <i class="far fa-file-alt fa-4x mb-3 text-primary"></i>
        <p>
         
          <strong>
              <asp:Label ID="lblsucess" runat="server" ></asp:Label></strong>
        </p>
      </div>

      <hr />
        <!-- Message input -->
        <div class="form-outline mb-4">
   
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Columns="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>           
          <label class="form-label" for="form4Example3">Write the criteria for evaluating mentors</label>
        </div>
      
    </div>
       <div class="card-footer text-end">
           <asp:Button class="btn btn-success btn-block btn-lg" ID="btn_add_question" runat="server" Text="Add Question" OnClick="btn_add_question_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp
       <asp:Button class="btn btn-danger btn-block btn-lg" ID="btn_cancel" runat="server" Text="Cancel"  />
      </div>
  </div>
</div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewEvaluationResult.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.viewEvaluationResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="mx-0 mx-sm-auto">
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  <div class="card">
    <div class="card-header bg-primary">
      <h5 class="card-title text-white mt-2" id="exampleModalLabel">View Evaluation Result</h5>
    </div>
    <div class="modal-body">
      <div class="text-center">
        <i class="far fa-file-alt fa-4x mb-3 text-primary"></i>
      </div>

      <hr />
        <!-- Message input -->
             <div class="form-outline mb-4">
                 <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>           
        </div>
      
    </div>
  </div>
</div>
</asp:Content>

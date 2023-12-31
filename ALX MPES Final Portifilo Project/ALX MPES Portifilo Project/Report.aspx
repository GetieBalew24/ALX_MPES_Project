﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="mx-0 mx-sm-auto">
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  <div class="card">
    <div class="card-header bg-primary">
      <h5 class="card-title text-white mt-2" id="exampleModalLabel">Generate Report</h5>
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
        <div class="form-outline mb-10">
            <asp:Label ID="Label2" runat="server" Text="Mentor ID:"></asp:Label>
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>          
        </div>
        <div class="form-outline mb-4">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>           
        </div>
      
    </div>
       <div class="card-footer text-end">
           <asp:Button class="btn btn-success btn-block btn-lg" ID="btn_add_question" runat="server" Text="Generate Mentor Result" OnClick="btn_add_question_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp
       <asp:Button class="btn btn-danger btn-block btn-lg" ID="btn_cancel" runat="server" Text="Cancel"  />
      </div>
  </div>
</div>
</asp:Content>

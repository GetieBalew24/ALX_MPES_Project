<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UploadStudentList.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.UploadStudentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-horizontal table-bordered">
           <br />
         <br />
        <div class="form-group">
            <div class="col-md-6"></div>
                <div class="col-lg-8">
    <label class="btn-lg" for="exampleInputFile">Upload ALX Students</label>
                     <br />
                    <br />
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="400" ToolTip="Select Excel File" />              
  </div>
            </div>
        <div class="form-group">
            <div class="col-md-3"></div>
                <div class="col-lg-4">
                    
                    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
  </div>
            </div>
        <div class="form-group">
            <div class="col-md-6"></div>
                <div class="col-lg-8">
                    
                    <asp:Label ID="Label1" runat="server" CssClass="btn-success" Text=""></asp:Label>
  </div>
            </div>
        </div>
</asp:Content>

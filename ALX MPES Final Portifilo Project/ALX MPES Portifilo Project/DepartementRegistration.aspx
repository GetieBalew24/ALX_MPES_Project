<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DepartementRegistration.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.DepartementRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">      
      <center>  
           <h3 class="display-5 fw-bold ">Departemet Registartation</h3><hr />
        
            <br />
            <asp:Label ID="Label1" runat="server" Text="Departement Code:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtdeptcode" runat="server"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdeptcode" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            
            <asp:Label ID="Label4" runat="server" Text="Departement Name: " CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtdeptname" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtdeptname" runat="server" ErrorMessage="Please enter valid input" ForeColor="Red" ValidationExpression="^[A-Z][A-Za-z\s]+"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="btnregister" runat="server" Text="Register" CssClass="btn btn-outline-dark" OnClick="btnregister_Click"  OnClientClick="javascript:confirm('Are you Sure');"/>
          <asp:Button ID="btnreset" runat="server" Text="Reset " CssClass="btn btn-outline-danger" CausesValidation="false" OnClick="btnreset_Click" />
             </div>
</asp:Content>

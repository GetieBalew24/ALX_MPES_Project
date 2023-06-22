<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">      
      <center>  
           <h3 class="display-5 fw-bold ">Change Password</h3><hr />
         <table style="width: 100%">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Current Password :" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtcurrentpass" runat="server"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcurrentpass" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            
            <asp:Label ID="Label4" runat="server" Text="New Password: " CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtnewpassword" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtnewpassword" runat="server"  ForeColor="Red" 
                ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$"
                ErrorMessage="Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one digit, and one special character."
                ></asp:RegularExpressionValidator>
            <br />
           <asp:Label ID="Label2" runat="server" Text="Confirm Password: " CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtconfimpassword" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtconfimpassword" runat="server" ForeColor="Red" 
                ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$"
                ErrorMessage="Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one digit, and one special character."
                ></asp:RegularExpressionValidator>
            <br />
          <asp:Button ID="btnregister" runat="server" Text="Register" CssClass="btn btn-outline-dark" OnClientClick="javascript:confirm('Are you Sure');" OnClick="btnregister_Click" />
          <asp:Button ID="btnreset" runat="server" Text="Reset " CssClass="btn btn-outline-danger" CausesValidation="false"  />
             </div>
</asp:Content>

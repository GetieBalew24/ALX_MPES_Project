<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuRegistration.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.MenuRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">      
      <center>  
           <h3 class="display-5 fw-bold ">Add Menu</h3><hr />
          <asp:Label ID="Label2" runat="server" Text="Parent Menu" CssClass="form-label"></asp:Label>
          <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="True" AppendDataBoundItems="True">
              <asp:ListItem Selected="True">Root</asp:ListItem>
              
          </asp:DropDownList>
           
            <br />
            <asp:Label ID="Label1" runat="server" Text="Menu Name" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtmenuname" runat="server"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmenuname" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            
            <asp:Label ID="Label4" runat="server" Text="Link " CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtlink" runat="server" CssClass="form-control"></asp:TextBox>
            
            <br />
            <asp:Button ID="btnregister" runat="server" Text="Register" CssClass="btn btn-outline-dark" OnClick="NewJobPost_Click"  OnClientClick="javascript:confirm('Are you Sure');"/>
          <asp:Button ID="btnreset" runat="server" Text="Reset " CssClass="btn btn-outline-danger" CausesValidation="false" OnClick="btnreset_Click" />
             </div>
</asp:Content>

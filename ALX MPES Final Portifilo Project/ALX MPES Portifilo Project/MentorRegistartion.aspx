<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MentorRegistartion.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.MentorRegistartion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">      
      <center>  
           <h3 class="display-5 fw-bold ">Register ALX Mentors</h3><hr />
          <asp:Label ID="Label2" runat="server" Text="Mentor ID" CssClass="form-label"></asp:Label>
          <asp:TextBox ID="txtmentorid" runat="server"  CssClass="form-control"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmentorid" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>           
            <br />
          <asp:Label ID="Label3" runat="server" Text="First Name" CssClass="form-label"></asp:Label>
          <asp:TextBox ID="txtfname" runat="server"  CssClass="form-control"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfname" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>           
            <br />
          <asp:Label ID="Label5" runat="server" Text="Middle Name" CssClass="form-label"></asp:Label>
          <asp:TextBox ID="txtmname" runat="server"  CssClass="form-control"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmname" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>           
            <br />
          <asp:Label ID="Label6" runat="server" Text="Last Name" CssClass="form-label"></asp:Label>
          <asp:TextBox ID="txtlname" runat="server"  CssClass="form-control"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlname" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>           
            <br />
          <asp:Label ID="Label7" runat="server" Text="Email" CssClass="form-label"></asp:Label>
          <asp:TextBox ID="txtemail" runat="server"  CssClass="form-control"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ControlToValidate="txtemail" ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"
    ErrorMessage="Please enter a valid email address."
    Display="Dynamic"></asp:RegularExpressionValidator>          
            <br />
            <asp:Label ID="Label8" runat="server" Text="Dept" CssClass="form-label"></asp:Label>
          <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" AppendDataBoundItems="True"></asp:DropDownList>
                     <br />
            <asp:Label ID="Label1" runat="server" Text="Specialization" CssClass="form-label"></asp:Label>
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" AppendDataBoundItems="True">
              <asp:ListItem>Fullstack</asp:ListItem>
              <asp:ListItem>Backend</asp:ListItem>
              <asp:ListItem>Frontend</asp:ListItem>
          </asp:DropDownList>
            <br />
            <asp:Button ID="btnregister" runat="server" Text="Register" CssClass="btn btn-outline-dark" OnClick="btnregister_Click"  OnClientClick="javascript:confirm('Are you Sure');"/>
          <asp:Button ID="btnreset" runat="server" Text="Reset " CssClass="btn btn-outline-danger" CausesValidation="false" />
             </div>
</asp:Content>

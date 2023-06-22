<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">
        <center>              
                 <center> <span><img src="images/user_login.jpg" height="80" width="80"  /><span class="fw-bold display-6 text-center"> Create Account</span></span><hr /></center>
              <asp:Label ID="Label3" runat="server" Text="Role"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
                <asp:ListItem>Mentor</asp:ListItem>           
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
            <asp:Label ID="Label4" runat="server" Text="ID" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtid" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" CausesValidation="false" OnClick="btnSearch_Click1" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtid" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
          
            <asp:Label ID="Username" runat="server" Text="Username" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Password" runat="server" Text="Password" ></asp:Label>
            <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
           
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />          
            <asp:Label ID="Label5" runat="server" Text="Status"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>Deactive</asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>

            <hr />
            <asp:Button ID="btncreateaccount" runat="server" Text="Create Account" CssClass="btn btn-outline-dark" OnClick="btncreateaccount_Click" />
            </center>
</asp:Content>

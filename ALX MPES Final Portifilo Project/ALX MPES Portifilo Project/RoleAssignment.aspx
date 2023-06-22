<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoleAssignment.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.RoleAssignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">
       <center> <span><img src="images/logo.png" height="80" width="80"  /><span class="fw-bold display-6 text-center"> Assign Role</span></span><hr /></center>          
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter username" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          <br />
     <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-condensed table-responsive table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="MenuId" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              <Columns>
                  <asp:BoundField DataField="MenuName" HeaderText="MenuName" SortExpression="MenuName" />
                  <asp:BoundField DataField="MenuId" HeaderText="MenuId" ReadOnly="True" SortExpression="MenuId" />
                  <asp:TemplateField HeaderText="Assign">
                      <ItemTemplate>
                          <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"/>
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ALX_MPESConnectionString %>" SelectCommand="SELECT [MenuName], [MenuId] FROM [TBL_Menu]"></asp:SqlDataSource>
     <asp:Button ID="Button1" runat="server" Text="Assign" CssClass="btn btn-outline-dark" OnClick="Button1_Click" />
          </div>
</asp:Content>

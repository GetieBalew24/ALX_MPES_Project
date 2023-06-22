<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ALX_MPES_Portifilo_Project.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your contact page.</h3>
        <address>
            Addis Abeba, Ethiopia <br />
            <br />
            <abbr title="Phone">P:</abbr>
            +251931499944 or
            +251 91 380 8829
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:getiebalew00@gmail.com.com">getiebalew00@gmail.com.com</a><br />
            <strong>Support:</strong> <a href="mailto:foryouall13@gmail.com">foryouall13@gmail.com</a>
        </address>
    </main>
</asp:Content>

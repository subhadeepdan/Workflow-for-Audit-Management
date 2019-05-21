<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CompanyData.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="Server">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Company Name"></asp:Label>
            <asp:TextBox ID="inputCompany" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="companyButton" runat="server" Text="Next" OnClick="companyButton_Click" />
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</asp:Content>


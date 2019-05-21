<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SubClauseData.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <form id="form1" runat="server">
    <div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Select Company"></asp:Label>
        <asp:DropDownList ID="CompanyDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CompanyDropDown_SelectedIndexChanged"></asp:DropDownList>
    </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Select Standard"></asp:Label>
            <asp:DropDownList ID="StandardDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="StandardDropDown_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Select Clause ID"></asp:Label>
            <asp:DropDownList ID="ClauseDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ClauseDropDown_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label6" runat="server" Text="Clause Name :"></asp:Label>
            <asp:Label ID="ClauseNameLabel" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Enter SubClause ID"></asp:Label>
            <asp:TextBox ID="inputSubClauseID" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label7" runat="server" Text="Enter SubClause"></asp:Label>
            <asp:TextBox ID="inputSubClauseText" runat="server"></asp:TextBox>
        </div>
        <div>
        <div>
            <asp:Button ID="standardButton" runat="server" Text="Next" OnClick="standardButton_Click" />
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>
    </div>
    </form>
</asp:Content>


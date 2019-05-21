<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SectionData.aspx.cs" Inherits="_Default" %>

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
            <asp:Label ID="Label2" runat="server" Text="Select Department"></asp:Label>
            <asp:DropDownList ID="DepartmentDropDown" runat="server"></asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Enter Section"></asp:Label>
            <asp:TextBox ID="inputSection" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="standardButton" runat="server" Text="Next" OnClick="standardButton_Click" />
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>
    </div>
    </form>
</asp:Content>


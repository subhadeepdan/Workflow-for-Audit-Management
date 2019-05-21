<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SubClauseData.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="Server">
    <form id="form1" runat="server">
        <div class="padding">
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="Select Company : "></asp:Label>
                <asp:DropDownList ID="CompanyDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CompanyDropDown_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Select Standard : "></asp:Label>
                <asp:DropDownList ID="StandardDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="StandardDropDown_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Select Clause ID : "></asp:Label>
                <asp:DropDownList ID="ClauseDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ClauseDropDown_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label ID="Label6" runat="server" Text="Clause Name : "></asp:Label>
                <asp:Label ID="ClauseNameLabel" runat="server" Text=""></asp:Label>
            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Enter SubClause ID : "></asp:Label>
                <asp:TextBox ID="inputSubClauseID" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label7" runat="server" Text="Enter SubClause : "></asp:Label>
                <asp:TextBox ID="inputSubClauseText" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <div>
                    <asp:Button padding-left="120px" CssClass="btn btn-primary" ID="standardButton" runat="server" Text="Add" OnClick="standardButton_Click" />
                </div>
                <br />
                <div>
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
</asp:Content>


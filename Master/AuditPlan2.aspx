<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AuditPlan2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="Server">
    <form id="form1" runat="server">
        <div>
            <br />
            <div class="padding">
                <asp:Label ID="Label1" runat="server" Text="Program ID : "></asp:Label>
                <asp:Label ID="ProgramIDLabel" runat="server" Text=""></asp:Label>
            </div>
            <br />
            <div class="padding">
                <asp:Label ID="Label2" runat="server" Text="Personal No : "></asp:Label>
                <asp:Label ID="PersonalNoLabel" runat="server" Text=""></asp:Label>
            </div>
            <br />
            <div class="padding">
                <asp:Label ID="Label4" runat="server" Text="Select Section : "></asp:Label>
                <asp:DropDownList ID="SectionDropDown" runat="server"></asp:DropDownList>
            </div>
            <br />
            <div class="padding">
                <asp:Label ID="Label6" runat="server" Text="Enter Starting Date : "></asp:Label>
                <asp:TextBox ID="inputFrom" runat="server" textmode="Date"></asp:TextBox>
            </div>
            <br />
            <div class="padding">
                <asp:Label ID="Label9" runat="server" Text="Enter Ending Date : "></asp:Label>
                <asp:TextBox ID="inputTo" runat="server" textmode="Date"></asp:TextBox>
            </div>
            <br />
            <div class="padding">
                <asp:Button CssClass="btn btn-primary" ID="standardButton" runat="server" Text="Add" OnClick="standardButton_Click" />
            </div>
            <br />
            <div class="padding">
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</asp:Content>


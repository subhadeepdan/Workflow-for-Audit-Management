<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewAuditPlan.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="Server">
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"
                HeaderStyle-BackColor="green"
                Font-Names="Arial"
                Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B">
            </asp:GridView>
        </div>
    </form>
</asp:Content>


﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StandardData.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <form id="form1" runat="server">
        <br />
    <div class="padding">
        <asp:Label ID="Label1" runat="server" Text="Select Company : "></asp:Label>
        <asp:DropDownList ID="CompanyDropDown" runat="server"></asp:DropDownList>
    </div>
        <br />
        <div class="padding">
            <asp:Label ID="Label2" runat="server" Text="Enter Standard : "></asp:Label>
            <asp:TextBox ID="inputStandard" runat="server"></asp:TextBox>
        </div>
        <br />
        <div class="padding">
            <asp:Button CssClass="btn btn-primary" ID="standardButton" runat="server" Text="Add" OnClick="standardButton_Click" />
        </div>
        <br />
        <div class="padding">
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>
    </form>
</asp:Content>

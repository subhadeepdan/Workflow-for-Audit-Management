<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AuditPlan.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <form id="form1" runat="server">
        <div >
            <asp:GridView ID="GridView1" runat="server"
                HeaderStyle-BackColor="green"
                AutoGenerateColumns="false" Font-Names="Arial"
                OnPageIndexChanging="OnPaging"
                Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B"
                AllowPaging="true">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:RadioButton ID="RadioButton1" runat="server"
                                onclick="RadioCheck(this);" />
                            <asp:HiddenField ID="HiddenField1" runat="server"
                                Value='<%#Eval("PID")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField ItemStyle-Width="150px" DataField="PID"
                        HeaderText="Program ID" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="PersonalNo"
                        HeaderText="Personal No" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="CompanyName"
                        HeaderText="Company Name" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="DepartmentName"
                        HeaderText="Department Name" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="ClauseID"
                        HeaderText="Clause ID" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="SubClauseID"
                        HeaderText="SubClause ID" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="From"
                        HeaderText="From" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="To"
                        HeaderText="To" />
                    
                </Columns>
            </asp:GridView>
        </div>
        <div >
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Plan Audit" OnClick="standardButton_Click"/>
        </div>
       
    </form>

    <script type="text/javascript">

        function RadioCheck(rb) {

            var gv = document.getElementById("<%=GridView1.ClientID%>");

         var rbs = gv.getElementsByTagName("input");



         var row = rb.parentNode.parentNode;

         for (var i = 0; i < rbs.length; i++) {

             if (rbs[i].type == "radio") {

                 if (rbs[i].checked && rbs[i] != rb) {

                     rbs[i].checked = false;

                     break;

                 }

             }

         }

     }

    </script>
</asp:Content>


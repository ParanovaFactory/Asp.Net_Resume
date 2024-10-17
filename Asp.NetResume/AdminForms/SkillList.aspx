<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="SkillList.aspx.cs" Inherits="Asp.NetResume.AdminForms.SkillList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Title</th>
            <th scope="col">Context</th>
            <th scope="col">Operations</th>
        </tr>
        <tbody>
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("SkillId")%></th>
                            <td><%#Eval("SkillTitle")%></td>
                            <td><%#Eval("SkillName")%></td>
                            <td>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"SkillEdit.aspx?SkillId="+Eval("SkillId") %>' CssClass="btn btn-warning">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>

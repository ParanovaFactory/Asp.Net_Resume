<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="ExperienceList.aspx.cs" Inherits="Asp.NetResume.AdminForms.ExperienceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Position</th>
            <th scope="col">Company</th>
            <th scope="col">Description</th>
            <th scope="col">Date</th>
            <th scope="col">Operations</th>
        </tr>
        <tbody>
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("ExperienceId")%></th>
                            <td><%#Eval("ExperienceTitle")%></td>
                            <td><%#Eval("ExperienceSubtitle")%></td>
                            <td><%#Eval("ExperienceDescription")%></td>
                            <td><%#Eval("ExperienceDate")%></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"ExperienceDelete.aspx?ExperienceId="+Eval("ExperienceId") %>' runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"ExperienceEdit.aspx?ExperienceId="+Eval("ExperienceId") %>' CssClass="btn btn-warning">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>

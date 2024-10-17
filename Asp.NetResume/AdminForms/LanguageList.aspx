<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="LanguageList.aspx.cs" Inherits="Asp.NetResume.AdminForms.LanguageList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Description</th>
            <th scope="col">Operations</th>
        </tr>
        <tbody>
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("LanguageId")%></th>
                            <td><%#Eval("LanguageDescription")%></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"LanguageDelete.aspx?LanguageId="+Eval("LanguageId") %>' CssClass="btn btn-danger">Delete</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"LanguageEdit.aspx?LanguageId="+Eval("LanguageId") %>' CssClass="btn btn-warning">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="InterestsList.aspx.cs" Inherits="Asp.NetResume.AdminForms.InterestsList" %>

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
                            <th><%#Eval("InterestId")%></th>
                            <td><%#Eval("InterestDescriptions")%></td>
                            <td>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"InterestEdit.aspx?InterestId="+Eval("InterestId") %>' CssClass="btn btn-warning">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>

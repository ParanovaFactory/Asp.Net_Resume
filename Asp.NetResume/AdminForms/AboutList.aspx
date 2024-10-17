<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="AboutList.aspx.cs" Inherits="Asp.NetResume.AdminForms.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Surname</th>
            <th scope="col">Address</th>
            <th scope="col">E-Mail</th>
            <th scope="col">Phone</th>
            <th scope="col">Context</th>
            <th scope="col">GitHub URL</th>
            <th scope="col">Linkedin URL</th>
            <th scope="col">Image URL</th>
            <th scope="col">Operations</th>
        </tr>
        <tbody>
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("AboutId")%></th>
                            <td><%#Eval("AboutName")%></td>
                            <td><%#Eval("AboutSurname")%></td>
                            <td><%#Eval("AboutAddress")%></td>
                            <td><%#Eval("AboutMail")%></td>
                            <td><%#Eval("AboutPhone")%></td>
                            <td><%#Eval("AboutContext")%></td>
                            <td><%#Eval("AboutGitHub")%></td>
                            <td><%#Eval("AboutLinkedin")%></td>
                            <td><%#Eval("AboutImage")%></td>
                            <td>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"AboutEdit.aspx?AboutId="+Eval("AboutId") %>' CssClass="btn btn-warning">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table> 

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="CertificateList.aspx.cs" Inherits="Asp.NetResume.AdminForms.CertificateList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Organization</th>
            <th scope="col">Time</th>
            <th scope="col">Date</th>
            <th scope="col">Certificate Url</th>
            <th scope="col">Operations</th>
        </tr>
        <tbody>
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("CertificateId")%></th>
                            <td><%#Eval("CertificateTitle")%></td>
                            <td><%#Eval("CertificateOrganization")%></td>
                            <td><%#Eval("CertificateTime")%></td>
                            <td><%#Eval("CertificateDate")%></td>
                            <td><%#Eval("CertificateUrl")%></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"CertificateDelete.aspx?CertificateId="+Eval("CertificateId") %>' runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"CertificateEdit.aspx?CertificateId="+Eval("CertificateId") %>' CssClass="btn btn-warning">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>

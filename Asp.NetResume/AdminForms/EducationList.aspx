<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="EducationList.aspx.cs" Inherits="Asp.NetResume.AdminForms.EducationList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Level </th>
            <th scope="col">University</th>
            <th scope="col">Department</th>
            <th scope="col">Average</th>
            <th scope="col">Date</th>
            <th scope="col">Operations</th>
        </tr>
        <tbody>
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("EducationId")%></th>
                            <td><%#Eval("EducationTitle")%></td>
                            <td><%#Eval("EducationSubtitle")%></td>
                            <td><%#Eval("EducationDescription")%></td>
                            <td><%#Eval("EducationAvg")%></td>
                            <td><%#Eval("EducationDate")%></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"EducationDelete.aspx?EducationId="+Eval("EducationId") %>' runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"EducationEdit.aspx?EducationId="+Eval("EducationId") %>' CssClass="btn btn-warning">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </tbody>
    </table>

</asp:Content>

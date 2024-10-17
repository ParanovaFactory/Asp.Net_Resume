<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="CertificateAdd.aspx.cs" Inherits="Asp.NetResume.AdminForms.CertificateAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <label for="InputName">Name</label>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">Organization</label>
            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Organization"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">Time</label>
            <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Time"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">Date</label>
            <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Date"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">Certificate Url</label>
            <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Certificate Url"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="SUBMIT" OnClick="Button1_Click" />
    </form>

</asp:Content>

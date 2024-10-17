<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="EducationAdd.aspx.cs" Inherits="Asp.NetResume.AdminForms.EducationAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
    <div class="form-group">
        <label for="InputName">Level</label>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Level"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="InputName">University</label>
        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="University"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="InputName">Department</label>
        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Department"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="InputName">Average</label>
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Average"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="InputName">Date</label>
        <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Date"></asp:TextBox>
    </div>
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="SUBMIT" OnClick="Button1_Click" />
</form>

</asp:Content>

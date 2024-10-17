<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="EaperienceAdd.aspx.cs" Inherits="Asp.NetResume.AdminForms.EaperienceAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <label for="InputName">Position</label>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Position"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">Company</label>
            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Company and City"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputContext">Context</label>
            <textarea id="txtContext" cols="20" rows="4" runat="server" class="form-control" placeholder="Context"></textarea>
        </div>
        <div class="form-group">
            <label for="InputName">Date</label>
            <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Date"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="SUBMIT" OnClick="Button1_Click" />
    </form>

</asp:Content>

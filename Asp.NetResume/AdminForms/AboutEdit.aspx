<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="AboutEdit.aspx.cs" Inherits="Asp.NetResume.AdminForms.AboutEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <label for="InputName">Name</label>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">Surname</label>
            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Surname"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">Address</label>
            <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">Mail</label>
            <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Mail"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">Phone</label>
            <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Phone"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputContext">Context</label>
            <textarea id="txtContext" cols="20" rows="4" runat="server" class="form-control" placeholder="Context"></textarea>
        </div>
        <div class="form-group">
            <label for="InputName">GitHub</label>
            <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="GitHub"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">linkedIn</label>
            <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="linkedIn"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputName">Image</label>
            <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Image"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="SUBMIT" OnClick="Button1_Click" />
    </form>

</asp:Content>

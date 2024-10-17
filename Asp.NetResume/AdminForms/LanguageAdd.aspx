<%@ Page Title="" Language="C#" MasterPageFile="~/AdminForms/Admin.Master" AutoEventWireup="true" CodeBehind="LanguageAdd.aspx.cs" Inherits="Asp.NetResume.AdminForms.LanguageAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <label for="InputName">Description</label>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Description"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="SUBMIT" OnClick="Button1_Click" />
    </form>

</asp:Content>

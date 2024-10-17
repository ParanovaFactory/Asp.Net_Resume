using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class CertificateEdit : System.Web.UI.Page
    {
        int id;

        Tbl_CertificatesTableAdapter adapter = new Tbl_CertificatesTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["CertificateId"]);
            if (Page.IsPostBack == false)
            {
                try
                {
                    TextBox1.Text = adapter.CertificateEditList(id)[0].CertificateTitle;
                    TextBox2.Text = adapter.CertificateEditList(id)[0].CertificateOrganization;
                    TextBox3.Text = adapter.CertificateEditList(id)[0].CertificateTime;
                    TextBox4.Text = adapter.CertificateEditList(id)[0].CertificateDate;
                    TextBox5.Text = adapter.CertificateEditList(id)[0].CertificateUrl;
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adapter.UpdateCertificate(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, id);
            Response.Redirect("CertificateList.aspx");
        }
    }
}
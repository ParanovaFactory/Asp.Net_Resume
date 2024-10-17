using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class CertificateDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["CertificateId"]);
            Tbl_CertificatesTableAdapter adapter = new Tbl_CertificatesTableAdapter();
            adapter.DeleteCertificate(id);
            Response.Redirect("CertificateList.aspx");
        }
    }
}
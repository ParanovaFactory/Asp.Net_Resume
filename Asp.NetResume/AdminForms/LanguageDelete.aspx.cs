using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class LanguageDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["LanguageId"]);
            Tbl_LanguagesTableAdapter adapter = new Tbl_LanguagesTableAdapter();
            adapter.DeleteLanguage(id);
            Response.Redirect("LanguageList.aspx");
        }
    }
}
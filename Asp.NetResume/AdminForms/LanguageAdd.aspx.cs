using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class LanguageAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_LanguagesTableAdapter adapter = new Tbl_LanguagesTableAdapter();
            adapter.InsertLanguage(TextBox1.Text);
            Response.Redirect("LanguageList.aspx");
        }
    }
}
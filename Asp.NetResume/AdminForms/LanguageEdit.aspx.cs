using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class LanguageEdi : System.Web.UI.Page
    {
        int id;

        Tbl_LanguagesTableAdapter adapter = new Tbl_LanguagesTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["LanguageId"]);

            if (Page.IsPostBack == false)
            {
                try
                {
                    TextBox1.Text = adapter.LanguageEditList(id)[0].LanguageDescription;
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adapter.UpdateLanguage(TextBox1.Text,id);
            Response.Redirect("LanguageList.aspx");
        }
    }
}
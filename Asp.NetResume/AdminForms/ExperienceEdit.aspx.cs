using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class ExperienceEdit : System.Web.UI.Page
    {

        int id;
        Tbl_ExperiencesTableAdapter adapter = new Tbl_ExperiencesTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ExperienceId"]);

            if (Page.IsPostBack == false)
            {
                try
                {
                    TextBox1.Text = adapter.ExperienceEditList(id)[0].ExperienceTitle;
                    TextBox2.Text = adapter.ExperienceEditList(id)[0].ExperienceSubtitle;
                    txtContext.Value = adapter.ExperienceEditList(id)[0].ExperienceDescription;
                    TextBox6.Text = adapter.ExperienceEditList(id)[0].ExperienceDate;
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adapter.UpdateExperience(TextBox1.Text, TextBox2.Text, txtContext.Value, TextBox6.Text, id);
            Response.Redirect("ExperienceList.aspx");
        }
    }
}
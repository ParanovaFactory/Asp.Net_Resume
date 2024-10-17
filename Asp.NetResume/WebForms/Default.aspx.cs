using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.WebForms
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_AboutTableAdapter adapter = new Tbl_AboutTableAdapter();
            Repeater1.DataSource = adapter.AboutList();
            Repeater1.DataBind();
            Repeater8.DataSource = adapter.AboutList();
            Repeater8.DataBind();

            Tbl_ExperiencesTableAdapter adapter1 = new Tbl_ExperiencesTableAdapter();
            Repeater2.DataSource = adapter1.ExperienceList();
            Repeater2.DataBind();

            Tbl_EducationsTableAdapter adapter2 = new Tbl_EducationsTableAdapter();
            Repeater3.DataSource = adapter2.EducationList();
            Repeater3.DataBind();

            Tbl_SkillsTableAdapter adapter3 = new Tbl_SkillsTableAdapter();
            Repeater4.DataSource = adapter3.SkillList();
            Repeater4.DataBind();

            Tbl_CertificatesTableAdapter adapter4 = new Tbl_CertificatesTableAdapter();
            Repeater5.DataSource = adapter4.CertificateList();
            Repeater5.DataBind();

            Tbl_LanguagesTableAdapter adapter5 = new Tbl_LanguagesTableAdapter();
            Repeater6.DataSource = adapter5.LanguageList();
            Repeater6.DataBind();

            Tbl_InterestsTableAdapter adapter6 = new Tbl_InterestsTableAdapter();
            Repeater7.DataSource = adapter6.InterestList();
            Repeater7.DataBind();
        }
    }
}
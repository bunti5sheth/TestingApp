using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Detailsview_demo : System.Web.UI.Page
{
    Bal b = new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            detailsviewdata();
        }

    }
    public void detailsviewdata()
    {
        DetailsView1.DataSource = b.eselect();
        DetailsView1.DataBind();
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        DetailsView1.PageIndex = e.NewPageIndex;
        detailsviewdata();
    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        if (e.NewMode == DetailsViewMode.Edit)
        {
            DetailsView1.ChangeMode(e.NewMode);
            detailsviewdata();

        }
        
        if (e.NewMode == DetailsViewMode.Insert)
        {
            DetailsView1.ChangeMode(e.NewMode);
            detailsviewdata();
        }
        if (e.CancelingEdit)
        {
            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
            detailsviewdata();
        }
    }
    protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    {
        Label id = (Label)DetailsView1.FindControl("lbleid");
        b.eid = Convert.ToInt32(id.Text);
        b.edelete(b);
        detailsviewdata();
    }
    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        Label id = (Label)DetailsView1.FindControl("lbleid1");
        TextBox name = (TextBox)DetailsView1.FindControl("txtename");
        TextBox gen = (TextBox)DetailsView1.FindControl("txtegender");
        TextBox bdate = (TextBox)DetailsView1.FindControl("txtebdate");
        TextBox mno = (TextBox)DetailsView1.FindControl("txtemno");
        TextBox city = (TextBox)DetailsView1.FindControl("txtecity");
        TextBox lang = (TextBox)DetailsView1.FindControl("txtelang");
        TextBox address = (TextBox)DetailsView1.FindControl("txteaddress");

        b.eid = Convert.ToInt32(id.Text);
        b.ename = name.Text;
        b.egender = gen.Text;
        b.ebdate = bdate.Text;
        b.emno = Convert.ToInt32(mno.Text);
        b.eaddress = address.Text;
        b.ecity = city.Text;
        b.elang = lang.Text;

        b.eupdate(b);
        DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        detailsviewdata();
    }
}
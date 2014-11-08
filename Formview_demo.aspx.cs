using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Formview_demo : System.Web.UI.Page
{
    Bal b=new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Formviewdata();
        }
    }
    public void Formviewdata()
    {
        FormView1.DataSource = b.eselect();
        FormView1.DataBind();
    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
       // FormView1.PageIndex = e.NewPageIndex;
       
        
        FormView1.PageIndex = e.NewPageIndex;
        Formviewdata();
    }
    protected void FormView1_ModeChanging(object sender, FormViewModeEventArgs e)
    {
       
       

        if (e.NewMode == FormViewMode.Edit)
        {
            

            FormView1.ChangeMode(FormViewMode.Edit);
            Formviewdata();
        }
        
    }
    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        
        if (e.CommandName == "Cancel")
        {
            FormView1.ChangeMode(FormViewMode.ReadOnly);
            Formviewdata();
        }

        if (e.CommandName == "New")
        {
            FormView1.ChangeMode(FormViewMode.Insert);
            Formviewdata();
        }
       
    }
    protected void FormView1_ItemDeleting(object sender, FormViewDeleteEventArgs e)
    {
        Label id = (Label)FormView1.FindControl("lbleid");
        b.eid = Convert.ToInt32(id.Text);
        b.edelete(b);
        Formviewdata();
    }
    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        Label id = (Label)FormView1.FindControl("lbleid1");
        TextBox name = (TextBox)FormView1.FindControl("txtename");
        TextBox gen = (TextBox)FormView1.FindControl("txtegender");
        TextBox bdate = (TextBox)FormView1.FindControl("txtebdate");
        TextBox mno = (TextBox)FormView1.FindControl("txtemno");
        TextBox city = (TextBox)FormView1.FindControl("txtecity");
        TextBox lang = (TextBox)FormView1.FindControl("txtelang");
        TextBox address = (TextBox)FormView1.FindControl("txteaddress");

        b.eid = Convert.ToInt32(id.Text);
        b.ename = name.Text;
        b.egender = gen.Text;
        b.ebdate = bdate.Text;
        b.emno = Convert.ToInt32(mno.Text);
        b.eaddress = address.Text;
        b.ecity = city.Text;
        b.elang = lang.Text;

        b.eupdate(b);
        FormView1.ChangeMode(FormViewMode.ReadOnly);
        Formviewdata();

    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        TextBox id = (TextBox)FormView1.FindControl("txteid1");
        TextBox name = (TextBox)FormView1.FindControl("txtename");
        TextBox gen = (TextBox)FormView1.FindControl("txtegender");
        TextBox bdate = (TextBox)FormView1.FindControl("txtebdate");
        TextBox mno = (TextBox)FormView1.FindControl("txtemno");
        TextBox city = (TextBox)FormView1.FindControl("txtecity");
        TextBox lang = (TextBox)FormView1.FindControl("txtelang");
        TextBox address = (TextBox)FormView1.FindControl("txteaddress");

        b.eid = Convert.ToInt32(id.Text);
        b.ename = name.Text;
        b.egender = gen.Text;
        b.ebdate = bdate.Text;
        b.emno = Convert.ToInt32(mno.Text);
        b.eaddress = address.Text;
        b.ecity = city.Text;
        b.elang = lang.Text;
        b.einsert(b);
        FormView1.ChangeMode(FormViewMode.ReadOnly);
        Formviewdata();
        
    }
}
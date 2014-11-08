using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gridvew_demo : System.Web.UI.Page
{
    Bal b = new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            gridviewdata();
        }

    }
    public void gridviewdata()
    {
        GridView1.DataSource = b.eselect();
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gridviewdata();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        gridviewdata();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label id =(Label) GridView1.Rows[e.RowIndex].FindControl("lbleid");
        TextBox name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtename");
        TextBox gen = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtegender");
        TextBox bdate = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtebdate");
        TextBox mno = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtemno");
        TextBox city = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtecity");
        TextBox lang = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtelang");
        TextBox address= (TextBox)GridView1.Rows[e.RowIndex].FindControl("txteaddress");

        b.eid = Convert.ToInt32(id.Text);
        b.ename = name.Text;
        b.egender = gen.Text;
        b.ebdate = bdate.Text;
        b.emno = Convert.ToInt32(mno.Text);
        b.eaddress = address.Text;
        b.ecity = city.Text;
        b.elang = lang.Text;

        b.eupdate(b);
        GridView1.EditIndex = -1;
        gridviewdata();


    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("lbleid1");
        b.eid = Convert.ToInt32(id.Text);
        b.edelete(b);
        gridviewdata();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridviewdata();
    }
}
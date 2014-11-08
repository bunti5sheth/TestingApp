using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    Bal b = new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        rblgender.SelectedIndex = 1;
    }
    protected void btnins_Click(object sender, EventArgs e)
    {
        b.eid = Convert.ToInt32(txtid.Text);
        b.ename = txtname.Text;
        
        if (rblgender.SelectedItem.Text == "")
        {
            rblgender.SelectedIndex=1;
         
        }
        else
        {
            b.egender = rblgender.SelectedItem.Text;
        }
        b.ebdate = txtbdate.Text;
        b.emno = Convert.ToInt32(txtmno.Text);
        b.eaddress = txtaddress.Text;
        b.ecity = ddlcity.SelectedItem.Text;
        //b.elang=
            int i;
            string lang = "";
        for(i=0;i<cbllang.Items.Count;i++)
        {
            if (cbllang.Items[i].Selected)
            {
                lang += cbllang.Items[i].Text + ";";
               

            }
        }
        b.elang = lang.Remove(lang.Length - 1);
        b.einsert(b);
    
    }
    protected void btnins0_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Gridvew_demo.aspx");
    }
}
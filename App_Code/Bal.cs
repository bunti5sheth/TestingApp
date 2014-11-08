using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Bal
/// </summary>
public class Bal
{
    Dal d = new Dal();
    public int eid { get; set; }
    public string ename { get; set; }
    public string egender { get; set; }
    public string ebdate { get; set; }
    public int emno { get; set; }
    public string eaddress { get; set; }
    public string ecity { get; set; }
    public string elang { get; set; }
	public Bal()
	{
		
	}
    public void edelete(Bal b)
    {
        d.delete(b);
    }
    public void einsert(Bal b)
    {
        d.insert(b);
    }
    public DataSet eselect()
    {
        return d.select();
    }
    public void eupdate(Bal b)
    {
         d.update(b);
    }
}
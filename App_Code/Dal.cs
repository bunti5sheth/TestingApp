using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Dal
/// </summary>
public class Dal
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
	public Dal()
	{
        con = new SqlConnection(ConfigurationManager.AppSettings["default"]);

	}
    public void insert(Bal b)
    {
        cmd = new SqlCommand("demoinsert",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@eid", b.eid);
        cmd.Parameters.AddWithValue("@ename", b.ename);
        cmd.Parameters.AddWithValue("@egender", b.egender);
        cmd.Parameters.AddWithValue("@ebdate", b.ebdate);
        cmd.Parameters.AddWithValue("@emno", b.emno);
        cmd.Parameters.AddWithValue("@eaddress", b.eaddress);
        cmd.Parameters.AddWithValue("@ecity", b.ecity);
        cmd.Parameters.AddWithValue("@elang", b.elang);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    public DataSet select()
    {
        cmd = new SqlCommand("myempdisp", con);
        cmd.CommandType = CommandType.StoredProcedure;
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public void update(Bal b)
    {
        cmd = new SqlCommand("demoupdate",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@eid",b.eid);
        cmd.Parameters.AddWithValue("@ename", b.ename);
        cmd.Parameters.AddWithValue("@egender", b.egender);
        cmd.Parameters.AddWithValue("@ebdate", b.ebdate);
        cmd.Parameters.AddWithValue("@emno", b.emno);
        cmd.Parameters.AddWithValue("@eaddress", b.eaddress);
        cmd.Parameters.AddWithValue("@ecity", b.ecity);
        cmd.Parameters.AddWithValue("@elang", b.elang);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    public void delete(Bal b)
    {
        cmd = new SqlCommand("demodelete",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id",b.eid);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

}
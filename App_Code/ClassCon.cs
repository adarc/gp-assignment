using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


/// <summary>
/// Summary description for ClassCon
/// </summary>
public class ClassCon
{
 string constr = "Data Source=DELL\\SQLEXPRESS;Initial Catalog=Store;integrated security=true";

 // string constr = "Data Source=69.73.147.53 ;Initial Catalog=adventstp_com_GP;uid=GPA;pwd=India@487";
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sda = new SqlDataAdapter();
    public DataSet selectds(String sql)
    {
        con.Close();
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = constr;
            con.Open();
        }
        DataSet ds = new DataSet();
        cmd.CommandText = sql;
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        return ds;

    }
    public DataTable selectdt(String sql)
    {
        con.Close();
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = constr;
            con.Open();
        }
        DataTable dt = new DataTable();
        cmd.CommandText = sql;
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(dt);
        return dt;

    }

    public SqlDataReader selectdr(String sql)
    {
        SqlDataReader dr;
        con.Close();
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = constr;
            con.Open();

        }
        cmd.CommandText = sql;
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        return dr;
    }

    public string selectScaler(String sql)
    {
        con.Close();
        string v;
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = constr;
            con.Open();
        }
        cmd.CommandText = sql;
        cmd.Connection = con;
        v = Convert.ToString(cmd.ExecuteScalar());
        return v;
    }

    public void executeQry(String sql)
    {
        con.Close();
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = constr;
            con.Open();
        }
        //con.ConnectionString = constr;
        //con.Open();
        cmd.CommandText = sql;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();

    }
    public void trans(string sql)
    {
        SqlTransaction tran;
        con.Close();
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = constr;
            con.Open();

        }
        tran = con.BeginTransaction();
        cmd.CommandText = sql;
        cmd.Connection = con;
        cmd.Transaction = tran;
        cmd.ExecuteNonQuery();
        try
        {


            tran.Commit();
        }
        catch
        {
            tran.Rollback();
        }
        con.Close();
    }
    public string dates(string dts)
    {
        DateTime date = Convert.ToDateTime(dts);
        return date.Year + "-" + date.Month + "-" + date.Day;
    }
}
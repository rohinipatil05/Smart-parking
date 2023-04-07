using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;
using System.Data;

public partial class adminside_editparking : System.Web.UI.Page
{
    helper db = new helper();

    SqlDataReader dr, ddr;
    string qs;

    protected void Page_Load(object sender, EventArgs e)
    {
        qs = Request.QueryString["id"];
        if (!IsPostBack)
        {
            showdata();
        }
    }

    void showdata()
    {
        db.Connection.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dtbl = new DataTable();
        cmd.CommandText = "select * from parking_area where Id='" + qs + "'";
        cmd.Connection = db.Connection;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            tname.Text = ds.Tables[0].Rows[0]["area_name"].ToString();
            start_time.Text = ds.Tables[0].Rows[0]["start_time"].ToString();
            end_time.Text = ds.Tables[0].Rows[0]["end_time"].ToString();
            charge.Text = ds.Tables[0].Rows[0]["charge"].ToString();
            db.Connection.Close();
        }
    }
    
    protected void add_btn_Click(object sender, EventArgs e)
    {
        db.Connection.Open();
        string q = "update parking_area set area_name=@area_name,start_time=@start_time,end_time=@end_time,charge=@charge WHERE Id = '" + qs + "'";

        SqlCommand sqlCmd = new SqlCommand(q, db.Connection);
        sqlCmd.Parameters.AddWithValue("@area_name", tname.Text);
        sqlCmd.Parameters.AddWithValue("@start_time", start_time.Text);
        sqlCmd.Parameters.AddWithValue("@end_time", end_time.Text);
        sqlCmd.Parameters.AddWithValue("@charge", charge.Text);
        sqlCmd.ExecuteNonQuery();
        msglbl.Text = "Updated Successfully";
        db.Connection.Close();
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewparkings.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        db.Connection.Open();
        string q = "delete from parking_area where Id='"+qs+"'";
        SqlCommand sqlCmd = new SqlCommand(q, db.Connection);
        sqlCmd.Parameters.AddWithValue("@cname", qs);
        sqlCmd.ExecuteNonQuery();
        Response.Redirect("viewparkings.aspx");
        db.Connection.Close();
    }
}
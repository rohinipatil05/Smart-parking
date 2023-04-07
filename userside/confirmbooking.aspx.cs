using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;
using System.Data;

public partial class userside_payment : System.Web.UI.Page
{
    helper db = new helper();
    public string slotno, date, area, areaname, start_time, end_time, charge;

    
    protected void Page_Load(object sender, EventArgs e)
    {
      
        slotno = Request.QueryString["slot_id"];
        date = Request.QueryString["date"];
        area = Request.QueryString["area"];
        showdata();
        
    }

    void showdata()
    {
        db.Connection.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dtbl = new DataTable();
        cmd.CommandText = "select * from parking_area where Id='" + area + "'";
        cmd.Connection = db.Connection;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            slotno_lbl.Text = slotno;
            areaname_lbl.Text = ds.Tables[0].Rows[0]["area_name"].ToString();
            start_time_lbl.Text = ds.Tables[0].Rows[0]["start_time"].ToString();
            end_time_lbl.Text = ds.Tables[0].Rows[0]["end_time"].ToString();
            date_lbl.Text = date;
            charge_lbl.Text = ds.Tables[0].Rows[0]["charge"].ToString();
            db.Connection.Close();
        }
    }

    protected void cBook_Click(object sender, EventArgs e)
    {
        
        db.Connection.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into bookings values (@slotno,@date,@areaid,@areaname,@starttime,@endtime,@charge,@useremail,@status)";
        cmd.Parameters.AddWithValue("@slotno",slotno_lbl.Text);
        cmd.Parameters.AddWithValue("@date", date_lbl.Text);
        cmd.Parameters.AddWithValue("@areaid", area);
        cmd.Parameters.AddWithValue("@areaname", areaname_lbl.Text);
        cmd.Parameters.AddWithValue("@starttime", start_time_lbl.Text);
        cmd.Parameters.AddWithValue("@endtime", end_time_lbl.Text);
        cmd.Parameters.AddWithValue("@charge", charge_lbl.Text);
        cmd.Parameters.AddWithValue("@useremail", Session["user"].ToString());
        cmd.Parameters.AddWithValue("@status", "booked");
        cmd.Connection = db.Connection;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();

        cmd.CommandText = "insert into bookings_users values (@uslotno,@udate,@uareaid,@uareaname,@ustarttime,@uendtime,@ucharge,@uuseremail,@ustatus)";
        cmd.Parameters.AddWithValue("@uslotno", slotno_lbl.Text);
        cmd.Parameters.AddWithValue("@udate", date_lbl.Text);
        cmd.Parameters.AddWithValue("@uareaid", area);
        cmd.Parameters.AddWithValue("@uareaname", areaname_lbl.Text);
        cmd.Parameters.AddWithValue("@ustarttime", start_time_lbl.Text);
        cmd.Parameters.AddWithValue("@uendtime", end_time_lbl.Text);
        cmd.Parameters.AddWithValue("@ucharge", charge_lbl.Text);
        cmd.Parameters.AddWithValue("@uuseremail", Session["user"].ToString());
        cmd.Parameters.AddWithValue("@ustatus", "booked");
        cmd.ExecuteNonQuery();
        db.Connection.Close();

        Response.Redirect("thanks.aspx");
    }




}
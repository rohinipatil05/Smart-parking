using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for products
/// </summary>
public class items
{
    public List<items> item_list = new List<items>();
     
    public string sid { get; set; }

    public string areaId { get; set; }

    public string date { get; set; }

    public items(string sid, string areaId,string date)
    {
        this.sid = sid;
        this.areaId = areaId;
        this.date = date;
    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for products
/// </summary>
public class counts
{
    public List<counts> counts_list = new List<counts>();
     
    public string sid { get; set; }
    public int id { get; set; }
    public bool isVisible { get; set; }

    public counts(string sid, int id,bool isVisible)
    {
        this.sid = sid;
        this.id = id;
        this.isVisible = isVisible;
    }

}
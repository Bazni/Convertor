using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class Time : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IEnumerable<KeyValuePair<string, double>> DataCoefs = new List<KeyValuePair<string, double>>()
        {
            new KeyValuePair<string, double>("Seconds", 1.0),
            new KeyValuePair<string, double>("Miliseconds", 0.001),
            new KeyValuePair<string, double>("Minutes", 60.0),
            new KeyValuePair<string, double>("Hours", 3600.0),
            new KeyValuePair<string, double>("Days", 86400.0),
            new KeyValuePair<string, double>("Weeks", 604800.0),
            new KeyValuePair<string, double>("Months", 2629800.0),
            new KeyValuePair<string, double>("Years", 31557600.0)
        };
        protected void Convert(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TBFrom.Text))
                return;
            double value = double.Parse(TBFrom.Text);
            double fromCoef = DataCoefs.FirstOrDefault(x => x.Key == DropDownList1.Text).Value;
            double toCoef = DataCoefs.FirstOrDefault(x => x.Key == DropDownList2.Text).Value;
            value = (value * fromCoef * (1 / toCoef));

            Result.Text = value.ToString();
        }
    }
}
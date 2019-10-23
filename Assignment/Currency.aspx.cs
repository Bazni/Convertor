using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class Currency : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IEnumerable<KeyValuePair<string, double>> DataCoefs = new List<KeyValuePair<string, double>>()
        {
            new KeyValuePair<string, double>("USD", 1.0),
            new KeyValuePair<string, double>("EUR", 1.10),
            new KeyValuePair<string, double>("MYR", 0.24),
            new KeyValuePair<string, double>("CFP", 0.0093),
            new KeyValuePair<string, double>("BTC", 10716.80),
            new KeyValuePair<string, double>("ETH", 175.55)
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
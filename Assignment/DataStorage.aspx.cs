using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class DataStorage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<KeyValuePair<string, double>> DataCoefs = new List<KeyValuePair<string, double>>()
        {
            new KeyValuePair<string, double>("Bits", 1.0),
            new KeyValuePair<string, double>("Bytes", 8.0),
            new KeyValuePair<string, double>("Kilobits", 1024.0),
            new KeyValuePair<string, double>("Kilobytes", 8192.0),
            new KeyValuePair<string, double>("Megabits", 1048576.0),
            new KeyValuePair<string, double>("Megabytes", 8388608.0),
            new KeyValuePair<string, double>("Gigabits", 1073741824.0),
            new KeyValuePair<string, double>("Gigabytes", 8589934592.0)
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
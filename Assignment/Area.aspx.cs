using System;
using System.Collections.Generic;
using System.Linq;

namespace Assignment
{
    public partial class Area : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IEnumerable<KeyValuePair<string, double>> DataCoefs = new List<KeyValuePair<string, double>>()
        {
            new KeyValuePair<string, double>("Kilometers²", 1.0),
            new KeyValuePair<string, double>("Meters²", 1e-6),
            new KeyValuePair<string, double>("Decimeters²", 1e-8),
            new KeyValuePair<string, double>("Milimeters²", 1e-10),
            new KeyValuePair<string, double>("Hectares", 0.01),
            new KeyValuePair<string, double>("Ares", 0.0001)
        };
        protected void Convert(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TBFrom.Text))
            {
                return;
            }

            double value = double.Parse(TBFrom.Text);
            double fromCoef = DataCoefs.FirstOrDefault(x => x.Key == DropDownList1.Text).Value;
            double toCoef = DataCoefs.FirstOrDefault(x => x.Key == DropDownList2.Text).Value;
            value = (value * fromCoef * (1 / toCoef));

            Result.Text = value.ToString();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class weight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IEnumerable<KeyValuePair<string, double>> DataCoefs = new List<KeyValuePair<string, double>>()
        {
            new KeyValuePair<string, double>("Grams", 1.0),
            new KeyValuePair<string, double>("Tons", 1000000),
            new KeyValuePair<string, double>("Pounds", 453.59237),
            new KeyValuePair<string, double>("Carats", 0.2),
            new KeyValuePair<string, double>("Centners", 100000),
            new KeyValuePair<string, double>("Stones", 6350.293 )
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
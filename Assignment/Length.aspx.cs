using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IEnumerable<KeyValuePair<string, double>> DataCoefs = new List<KeyValuePair<string, double>>()
        {
            new KeyValuePair<string, double>("Meters", 1.0),
            new KeyValuePair<string, double>("Kilometers", 0.001),
            new KeyValuePair<string, double>("Inches", 0.0254),
            new KeyValuePair<string, double>("Feets", 0.3048),
            new KeyValuePair<string, double>("Light years", 9460730472580044.0),
            new KeyValuePair<string, double>("Parsecs", 30856775812799588.0)
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
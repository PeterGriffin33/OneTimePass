using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OneTimePass
{
    public partial class Default : System.Web.UI.Page
    {
        public string userId = "AlexCiobanu";
        public DateTime dataRequest = DateTime.Now;
        public static DateTime expira = DateTime.Now.AddSeconds(30);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                expira = DateTime.Now.AddSeconds(30);
                txtTimeLeft.ForeColor = System.Drawing.Color.Black;
            }
            txtNume.Text = userId;
            txtDataGenerare.Text = dataRequest.ToString();
            txtPass.Text = GenereazaParola(16);
            
            

        }

        private static readonly Random random = new Random();

        public static string GenereazaParola(int length)
        {
            const string caractere = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&*";
            return new string(Enumerable.Repeat(caractere, length)
                .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {

            TimeSpan ts = expira - DateTime.Now;
            int secundeRamase = Convert.ToInt32(ts.TotalSeconds);
            if (secundeRamase > 0)
                txtTimeLeft.Text = secundeRamase.ToString()+ " secunde";
            else
            {
                txtTimeLeft.ForeColor = System.Drawing.Color.Red;
                txtTimeLeft.Text = "Timpul a expirat!";
                
            }
        }

    }
}
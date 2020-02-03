using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HoungBNB.DataModels;

namespace HoungBNB
{
    public partial class News : System.Web.UI.Page
    {
        public class NewsClass
        {
            public string Name { get; set; }
            public string Msg { get; set; }
            public string Date { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new BNB17dbDB())
            {
                var q =
                     (from c in db.News
                      orderby c.PublishDate descending
                      select new NewsClass
                      {
                          Name = c.Title,
                          Msg = c.Message,
                          Date = Convert.ToDateTime(c.PublishDate).ToShortDateString(),
                      }).ToList();

                //處理換行
                for (int i = 0; i < q.Count(); i++)
                {
                    var StringLineList = q[i].Msg.Split(new string[] { Environment.NewLine }, StringSplitOptions.None);
                    for (int k = 0; k < StringLineList.Length; k++)
                    {
                        StringLineList[k] = "<p>" + StringLineList[k] + "</p>";
                    }
                    q[i].Msg = string.Join("", StringLineList);
                }

                lv_news.DataSource = q;
                lv_news.DataBind();
            }
        }
    }
}
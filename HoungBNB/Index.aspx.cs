using HoungBNB.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoungBNB
{
    public partial class Index : System.Web.UI.Page
    {
        public class NewsClass
        {
            public string Name { get; set; }
            public string Msg { get; set; }
            public string MsgDetail { get; set; }
            public string Date { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            #region □ 關於我們 □ 
            using (var db = new BNB17dbDB())
            {
                var q = db.Abouts.FirstOrDefault();

                //處理換行
                var StringLineList = q.About_Column.Split(new string[] { Environment.NewLine }, StringSplitOptions.None);
                for (int k = 0; k < StringLineList.Length; k++)
                {
                    StringLineList[k] = "<p>" + StringLineList[k] + "</p>";
                }
                q.About_Column = string.Join("", StringLineList);
                ltr_about.Text = q.About_Column;
            }
            #endregion

            #region □ 最新消息 □ 
            using (var db = new BNB17dbDB())
            {
                var q =
                 (from c in db.News
                  orderby c.PublishDate descending
                  select new NewsClass
                  {
                      Name = c.Title,
                      Msg = c.Message,
                      MsgDetail = c.Message,
                      Date = Convert.ToDateTime(c.PublishDate).ToShortDateString(),
                  }).Take(3).ToList();

                //移除換行、限制字元，讓排版好看
                for (int i = 0; i < q.Count(); i++)
                {
                    q[i].Msg = q[i].Msg.Replace(Environment.NewLine, " ");
                    if (q[i].Msg.Length > 26)
                    {
                        q[i].Msg = q[i].Msg.Substring(0, 25) + "...";
                    }
                }

                //細項Modal處理換行
                for (int i = 0; i < q.Count(); i++)
                {
                    var StringLineList = q[i].MsgDetail.Split(new string[] { Environment.NewLine }, StringSplitOptions.None);
                    for (int k = 0; k < StringLineList.Length; k++)
                    {
                        StringLineList[k] = "<p>" + StringLineList[k] + "</p>";
                    }
                    q[i].MsgDetail = string.Join("", StringLineList);
                }

                lv_news.DataSource = q;
                lv_news.DataBind();
            }
            #endregion
        }
    }
}
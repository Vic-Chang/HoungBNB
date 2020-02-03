using HoungBNB.DataModels;
using LinqToDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HoungBNB.ModalDetail
{
    public partial class Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bind();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

            using (var db = new BNB17dbDB())
            {
                var save = new News();

                var statement = db.News
                                  .Value(p => p.Title, "測試").Value(s => s.Message, textboxx.Text);
                //statement.Value(p => p.Added, () => Sql.CurrentTimestamp);
                statement.Insert();
            }
        }
        protected void bind()
        {
            using (var db = new BNB17dbDB())
            {
                var q =
                    from c in db.News
                    where c.No>7
                    orderby c.PublishDate descending
                    select new
                    {
                        Name = c.Title,
                        msg = c.Message,
                        Date = c.PublishDate
                    };

                foreach (var i in q)
                {
                    var aa = i.msg.Split(new string[] { Environment.NewLine }, StringSplitOptions.None);
                }

                lv.DataSource = q;
                lv.DataBind();
            }
        }
    }
}
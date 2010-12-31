using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.DynamicData;

namespace CTLH_C3
{
    public partial class PasswordField : FieldTemplateUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // add a string of '*' the max length of the field
            //var length = Column.MaxLength > 20 ? 20 : Column.MaxLength;
            //Literal1.Text = new String('*', length);
        }

        public override Control DataControl
        {
            get
            {
                return Literal1;
            }
        }
    }

}

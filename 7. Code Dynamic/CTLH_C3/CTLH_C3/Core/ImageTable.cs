using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace CTLH_C3
{
    [MetadataType(typeof(ImageTableMetadata))]
    public partial class ImageTable
    {
    }

    public class ImageTableMetadata
    {
        public object Id { get; set; }
        [UIHint("DbImage")]
        [ImageFormat(200, 200)]
        public object Image { get; set; }
    }
}

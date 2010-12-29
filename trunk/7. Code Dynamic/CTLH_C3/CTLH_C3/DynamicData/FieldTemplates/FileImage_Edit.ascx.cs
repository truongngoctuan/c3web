using System;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;
//using Microsoft.Web.DynamicData;
using CTLH_C3.Core;

namespace CTLH_C3
{
    public partial class FileImage_Edit : FieldTemplateUserControl
    {
        public override Control DataControl
        {
            get
            {
                return RadioButtonList1;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // add CustomValidator1's event handler
            CustomValidator1.ServerValidate += new ServerValidateEventHandler(CustomValidator1_ServerValidate);
            RadioButtonList1.DataBound += new EventHandler(RadioButtonList1_DataBound);
        }

        void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            var fileImage = MetadataAttributes.OfType<FileImageAttribute>().FirstOrDefault();

            if (fileImage.Edit == FileImageAttribute.EditorType.Select)
                return; // don't bother with the validator if in Select mode

            var imageUrlMetadata = MetadataAttributes.OfType<ImageUrlAttribute>().FirstOrDefault();
            if (FileUploadEdit.HasFile && imageUrlMetadata != null && !String.IsNullOrEmpty(imageUrlMetadata.UrlFormat))
            {
                String imagesDir = imageUrlMetadata.UrlFormat.Substring(0, imageUrlMetadata.UrlFormat.LastIndexOf("/") + 1);
                if (String.IsNullOrEmpty(imagesDir)) imagesDir = "~/images";

                String path = Server.MapPath(imagesDir);
                String fileExtension = FileUploadEdit.FileName.Substring(FileUploadEdit.FileName.LastIndexOf(".") + 1).ToLower();
                var extensions = MetadataAttributes.OfType<FileImageTypesAttribute>().FirstOrDefault();

                String[] allowedExtensions = extensions.ImageTypes.Length > 0
                    ? extensions.ImageTypes : FileImageTypesAttribute.DefaultExtensions;

                if (allowedExtensions.Contains(fileExtension))
                {
                    var bytes = FileUploadEdit.FileBytes;
                    try
                    {
                        var a = System.Drawing.Image.FromStream(new MemoryStream(bytes));
                    }
                    catch
                    {
                        // catch any error when user tries to load a file that 
                        // is not an image recognised by System.Drawing
                        args.IsValid = false;
                        CustomValidator1.ErrorMessage = "Not an Image, must be one of the following types: " + extensions.ToString();
                    }
                }
                else
                {
                    // Raise an error if the files extensionf does not match the allowed extensions
                    args.IsValid = false;
                    CustomValidator1.ErrorMessage = "Not correct Image type, must be one of the following types: " + extensions.ToString();
                }
            }
            else
            {
                // no file to download you decide wether this is a valid error
                // to throw comment out
                if (!FileUploadEdit.HasFile)
                {
                    args.IsValid = false;
                    CustomValidator1.ErrorMessage = "No file to download";
                }

                // the ImageUrlAttribute is required to work in either select or upload edit mode
                if (imageUrlMetadata == null || String.IsNullOrEmpty(imageUrlMetadata.UrlFormat))
                {
                    args.IsValid = false;
                    CustomValidator1.ErrorMessage = "ImageUrl attribute missing.";
                }
            }
        }

        protected override void OnDataBinding(EventArgs e)
        {
            base.OnDataBinding(e);

            var fileImage = MetadataAttributes.OfType<FileImageAttribute>().FirstOrDefault();
            var imageUrlMetadata = MetadataAttributes.OfType<ImageUrlAttribute>().FirstOrDefault();

            if (imageUrlMetadata == null || String.IsNullOrEmpty(imageUrlMetadata.UrlFormat))
            {
                CustomValidator1.IsValid = false;
                CustomValidator1.ErrorMessage = String.Format("An ImageUrlAttribute is required on the column '{0}' for the FileImage_Edit FieldTemplate to work.", Column.Name);
                return; // the ImageUrlAttribute is a required attribute need to throw an error
            }

            // get images folder
            String imagesDir = imageUrlMetadata.UrlFormat.Substring(0, imageUrlMetadata.UrlFormat.LastIndexOf("/") + 1);
            if (String.IsNullOrEmpty(imagesDir))
                imagesDir = "~/images";

            var imageFormat = MetadataAttributes.OfType<ImageFormatAttribute>().FirstOrDefault();

            switch (fileImage.Edit)
            {
                case FileImageAttribute.EditorType.Upload:
                    FileUploadEdit.Visible = true;
                    if (FieldValue == null)
                        return;
                    String fileName = (String)FieldValue;
                    ImageEdit.ImageUrl = imagesDir + "/" + fileName;


                    if (imageFormat != null)
                    {
                        ImageEdit.Width = imageFormat.DisplayWidth;
                        ImageEdit.Height = imageFormat.DisplayHeight;
                    }
                    PlaceHolderImage.Visible = true;
                    break;
                case FileImageAttribute.EditorType.Select:
                default:
                    FileUploadEdit.Visible = false;

                    var dirInfo = new DirectoryInfo(Server.MapPath(imagesDir));
                    if (!dirInfo.Exists)
                        dirInfo.Create(); // if directory does not exist then create it

                    // get a list of images in the ImageUrlAttribute folder
                    var imagesFolder = ResolveUrl(imagesDir);
                    var files = dirInfo.GetFiles();

                    if (imageFormat != null)
                    {// size image to ImageFormatAttribute
                        foreach (FileInfo file in files)
                        {
                            String img = String.Format
                                (
                                    "<img src='{0}' alt='{1}' width='{2}' height='{3}' />",
                                    imagesFolder + file.Name,
                                    file.Name.Substring(0, file.Name.LastIndexOf(".")),
                                    imageFormat.DisplayWidth,
                                    imageFormat.DisplayHeight
                                );
                            // embed image in the radio button
                            var li = new ListItem(img, file.Name);
                            this.RadioButtonList1.Items.Add(li);
                        }
                    }
                    else
                    {// if no ImageFormatAttribute supplied the do not resize image
                        foreach (FileInfo file in files)
                        {
                            String img = String.Format
                                (
                                    "<img src='{0}' alt='{1}' />",
                                    imagesFolder + file.Name,
                                    file.Name.Substring(0, file.Name.LastIndexOf("."))
                                );
                            // embed image in the radio button
                            var li = new ListItem(img, file.Name);
                            this.RadioButtonList1.Items.Add(li);
                        }
                    }
                    break;
            }
        }

        protected override void ExtractValues(IOrderedDictionary dictionary)
        {
            // get Edit type Select or Upload
            var fileImage = MetadataAttributes.OfType<FileImageAttribute>().FirstOrDefault();
            switch (fileImage.Edit)
            {
                case FileImageAttribute.EditorType.Upload:
                    var imageUrlMetadata = MetadataAttributes.OfType<ImageUrlAttribute>().FirstOrDefault();

                    if (FileUploadEdit.HasFile && imageUrlMetadata != null && !String.IsNullOrEmpty(imageUrlMetadata.UrlFormat))
                    {
                        // get the 
                        String imagesDir = imageUrlMetadata.UrlFormat.Substring(0, imageUrlMetadata.UrlFormat.LastIndexOf("/") + 1);
                        if (String.IsNullOrEmpty(imagesDir))
                            imagesDir = "~/images";

                        // resolve full path c:\... etc
                        String path = Server.MapPath(imagesDir);

                        // get files extension without the dot
                        String fileExtension = FileUploadEdit.FileName.Substring(FileUploadEdit.FileName.LastIndexOf(".") + 1).ToLower();

                        // get allowed extensions
                        var extensions = MetadataAttributes.OfType<FileImageTypesAttribute>().FirstOrDefault();
                        String[] allowedExtensions = extensions.ImageTypes.Length > 0
                            ? extensions.ImageTypes : FileImageTypesAttribute.DefaultExtensions;

                        if (allowedExtensions.Contains(fileExtension))
                        {
                            // try to upload the file showing error if it fails
                            try
                            {
                                FileUploadEdit.PostedFile.SaveAs(path + "\\" + FileUploadEdit.FileName);
                                ImageEdit.ImageUrl = imagesDir + "/" + FileUploadEdit.FileName;
                                ImageEdit.AlternateText = FileUploadEdit.FileName;
                                dictionary[Column.Name] = FileUploadEdit.FileName;
                            }
                            catch (Exception ex)
                            {
                                // display error
                                CustomValidator1.IsValid = false;
                                CustomValidator1.ErrorMessage = ex.Message;
                                dictionary[Column.Name] = null;
                            }
                        }
                    }
                    else
                    {
                        // retrun null if no file or ImageUrlAttribute is null or empty
                        dictionary[Column.Name] = null;
                    }
                    break;
                case FileImageAttribute.EditorType.Select:
                default:
                    // return currently selected item
                    dictionary[Column.Name] = RadioButtonList1.SelectedValue;
                    break;
            }
        }

        protected void RadioButtonList1_DataBound(object sender, EventArgs e)
        {
            var fileImage = MetadataAttributes.OfType<FileImageAttribute>().FirstOrDefault();
            if (FieldValue != null && fileImage.Edit == FileImageAttribute.EditorType.Select)
            {
                //var selectedImage = (String)FieldValue;
                RadioButtonList1.Enabled = true;

                for (int i = 0; i < RadioButtonList1.Items.Count; i++)
                {
                    // set select image 
                    if ((String)FieldValue == RadioButtonList1.Items[i].Value)
                    {
                        RadioButtonList1.Items[i].Selected = true;
                        break;
                    }
                }
            }
        }
    }
}

namespace Smartclusters.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    using System.ServiceModel.DomainServices.Hosting;
    using System.ServiceModel.DomainServices.Server;


    // The MetadataTypeAttribute identifies registrationMetadata as the class
    // that carries additional metadata for the registration class.
    [MetadataTypeAttribute(typeof(registration.registrationMetadata))]
    public partial class registration
    {

        // This class allows you to attach custom attributes to properties
        // of the registration class.
        //
        // For example, the following marks the Xyz property as a
        // required property and specifies the format for valid values:
        //    [Required]
        //    [RegularExpression("[A-Z][A-Za-z0-9]*")]
        //    [StringLength(32)]
        //    public string Xyz { get; set; }
        internal sealed class registrationMetadata
        {

            // Metadata classes are not meant to be instantiated.
            private registrationMetadata()
            {
            }

            public string E_mail { get; set; }

            public string Fname { get; set; }

            public string Lname { get; set; }

            public string Password { get; set; }

            public int Reg_Id { get; set; }

            public EntityCollection<stck_data> stck_data { get; set; }
        }
    }

    // The MetadataTypeAttribute identifies stck_dataMetadata as the class
    // that carries additional metadata for the stck_data class.
    [MetadataTypeAttribute(typeof(stck_data.stck_dataMetadata))]
    public partial class stck_data
    {

        // This class allows you to attach custom attributes to properties
        // of the stck_data class.
        //
        // For example, the following marks the Xyz property as a
        // required property and specifies the format for valid values:
        //    [Required]
        //    [RegularExpression("[A-Z][A-Za-z0-9]*")]
        //    [StringLength(32)]
        //    public string Xyz { get; set; }
        internal sealed class stck_dataMetadata
        {

            // Metadata classes are not meant to be instantiated.
            private stck_dataMetadata()
            {
            }

            public Nullable<int> Reg_Id { get; set; }

            public registration registration { get; set; }

            public Nullable<float> stck_aset { get; set; }

            public int stck_idxx { get; set; }

            public Nullable<float> stck_mrkt_valu { get; set; }

            public string stck_name { get; set; }

            public Nullable<float> stck_prft { get; set; }

            public Nullable<int> stck_sale { get; set; }
        }
    }
}

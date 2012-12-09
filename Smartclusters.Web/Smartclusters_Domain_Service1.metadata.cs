
namespace Smartclusters.Web
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.Linq;
    using System.ServiceModel.DomainServices.Hosting;
    using System.ServiceModel.DomainServices.Server;


    // The MetadataTypeAttribute identifies country_dataMetadata as the class
    // that carries additional metadata for the country_data class.
    [MetadataTypeAttribute(typeof(country_data.country_dataMetadata))]
    public partial class country_data
    {

        // This class allows you to attach custom attributes to properties
        // of the country_data class.
        //
        // For example, the following marks the Xyz property as a
        // required property and specifies the format for valid values:
        //    [Required]
        //    [RegularExpression("[A-Z][A-Za-z0-9]*")]
        //    [StringLength(32)]
        //    public string Xyz { get; set; }
        internal sealed class country_dataMetadata
        {

            // Metadata classes are not meant to be instantiated.
            private country_dataMetadata()
            {
            }

            public string Countryname { get; set; }

            public int Population { get; set; }

            public Nullable<int> Reg_id { get; set; }

            public registration registration { get; set; }
        }
    }
}

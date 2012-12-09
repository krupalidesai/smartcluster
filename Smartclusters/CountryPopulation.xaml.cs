using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using Smartclusters.Web;
using System.ServiceModel.DomainServices.Client;

namespace Smartclusters
{
    public partial class CountryPopulation : UserControl
    {
        private Smartclusters_Domain_Service1 _domainContext = new Smartclusters_Domain_Service1();
        public CountryPopulation()
        {
            InitializeComponent();
            LoadOperation<country_data> loadOp = this._domainContext.Load(this._domainContext.GetCountry_dataQuery());

            //dgStockData.ItemsSource = loadOp.Entities;
            //Treemap2.ItemsSource = loadOp.Entities;
            //EntityQuery<stck_data> stckdata = this._domaincontext.
            //stckdata.
            //Func<int, stck_data> delFilterData = 
            //loadOp.AllEntities.Where(

            SilverlightTreemap.ItemsSource = loadOp.Entities;
        }

        private void menu1_Click_1(object sender, RoutedEventArgs e)
        {
            string browserFeatures = "directories=yes,location=yes,menubar=yes,status=yes,toolbar=yes,resizable=yes";
            System.Windows.Browser.HtmlPage.Window.Navigate(new Uri(GetAbsoluteUrl("Data.aspx?TempID=0"), UriKind.Absolute), "_self", browserFeatures);            
        }
        private string GetAbsoluteUrl(string strRelativePath)
        {
            if (string.IsNullOrEmpty(strRelativePath))
                return strRelativePath;

            string strFullUrl;
            if (strRelativePath.StartsWith("http:", StringComparison.OrdinalIgnoreCase)
              || strRelativePath.StartsWith("https:", StringComparison.OrdinalIgnoreCase)
              || strRelativePath.StartsWith("file:", StringComparison.OrdinalIgnoreCase))
            {
                strFullUrl = strRelativePath;
            }
            else
            {
                strFullUrl = System.Windows.Application.Current.Host.Source.AbsoluteUri;
                if (strFullUrl.IndexOf("ClientBin") > 0)
                    strFullUrl = strFullUrl.Substring(0, strFullUrl.IndexOf("ClientBin")) + strRelativePath;
                else
                    strFullUrl = strFullUrl.Substring(0, strFullUrl.LastIndexOf("/") + 1) + strRelativePath;
            }

            return strFullUrl;
        }
    }
}

using flashker.Services;
using flashker.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace flashker
{
    public partial class App : Application
    {

        public App()

        {
            InitializeComponent();
            //ApplyTheme("Light");
            DependencyService.Register<MockDataStore>();
            MainPage = new AppShell();
        }
        /*
        public void ApplyTheme(string theme)
        {
            switch (theme)
            {
                case "Light":
                    Current.Resources.MergedDictionaries.Clear();
                    Current.Resources.MergedDictionaries.Add((ResourceDictionary)Resources["LightTheme"]);
                    break;

                case "Dark":
                    Current.Resources.MergedDictionaries.Clear();
                    Current.Resources.MergedDictionaries.Add((ResourceDictionary)Resources["DarkTheme"]);
                    break;

                case "AMOLED":
                    Current.Resources.MergedDictionaries.Clear();
                    Current.Resources.MergedDictionaries.Add((ResourceDictionary)Resources["AMOLEDTheme"]);
                    break;

                default:
                    throw new ArgumentException("Nieznany motyw: " + theme);
            }
        }*/

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}

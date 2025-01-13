using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Xamarin.Essentials;
using System;

namespace flashker.Views
{
    public partial class AboutPage : ContentPage
    {
        public AboutPage()
        {
            InitializeComponent();
            LoadUserLocation();
        }

        private async void LoadUserLocation()
        {
            try
            {
                // Pobierz aktualną lokalizację użytkownika
                var location = await Geolocation.GetLastKnownLocationAsync();

                if (location == null)
                {
                    location = await Geolocation.GetLocationAsync(new GeolocationRequest
                    {
                        DesiredAccuracy = GeolocationAccuracy.High,
                        Timeout = TimeSpan.FromSeconds(30)
                    });
                }

                if (location != null)
                {
                    // Ustaw mapę na bieżącej lokalizacji użytkownika
                    var userPosition = new Position(location.Latitude, location.Longitude);
                    LocationMap.MoveToRegion(MapSpan.FromCenterAndRadius(userPosition, Distance.FromKilometers(1)));

                    // Dodaj pinezkę
                    LocationMap.Pins.Add(new Pin
                    {
                        Label = "You are here",
                        Position = userPosition
                    });
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Unable to get location: {ex.Message}", "OK");
            }
        }
    }
}

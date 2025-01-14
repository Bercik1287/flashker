using System;
using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using Android.Hardware;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace flashker.Droid
{
    [Activity(Label = "flashker", Icon = "@mipmap/icon", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity, ISensorEventListener
    {
        private SensorManager sensorManager;
        private Sensor lightSensor;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Inicjalizacja komponentów Xamarin
            Xamarin.FormsMaps.Init(this, savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);

            LoadApplication(new App());

            // Inicjalizacja czujnika światła
            sensorManager = (SensorManager)GetSystemService(SensorService);
            lightSensor = sensorManager.GetDefaultSensor(SensorType.Light);
        }

        protected override void OnResume()
        {
            base.OnResume();
            if (lightSensor != null)
                sensorManager.RegisterListener(this, lightSensor, SensorDelay.Normal);
        }

        protected override void OnPause()
        {
            base.OnPause();
            sensorManager.UnregisterListener(this);
        }

        public void OnAccuracyChanged(Sensor sensor, [GeneratedEnum] SensorStatus accuracy)
        {
            // Nie używane w tym przypadku
        }

        public void OnSensorChanged(SensorEvent e)
        {
            if (e.Sensor.Type == SensorType.Light)
            {
                float lightLevel = e.Values[0];
                AdjustScreenBrightness(lightLevel);
            }
        }

        private void AdjustScreenBrightness(float lightLevel)
        {
            var window = Window;
            var attributes = window.Attributes;
            attributes.ScreenBrightness = Math.Min(lightLevel / 100f, 1f); // Normalizacja wartości jasności
            window.Attributes = attributes;
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

    }
}

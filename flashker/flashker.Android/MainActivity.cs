using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using Android.Hardware;
using Xamarin.Essentials;

namespace flashker.Droid
{
    [Activity(Label = "flashker", Icon = "@mipmap/icon", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize )]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);
            LoadApplication(new App());
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}
namespace BrightnessAdjuster
{
    [Activity(Label = "BrightnessAdjuster", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity, ISensorEventListener
    {
        SensorManager sensorManager;
        Sensor lightSensor;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);
            LoadApplication(new App());

            sensorManager = (SensorManager)GetSystemService(SensorService);
            lightSensor = sensorManager.GetDefaultSensor(SensorType.Light);
        }

        protected override void OnResume()
        {
            base.OnResume();
            sensorManager.RegisterListener(this, lightSensor, SensorDelay.Normal);
        }

        protected override void OnPause()
        {
            base.OnPause();
            sensorManager.UnregisterListener(this);
        }

        public void OnAccuracyChanged(Sensor sensor, [GeneratedEnum] SensorStatus accuracy)
        {
            // Nie używane
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
            attributes.ScreenBrightness = lightLevel / 10000f; // Normalizacja wartości jasności
            window.Attributes = attributes;
        }
    }
}
using System;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using Android.Provider;
using Xamarin.Forms;

namespace flashker.Droid
{
    [Activity(Label = "flashker", Icon = "@mipmap/icon", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        static readonly int PickImageId = 1000;
        static readonly int TakePhotoId = 1001;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);
            LoadApplication(new App());

            RequestPermissions(new[]
            {
                Android.Manifest.Permission.Camera,
                Android.Manifest.Permission.ReadExternalStorage,
                Android.Manifest.Permission.WriteExternalStorage
            }, 0);
        }

        public void PickImageFromGallery()
        {
            Intent intent = new Intent();
            intent.SetType("image/*");
            intent.SetAction(Intent.ActionGetContent);
            StartActivityForResult(Intent.CreateChooser(intent, "Select Picture"), PickImageId);
        }

        public void TakePhoto()
        {
            Intent intent = new Intent(MediaStore.ActionImageCapture);
            StartActivityForResult(intent, TakePhotoId);
        }

        protected override void OnActivityResult(int requestCode, Result resultCode, Intent data)
        {
            base.OnActivityResult(requestCode, resultCode, data);

            if (resultCode == Result.Ok)
            {
                if (requestCode == PickImageId && data?.Data != null)
                {
                    var imageUri = data.Data;
                    SendImageMessage(imageUri.ToString());
                }
                else if (requestCode == TakePhotoId && data?.Extras != null)
                {
                    var bitmap = data.Extras.Get("data") as Android.Graphics.Bitmap;
                    if (bitmap != null)
                    {
                        string imagePath = SaveBitmapToFile(bitmap);
                        SendImageMessage(imagePath);
                    }
                }
            }
        }

        private string SaveBitmapToFile(Android.Graphics.Bitmap bitmap)
        {
            string filePath = System.IO.Path.Combine(
                System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal),
                "photo.jpg");

            using (var stream = new System.IO.FileStream(filePath, System.IO.FileMode.Create))
            {
                bitmap.Compress(Android.Graphics.Bitmap.CompressFormat.Jpeg, 100, stream);
            }
            return filePath;
        }

        private void SendImageMessage(string imagePath)
        {
            Device.BeginInvokeOnMainThread(() =>
            {
                if (requestCode == PickImageId)
                {
                    MessagingCenter.Send(this, "ImagePicked", imagePath);
                }
                else if (requestCode == TakePhotoId)
                {
                    MessagingCenter.Send(this, "PhotoTaken", imagePath);
                }
            });
        }
    }
}}

using Xamarin.Essentials;
using Xamarin.Forms;
using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Threading.Tasks;

namespace flashker.Views
{
    public partial class ChatPage : ContentPage
    {
        public ObservableCollection<Message> Messages { get; set; }
        public string UserName { get; private set; }

        public ChatPage(string userName)
        {
            InitializeComponent();
            UserName = userName;
            Title = UserName;

            // Wczytaj przykładowe wiadomości
            LoadMessages();

            // Powiąż dane z widokiem
            BindingContext = this;
        }

        public class Message
        {
            public string Text { get; set; }
            public string ImagePath { get; set; }
            public bool IsSentByMe { get; set; }
            public bool IsText { get; set; }
            public bool IsImage { get; set; }

            public LayoutOptions Alignment => IsSentByMe ? LayoutOptions.End : LayoutOptions.Start;
            public Color BackgroundColor => IsSentByMe ? Color.Blue : Color.Gray;
        }

        private void LoadMessages()
        {
            Messages = new ObservableCollection<Message>
            {
                new Message { Text = "Cześć, jak się masz?", IsSentByMe = false },
                new Message { Text = "W porządku, a Ty?", IsSentByMe = true },
                new Message { Text = "Też dobrze, dzięki!", IsSentByMe = false }
            };
        }

        private async void OnTakePhoto(object sender, EventArgs e)
        {
            try
            {
                // Sprawdź i poproś o uprawnienia
                if (!await RequestCameraAndStoragePermissionsAsync())
                {
                    await DisplayAlert("Uprawnienia", "Nie przyznano uprawnień do aparatu i zapisu danych.", "OK");
                    return;
                }

                // Zrób zdjęcie za pomocą Xamarin.Essentials
                var photo = await MediaPicker.CapturePhotoAsync();

                if (photo != null)
                {
                    // Zapisz zdjęcie w lokalnym folderze
                    var newFile = Path.Combine(FileSystem.CacheDirectory, photo.FileName);
                    using (var stream = await photo.OpenReadAsync())
                    using (var newStream = File.OpenWrite(newFile))
                        await stream.CopyToAsync(newStream);

                    // Dodaj wiadomość ze zdjęciem
                    Messages.Add(new Message
                    {
                        ImagePath = newFile,
                        IsImage = true,
                        IsText = false,
                        IsSentByMe = true
                    });
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Błąd", $"Nie udało się zrobić zdjęcia: {ex.Message}", "OK");
            }
        }

        private async Task<bool> RequestCameraAndStoragePermissionsAsync()
        {
            try
            {
                // Sprawdź i poproś o uprawnienia aparatu
                var cameraStatus = await Permissions.CheckStatusAsync<Permissions.Camera>();
                if (cameraStatus != PermissionStatus.Granted)
                {
                    cameraStatus = await Permissions.RequestAsync<Permissions.Camera>();
                    if (cameraStatus != PermissionStatus.Granted)
                    {
                        await DisplayAlert("Uprawnienia", "Nie przyznano uprawnień do aparatu.", "OK");
                        return false;
                    }
                }

                // Sprawdź i poproś o uprawnienia do zapisu w pamięci
                var storageWriteStatus = await Permissions.CheckStatusAsync<Permissions.StorageWrite>();
                if (storageWriteStatus != PermissionStatus.Granted)
                {
                    storageWriteStatus = await Permissions.RequestAsync<Permissions.StorageWrite>();
                    if (storageWriteStatus != PermissionStatus.Granted)
                    {
                        await DisplayAlert("Uprawnienia", "Nie przyznano uprawnień do zapisu w pamięci.", "OK");
                        return false;
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Błąd", $"Wystąpił problem podczas żądania uprawnień: {ex.Message}", "OK");
                return false;
            }
        }



        private void OnSendMessage(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(MessageEntry.Text))
            {
                // Dodaj nową wiadomość wysłaną przez użytkownika
                Messages.Add(new Message
                {
                    Text = MessageEntry.Text,
                    IsText = true,
                    IsImage = false,
                    IsSentByMe = true
                });

                // Wyczyść pole tekstowe
                MessageEntry.Text = string.Empty;
            }
        }
    }

    // Model danych wiadomości
    public class Message
    {
        public string Text { get; set; }
        public bool IsSentByMe { get; set; }

        // Automatyczne ustawianie wyrównania i koloru na podstawie właściciela wiadomości
        public LayoutOptions Alignment => IsSentByMe ? LayoutOptions.End : LayoutOptions.Start;
        public Color BackgroundColor => IsSentByMe ? Color.Blue : Color.Gray;
    }
}

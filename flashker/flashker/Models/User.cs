using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace flashker.Models
{
    public class User
    {
        public int UserId { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string Location { get; set; }
        public string ProfilePicture { get; set; } // Ścieżka do zdjęcia profilowego
        public string AboutMe { get; set; } // Krótki opis
    }
}
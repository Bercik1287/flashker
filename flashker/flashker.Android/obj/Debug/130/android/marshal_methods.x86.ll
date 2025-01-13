; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [278 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 86
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 117
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 33
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 110
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 100
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 100
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 67
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 101
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 65
	i32 212497893, ; 9: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 111
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 81
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 130
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 70
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 85
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 79
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 57
	i32 319314094, ; 16: Xamarin.Forms.Maps => 0x130858ae => 112
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 45
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 83
	i32 364956269, ; 19: Grpc.Net.Common => 0x15c0ca6d => 22
	i32 371306672, ; 20: Grpc.Core.Api.dll => 0x1621b0b0 => 20
	i32 385762202, ; 21: System.Memory.dll => 0x16fe439a => 44
	i32 391886110, ; 22: Grpc.Net.Client.dll => 0x175bb51e => 21
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 69
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 109
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 78
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 31
	i32 469710990, ; 27: System.dll => 0x1bff388e => 40
	i32 476646585, ; 28: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 79
	i32 486930444, ; 29: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 90
	i32 526420162, ; 30: System.Transactions.dll => 0x1f6088c2 => 124
	i32 548916678, ; 31: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 27
	i32 605376203, ; 32: System.IO.Compression.FileSystem => 0x24154ecb => 128
	i32 618636221, ; 33: K4os.Compression.LZ4.Streams => 0x24dfa3bd => 25
	i32 627609679, ; 34: Xamarin.AndroidX.CustomView => 0x2568904f => 74
	i32 646990296, ; 35: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 15
	i32 662205335, ; 36: System.Text.Encodings.Web.dll => 0x27787397 => 53
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 106
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 62
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 56
	i32 722857257, ; 40: System.Runtime.Loader.dll => 0x2b15ed29 => 49
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 127
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 126
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 97
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 117
	i32 955402788, ; 45: Newtonsoft.Json => 0x38f24a24 => 33
	i32 967690846, ; 46: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 83
	i32 974778368, ; 47: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 983077409, ; 48: MySql.Data.dll => 0x3a989221 => 32
	i32 1012816738, ; 49: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 99
	i32 1028951442, ; 50: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 28
	i32 1035644815, ; 51: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 61
	i32 1042160112, ; 52: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 114
	i32 1049751285, ; 53: Google.Api.CommonProtos.dll => 0x3e91eef5 => 8
	i32 1052210849, ; 54: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 87
	i32 1098259244, ; 55: System => 0x41761b2c => 40
	i32 1145085672, ; 56: System.Linq.Async.dll => 0x44409ee8 => 42
	i32 1175144683, ; 57: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 104
	i32 1178241025, ; 58: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 94
	i32 1203173028, ; 59: Grpc.Net.Client => 0x47b6f6a4 => 21
	i32 1204270330, ; 60: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 62
	i32 1267360935, ; 61: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 105
	i32 1293217323, ; 62: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 76
	i32 1364015309, ; 63: System.IO => 0x514d38cd => 138
	i32 1365406463, ; 64: System.ServiceModel.Internals.dll => 0x516272ff => 131
	i32 1376866003, ; 65: Xamarin.AndroidX.SavedState => 0x52114ed3 => 99
	i32 1395857551, ; 66: Xamarin.AndroidX.Media.dll => 0x5333188f => 91
	i32 1406073936, ; 67: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 71
	i32 1411638395, ; 68: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 47
	i32 1437713837, ; 69: Grpc.Auth => 0x55b1c5ad => 19
	i32 1460219004, ; 70: Xamarin.Forms.Xaml => 0x57092c7c => 115
	i32 1461234159, ; 71: System.Collections.Immutable.dll => 0x5718a9ef => 36
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 127
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 60
	i32 1479771757, ; 74: System.Collections.Immutable => 0x5833866d => 36
	i32 1487250139, ; 75: K4os.Hash.xxHash => 0x58a5a2db => 26
	i32 1530663695, ; 76: Xamarin.Forms.Maps.dll => 0x5b3c130f => 112
	i32 1582372066, ; 77: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 75
	i32 1592978981, ; 78: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 79: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 89
	i32 1624863272, ; 80: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 108
	i32 1636350590, ; 81: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 73
	i32 1639515021, ; 82: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 83: System.Runtime => 0x62c6282e => 48
	i32 1658241508, ; 84: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 102
	i32 1658251792, ; 85: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 116
	i32 1670060433, ; 86: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 70
	i32 1726116996, ; 87: System.Reflection.dll => 0x66e27484 => 137
	i32 1729485958, ; 88: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 66
	i32 1746115085, ; 89: System.IO.Pipelines.dll => 0x68139a0d => 41
	i32 1766324549, ; 90: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 101
	i32 1776026572, ; 91: System.Core.dll => 0x69dc03cc => 38
	i32 1782161461, ; 92: Grpc.Core.Api => 0x6a39a035 => 20
	i32 1788241197, ; 93: Xamarin.AndroidX.Fragment => 0x6a96652d => 78
	i32 1796167890, ; 94: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 27
	i32 1808609942, ; 95: Xamarin.AndroidX.Loader => 0x6bcd3296 => 89
	i32 1813201214, ; 96: Xamarin.Google.Android.Material => 0x6c13413e => 116
	i32 1818569960, ; 97: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 95
	i32 1828688058, ; 98: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 29
	i32 1867746548, ; 99: Xamarin.Essentials.dll => 0x6f538cf4 => 109
	i32 1878053835, ; 100: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 115
	i32 1881862856, ; 101: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 111
	i32 1885316902, ; 102: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 63
	i32 1900519031, ; 103: Grpc.Auth.dll => 0x71479e77 => 19
	i32 1908813208, ; 104: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 119
	i32 1919157823, ; 105: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 92
	i32 1925302748, ; 106: K4os.Compression.LZ4.dll => 0x72c1c9dc => 24
	i32 1927897671, ; 107: System.CodeDom.dll => 0x72e96247 => 35
	i32 2011961780, ; 108: System.Buffers.dll => 0x77ec19b4 => 34
	i32 2013370358, ; 109: flashker.Android => 0x780197f6 => 0
	i32 2019465201, ; 110: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 87
	i32 2055257422, ; 111: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 84
	i32 2079903147, ; 112: System.Runtime.dll => 0x7bf8cdab => 48
	i32 2090596640, ; 113: System.Numerics.Vectors => 0x7c9bf920 => 46
	i32 2097448633, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 80
	i32 2126786730, ; 115: Xamarin.Forms.Platform.Android => 0x7ec430aa => 113
	i32 2129483829, ; 116: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 118
	i32 2178612968, ; 117: System.CodeDom => 0x81dafee8 => 35
	i32 2192057212, ; 118: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 29
	i32 2201231467, ; 119: System.Net.Http => 0x8334206b => 2
	i32 2216717168, ; 120: Firebase.Auth.dll => 0x84206b70 => 5
	i32 2217644978, ; 121: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 104
	i32 2244775296, ; 122: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 90
	i32 2256548716, ; 123: Xamarin.AndroidX.MultiDex => 0x8680336c => 92
	i32 2261435625, ; 124: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 82
	i32 2265110946, ; 125: System.Security.AccessControl.dll => 0x8702d9a2 => 50
	i32 2279325393, ; 126: flashker.Android.dll => 0x87dbbed1 => 0
	i32 2279755925, ; 127: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 98
	i32 2315684594, ; 128: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 58
	i32 2383496789, ; 129: System.Security.Principal.Windows.dll => 0x8e114655 => 52
	i32 2397347608, ; 130: Google.LongRunning.dll => 0x8ee49f18 => 17
	i32 2409053734, ; 131: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 96
	i32 2441199521, ; 132: Google.Cloud.Firestore => 0x9181bfa1 => 14
	i32 2465532216, ; 133: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 69
	i32 2471841756, ; 134: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 135: Java.Interop.dll => 0x93918882 => 23
	i32 2486824558, ; 136: K4os.Hash.xxHash.dll => 0x9439ee6e => 26
	i32 2486847491, ; 137: Google.Api.Gax => 0x943a4803 => 9
	i32 2498657740, ; 138: BouncyCastle.Cryptography.dll => 0x94ee7dcc => 4
	i32 2501346920, ; 139: System.Data.DataSetExtensions => 0x95178668 => 125
	i32 2505896520, ; 140: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 86
	i32 2570120770, ; 141: System.Text.Encodings.Web => 0x9930ee42 => 53
	i32 2581819634, ; 142: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 105
	i32 2611359322, ; 143: ZstdSharp.dll => 0x9ba62e5a => 122
	i32 2620871830, ; 144: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 73
	i32 2624644809, ; 145: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 77
	i32 2633051222, ; 146: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 85
	i32 2635732976, ; 147: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 14
	i32 2660759594, ; 148: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 134
	i32 2663698177, ; 149: System.Runtime.Loader => 0x9ec4cf01 => 49
	i32 2693849962, ; 150: System.IO.dll => 0xa090e36a => 138
	i32 2701096212, ; 151: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 102
	i32 2732626843, ; 152: Xamarin.AndroidX.Activity => 0xa2e0939b => 57
	i32 2737747696, ; 153: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 60
	i32 2744327253, ; 154: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 10
	i32 2757554483, ; 155: Google.Api.Gax.Grpc => 0xa45cf133 => 10
	i32 2765824710, ; 156: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2766581644, ; 157: Xamarin.Forms.Core => 0xa4e6af8c => 110
	i32 2778768386, ; 158: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 107
	i32 2810250172, ; 159: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 71
	i32 2818335264, ; 160: System.Linq.Async => 0xa7fc6220 => 42
	i32 2819470561, ; 161: System.Xml.dll => 0xa80db4e1 => 55
	i32 2827592062, ; 162: flashker => 0xa889a17e => 6
	i32 2839679515, ; 163: Google.LongRunning => 0xa942121b => 17
	i32 2841355853, ; 164: System.Security.Permissions => 0xa95ba64d => 51
	i32 2847418871, ; 165: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 118
	i32 2853208004, ; 166: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 107
	i32 2855708567, ; 167: Xamarin.AndroidX.Transition => 0xaa36a797 => 103
	i32 2867946736, ; 168: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 134
	i32 2893550578, ; 169: Google.Apis.Core => 0xac7813f2 => 12
	i32 2898407901, ; 170: System.Management => 0xacc231dd => 43
	i32 2901442782, ; 171: System.Reflection => 0xacf080de => 137
	i32 2903344695, ; 172: System.ComponentModel.Composition => 0xad0d8637 => 129
	i32 2905242038, ; 173: mscorlib.dll => 0xad2a79b6 => 31
	i32 2912646636, ; 174: Google.Api.CommonProtos => 0xad9b75ec => 8
	i32 2916838712, ; 175: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 108
	i32 2919462931, ; 176: System.Numerics.Vectors.dll => 0xae037813 => 46
	i32 2921128767, ; 177: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 59
	i32 2944313911, ; 178: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 37
	i32 2968338931, ; 179: System.Security.Principal.Windows => 0xb0ed41f3 => 52
	i32 2978675010, ; 180: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 76
	i32 2990604888, ; 181: Google.Apis => 0xb2410258 => 13
	i32 3012788804, ; 182: System.Configuration.ConfigurationManager => 0xb3938244 => 37
	i32 3017076677, ; 183: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 120
	i32 3024354802, ; 184: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 81
	i32 3025069135, ; 185: K4os.Compression.LZ4.Streams.dll => 0xb44ee44f => 25
	i32 3044182254, ; 186: FormsViewGroup => 0xb57288ee => 7
	i32 3057625584, ; 187: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 93
	i32 3058099980, ; 188: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 121
	i32 3089219899, ; 189: ZstdSharp => 0xb821c13b => 122
	i32 3106263381, ; 190: Grpc.Net.Common.dll => 0xb925d155 => 22
	i32 3111772706, ; 191: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3124832203, ; 192: System.Threading.Tasks.Extensions => 0xba4127cb => 132
	i32 3132293585, ; 193: System.Security.AccessControl => 0xbab301d1 => 50
	i32 3203277885, ; 194: Google.Api.Gax.dll => 0xbeee243d => 9
	i32 3204380047, ; 195: System.Data.dll => 0xbefef58f => 123
	i32 3211777861, ; 196: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 75
	i32 3213246214, ; 197: System.Security.Permissions.dll => 0xbf863f06 => 51
	i32 3230466174, ; 198: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 119
	i32 3247949154, ; 199: Mono.Security => 0xc197c562 => 136
	i32 3258312781, ; 200: Xamarin.AndroidX.CardView => 0xc235e84d => 66
	i32 3265893370, ; 201: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 132
	i32 3267021929, ; 202: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 64
	i32 3317135071, ; 203: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 74
	i32 3317144872, ; 204: System.Data => 0xc5b79d28 => 123
	i32 3340431453, ; 205: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 63
	i32 3346324047, ; 206: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 94
	i32 3353484488, ; 207: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 80
	i32 3358260929, ; 208: System.Text.Json => 0xc82afec1 => 54
	i32 3362522851, ; 209: Xamarin.AndroidX.Core => 0xc86c06e3 => 72
	i32 3366347497, ; 210: Java.Interop => 0xc8a662e9 => 23
	i32 3374999561, ; 211: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 98
	i32 3381033598, ; 212: K4os.Compression.LZ4 => 0xc9867a7e => 24
	i32 3395150330, ; 213: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 47
	i32 3404865022, ; 214: System.ServiceModel.Internals => 0xcaf21dfe => 131
	i32 3425187019, ; 215: flashker.dll => 0xcc2834cb => 6
	i32 3429136800, ; 216: System.Xml => 0xcc6479a0 => 55
	i32 3430777524, ; 217: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 218: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 77
	i32 3453592554, ; 219: Google.Apis.Core.dll => 0xcdd9a3ea => 12
	i32 3467345667, ; 220: MySql.Data => 0xceab7f03 => 32
	i32 3476120550, ; 221: Mono.Android => 0xcf3163e6 => 30
	i32 3485117614, ; 222: System.Text.Json.dll => 0xcfbaacae => 54
	i32 3486566296, ; 223: System.Transactions => 0xcfd0c798 => 124
	i32 3493954962, ; 224: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 68
	i32 3499097210, ; 225: Google.Protobuf.dll => 0xd08ffc7a => 18
	i32 3501239056, ; 226: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 64
	i32 3509114376, ; 227: System.Xml.Linq => 0xd128d608 => 56
	i32 3515174580, ; 228: System.Security.dll => 0xd1854eb4 => 135
	i32 3536029504, ; 229: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 113
	i32 3567349600, ; 230: System.ComponentModel.Composition.dll => 0xd4a16f60 => 129
	i32 3598063517, ; 231: Google.Cloud.Firestore.V1 => 0xd676179d => 15
	i32 3605570793, ; 232: BouncyCastle.Cryptography => 0xd6e8a4e9 => 4
	i32 3612435020, ; 233: System.Management.dll => 0xd751624c => 43
	i32 3618140916, ; 234: Xamarin.AndroidX.Preference => 0xd7a872f4 => 96
	i32 3627220390, ; 235: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 97
	i32 3632359727, ; 236: Xamarin.Forms.Platform => 0xd881692f => 114
	i32 3633644679, ; 237: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 59
	i32 3641597786, ; 238: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 84
	i32 3645630983, ; 239: Google.Protobuf => 0xd94bea07 => 18
	i32 3672681054, ; 240: Mono.Android.dll => 0xdae8aa5e => 30
	i32 3676310014, ; 241: System.Web.Services.dll => 0xdb2009fe => 130
	i32 3682565725, ; 242: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 65
	i32 3684561358, ; 243: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 68
	i32 3689375977, ; 244: System.Drawing.Common => 0xdbe768e9 => 126
	i32 3718780102, ; 245: Xamarin.AndroidX.Annotation => 0xdda814c6 => 58
	i32 3724971120, ; 246: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 93
	i32 3748608112, ; 247: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 39
	i32 3757995660, ; 248: Google.Cloud.Location.dll => 0xdffe768c => 16
	i32 3758932259, ; 249: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 82
	i32 3786282454, ; 250: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 67
	i32 3793997468, ; 251: Google.Apis.Auth.dll => 0xe223ce9c => 11
	i32 3822602673, ; 252: Xamarin.AndroidX.Media => 0xe3d849b1 => 91
	i32 3829621856, ; 253: System.Numerics.dll => 0xe4436460 => 45
	i32 3841636137, ; 254: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 28
	i32 3885922214, ; 255: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 103
	i32 3896760992, ; 256: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 72
	i32 3920810846, ; 257: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 128
	i32 3921031405, ; 258: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 106
	i32 3931092270, ; 259: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 95
	i32 3945713374, ; 260: System.Data.DataSetExtensions.dll => 0xeb2ecede => 125
	i32 3953953790, ; 261: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 262: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 61
	i32 3970018735, ; 263: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 121
	i32 4023392905, ; 264: System.IO.Pipelines => 0xefd01a89 => 41
	i32 4024013275, ; 265: Firebase.Auth => 0xefd991db => 5
	i32 4025784931, ; 266: System.Memory => 0xeff49a63 => 44
	i32 4056144661, ; 267: Google.Cloud.Location => 0xf1c3db15 => 16
	i32 4059682726, ; 268: Google.Apis.dll => 0xf1f9d7a6 => 13
	i32 4082882467, ; 269: Google.Apis.Auth => 0xf35bd7a3 => 11
	i32 4105002889, ; 270: Mono.Security.dll => 0xf4ad5f89 => 136
	i32 4151237749, ; 271: System.Core => 0xf76edc75 => 38
	i32 4182413190, ; 272: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 88
	i32 4185676441, ; 273: System.Security => 0xf97c5a99 => 135
	i32 4213026141, ; 274: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 39
	i32 4260525087, ; 275: System.Buffers => 0xfdf2741f => 34
	i32 4278134329, ; 276: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 120
	i32 4292120959 ; 277: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 88
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [278 x i32] [
	i32 86, i32 117, i32 33, i32 110, i32 100, i32 100, i32 67, i32 101, ; 0..7
	i32 65, i32 111, i32 81, i32 130, i32 70, i32 85, i32 79, i32 57, ; 8..15
	i32 112, i32 45, i32 83, i32 22, i32 20, i32 44, i32 21, i32 69, ; 16..23
	i32 109, i32 78, i32 31, i32 40, i32 79, i32 90, i32 124, i32 27, ; 24..31
	i32 128, i32 25, i32 74, i32 15, i32 53, i32 106, i32 62, i32 56, ; 32..39
	i32 49, i32 127, i32 126, i32 97, i32 117, i32 33, i32 83, i32 7, ; 40..47
	i32 32, i32 99, i32 28, i32 61, i32 114, i32 8, i32 87, i32 40, ; 48..55
	i32 42, i32 104, i32 94, i32 21, i32 62, i32 105, i32 76, i32 138, ; 56..63
	i32 131, i32 99, i32 91, i32 71, i32 47, i32 19, i32 115, i32 36, ; 64..71
	i32 127, i32 60, i32 36, i32 26, i32 112, i32 75, i32 3, i32 89, ; 72..79
	i32 108, i32 73, i32 2, i32 48, i32 102, i32 116, i32 70, i32 137, ; 80..87
	i32 66, i32 41, i32 101, i32 38, i32 20, i32 78, i32 27, i32 89, ; 88..95
	i32 116, i32 95, i32 29, i32 109, i32 115, i32 111, i32 63, i32 19, ; 96..103
	i32 119, i32 92, i32 24, i32 35, i32 34, i32 0, i32 87, i32 84, ; 104..111
	i32 48, i32 46, i32 80, i32 113, i32 118, i32 35, i32 29, i32 2, ; 112..119
	i32 5, i32 104, i32 90, i32 92, i32 82, i32 50, i32 0, i32 98, ; 120..127
	i32 58, i32 52, i32 17, i32 96, i32 14, i32 69, i32 1, i32 23, ; 128..135
	i32 26, i32 9, i32 4, i32 125, i32 86, i32 53, i32 105, i32 122, ; 136..143
	i32 73, i32 77, i32 85, i32 14, i32 134, i32 49, i32 138, i32 102, ; 144..151
	i32 57, i32 60, i32 10, i32 10, i32 133, i32 110, i32 107, i32 71, ; 152..159
	i32 42, i32 55, i32 6, i32 17, i32 51, i32 118, i32 107, i32 103, ; 160..167
	i32 134, i32 12, i32 43, i32 137, i32 129, i32 31, i32 8, i32 108, ; 168..175
	i32 46, i32 59, i32 37, i32 52, i32 76, i32 13, i32 37, i32 120, ; 176..183
	i32 81, i32 25, i32 7, i32 93, i32 121, i32 122, i32 22, i32 3, ; 184..191
	i32 132, i32 50, i32 9, i32 123, i32 75, i32 51, i32 119, i32 136, ; 192..199
	i32 66, i32 132, i32 64, i32 74, i32 123, i32 63, i32 94, i32 80, ; 200..207
	i32 54, i32 72, i32 23, i32 98, i32 24, i32 47, i32 131, i32 6, ; 208..215
	i32 55, i32 1, i32 77, i32 12, i32 32, i32 30, i32 54, i32 124, ; 216..223
	i32 68, i32 18, i32 64, i32 56, i32 135, i32 113, i32 129, i32 15, ; 224..231
	i32 4, i32 43, i32 96, i32 97, i32 114, i32 59, i32 84, i32 18, ; 232..239
	i32 30, i32 130, i32 65, i32 68, i32 126, i32 58, i32 93, i32 39, ; 240..247
	i32 16, i32 82, i32 67, i32 11, i32 91, i32 45, i32 28, i32 103, ; 248..255
	i32 72, i32 128, i32 106, i32 95, i32 125, i32 133, i32 61, i32 121, ; 256..263
	i32 41, i32 5, i32 44, i32 16, i32 13, i32 11, i32 136, i32 38, ; 264..271
	i32 88, i32 135, i32 39, i32 34, i32 120, i32 88 ; 272..277
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

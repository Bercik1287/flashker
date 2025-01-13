; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [278 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 77
	i64 96808603140984794, ; 1: Google.Cloud.Location.dll => 0x157eee9616b8fda => 16
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 30
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 67
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 99
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 100
	i64 486223428996552534, ; 6: ZstdSharp.dll => 0x6bf69a1eecfd756 => 122
	i64 502670939551102150, ; 7: System.Management.dll => 0x6f9d88e66daf4c6 => 43
	i64 595053104451889001, ; 8: MySql.Data => 0x8420da551592769 => 32
	i64 634308326490598313, ; 9: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 86
	i64 687654259221141486, ; 10: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 118
	i64 702024105029695270, ; 11: System.Drawing.Common => 0x9be17343c0e7726 => 126
	i64 720058930071658100, ; 12: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 80
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 76
	i64 940822596282819491, ; 14: System.Transactions => 0xd0e792aa81923a3 => 124
	i64 996343623809489702, ; 15: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 114
	i64 1000557547492888992, ; 16: Mono.Security.dll => 0xde2b1c9cba651a0 => 136
	i64 1120440138749646132, ; 17: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 116
	i64 1315114680217950157, ; 18: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 62
	i64 1425944114962822056, ; 19: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1624659445732251991, ; 20: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 60
	i64 1628611045998245443, ; 21: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 88
	i64 1636321030536304333, ; 22: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 81
	i64 1731380447121279447, ; 23: Newtonsoft.Json => 0x18071957e9b889d7 => 33
	i64 1743969030606105336, ; 24: System.Memory.dll => 0x1833d297e88f2af8 => 44
	i64 1769105627832031750, ; 25: Google.Protobuf => 0x188d203205129a06 => 18
	i64 1795316252682057001, ; 26: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 61
	i64 1836611346387731153, ; 27: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 99
	i64 1865037103900624886, ; 28: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 27
	i64 1875917498431009007, ; 29: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 58
	i64 1981742497975770890, ; 30: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 87
	i64 2040001226662520565, ; 31: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 132
	i64 2132872228025857379, ; 32: flashker.dll => 0x1d997bfdaec6f563 => 6
	i64 2133195048986300728, ; 33: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 33
	i64 2136356949452311481, ; 34: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 92
	i64 2165725771938924357, ; 35: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 65
	i64 2262844636196693701, ; 36: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 76
	i64 2284400282711631002, ; 37: System.Web.Services => 0x1fb3d1f42fd4249a => 130
	i64 2329709569556905518, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 84
	i64 2335503487726329082, ; 39: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 53
	i64 2337758774805907496, ; 40: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 47
	i64 2389008765344202151, ; 41: flashker.Android => 0x212776d087a2bda7 => 0
	i64 2445261912722553526, ; 42: Google.Cloud.Firestore.dll => 0x21ef50c10a9ebab6 => 14
	i64 2470498323731680442, ; 43: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 71
	i64 2479423007379663237, ; 44: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 104
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 48
	i64 2547086958574651984, ; 46: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 57
	i64 2592350477072141967, ; 47: System.Xml.dll => 0x23f9e10627330e8f => 55
	i64 2624866290265602282, ; 48: mscorlib.dll => 0x246d65fbde2db8ea => 31
	i64 2694427813909235223, ; 49: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 96
	i64 2783046991838674048, ; 50: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 47
	i64 2812926542227278819, ; 51: Google.Apis.Core.dll => 0x270985c960b98be3 => 12
	i64 2815524396660695947, ; 52: System.Security.AccessControl => 0x2712c0857f68238b => 50
	i64 2851879596360956261, ; 53: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 37
	i64 2960931600190307745, ; 54: Xamarin.Forms.Core => 0x2917579a49927da1 => 110
	i64 3017704767998173186, ; 55: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 116
	i64 3289520064315143713, ; 56: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 83
	i64 3303437397778967116, ; 57: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 59
	i64 3311221304742556517, ; 58: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 46
	i64 3411255996856937470, ; 59: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 119
	i64 3430216265859992823, ; 60: Grpc.Auth.dll => 0x2f9a93850d5a0cf7 => 19
	i64 3493805808809882663, ; 61: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 102
	i64 3522470458906976663, ; 62: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 101
	i64 3531994851595924923, ; 63: System.Numerics => 0x31042a9aade235bb => 45
	i64 3571415421602489686, ; 64: System.Runtime.dll => 0x319037675df7e556 => 48
	i64 3716579019761409177, ; 65: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 66: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 98
	i64 3772598417116884899, ; 67: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 77
	i64 3893087497687830326, ; 68: Google.Cloud.Firestore.V1.dll => 0x36070673e3328f36 => 15
	i64 3966267475168208030, ; 69: System.Memory => 0x370b03412596249e => 44
	i64 4056584864658557221, ; 70: Google.Apis.Auth => 0x384be27113330925 => 11
	i64 4247996603072512073, ; 71: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 121
	i64 4525561845656915374, ; 72: System.ServiceModel.Internals => 0x3ece06856b710dae => 131
	i64 4636684751163556186, ; 73: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 106
	i64 4782108999019072045, ; 74: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 64
	i64 4794310189461587505, ; 75: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 57
	i64 4795410492532947900, ; 76: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 101
	i64 4853321196694829351, ; 77: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 49
	i64 4874149320152626568, ; 78: flashker.Android.dll => 0x43a474fb79e8b588 => 0
	i64 5032256205035195147, ; 79: MySql.Data.dll => 0x45d62a5b3fe0cb0b => 32
	i64 5098983611934048327, ; 80: Google.Cloud.Location => 0x46c33a9458de0047 => 16
	i64 5142919913060024034, ; 81: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 113
	i64 5203618020066742981, ; 82: Xamarin.Essentials => 0x4836f704f0e652c5 => 109
	i64 5205316157927637098, ; 83: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 90
	i64 5256995213548036366, ; 84: Xamarin.Forms.Maps.Android.dll => 0x48f4994b4175a10e => 111
	i64 5290786973231294105, ; 85: System.Runtime.Loader => 0x496ca6b869b72699 => 49
	i64 5348796042099802469, ; 86: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 91
	i64 5376510917114486089, ; 87: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 104
	i64 5408338804355907810, ; 88: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 103
	i64 5451019430259338467, ; 89: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 70
	i64 5507995362134886206, ; 90: System.Core.dll => 0x4c705499688c873e => 38
	i64 5665389054145784248, ; 91: Google.Apis.Core => 0x4e9f815406bee9b8 => 12
	i64 5692067934154308417, ; 92: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 108
	i64 5757522595884336624, ; 93: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 68
	i64 5812387745074149618, ; 94: K4os.Compression.LZ4.dll => 0x50a9bfdbd9fa78f2 => 24
	i64 5814345312393086621, ; 95: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 96
	i64 5896680224035167651, ; 96: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 85
	i64 6085203216496545422, ; 97: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 114
	i64 6086316965293125504, ; 98: FormsViewGroup.dll => 0x5476f10882baef80 => 7
	i64 6218967553231149354, ; 99: Firebase.Auth.dll => 0x564e360a4805d92a => 5
	i64 6222399776351216807, ; 100: System.Text.Json.dll => 0x565a67a0ffe264a7 => 54
	i64 6319713645133255417, ; 101: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 86
	i64 6401687960814735282, ; 102: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 84
	i64 6504860066809920875, ; 103: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 65
	i64 6548213210057960872, ; 104: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 74
	i64 6591024623626361694, ; 105: System.Web.Services.dll => 0x5b7805f9751a1b5e => 130
	i64 6617685658146568858, ; 106: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6659513131007730089, ; 107: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 80
	i64 6876862101832370452, ; 108: System.Xml.Linq => 0x5f6f85a57d108914 => 56
	i64 6894844156784520562, ; 109: System.Numerics.Vectors => 0x5faf683aead1ad72 => 46
	i64 6987056692196838363, ; 110: System.Management => 0x60f7030ae3e88bdb => 43
	i64 7036436454368433159, ; 111: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 82
	i64 7103753931438454322, ; 112: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 79
	i64 7141281584637745974, ; 113: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 120
	i64 7338192458477945005, ; 114: System.Reflection => 0x65d67f295d0740ad => 137
	i64 7451202609009583483, ; 115: K4os.Hash.xxHash => 0x6767fd4b737ae57b => 26
	i64 7488575175965059935, ; 116: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 56
	i64 7621211152690795761, ; 117: Google.LongRunning.dll => 0x69c3fb2a1a6154f1 => 17
	i64 7635363394907363464, ; 118: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 110
	i64 7637365915383206639, ; 119: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 109
	i64 7654504624184590948, ; 120: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7740912860115050295, ; 121: Google.Api.CommonProtos => 0x6b6d3f3bb0691f37 => 8
	i64 7820441508502274321, ; 122: System.Data => 0x6c87ca1e14ff8111 => 123
	i64 7836164640616011524, ; 123: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 60
	i64 7843473411302439824, ; 124: Google.LongRunning => 0x6cd99d82d5e73b90 => 17
	i64 8044118961405839122, ; 125: System.ComponentModel.Composition => 0x6fa2739369944712 => 129
	i64 8083354569033831015, ; 126: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 83
	i64 8087206902342787202, ; 127: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 39
	i64 8103644804370223335, ; 128: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 125
	i64 8167236081217502503, ; 129: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 23
	i64 8293702073711834350, ; 130: System.Linq.Async => 0x731926181883b4ee => 42
	i64 8398329775253868912, ; 131: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 69
	i64 8400357532724379117, ; 132: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 95
	i64 8476857680833348370, ; 133: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 51
	i64 8518412311883997971, ; 134: System.Collections.Immutable => 0x76377add7c28e313 => 36
	i64 8601935802264776013, ; 135: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 103
	i64 8626175481042262068, ; 136: Java.Interop => 0x77b654e585b55834 => 23
	i64 8639588376636138208, ; 137: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 94
	i64 8684531736582871431, ; 138: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 128
	i64 8685687024490312494, ; 139: Google.Api.Gax.Grpc => 0x7889c2547cf6f32e => 10
	i64 8725526185868997716, ; 140: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 39
	i64 9286073997824813334, ; 141: BouncyCastle.Cryptography => 0x80dec319ee56e916 => 4
	i64 9312692141327339315, ; 142: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 108
	i64 9324707631942237306, ; 143: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 61
	i64 9404599086328396064, ; 144: Grpc.Net.Client.dll => 0x8283d90a93913920 => 21
	i64 9584643793929893533, ; 145: System.IO.dll => 0x85037ebfbbd7f69d => 138
	i64 9662334977499516867, ; 146: System.Numerics.dll => 0x8617827802b0cfc3 => 45
	i64 9678050649315576968, ; 147: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 71
	i64 9711637524876806384, ; 148: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 91
	i64 9808709177481450983, ; 149: Mono.Android.dll => 0x881f890734e555e7 => 30
	i64 9825649861376906464, ; 150: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 68
	i64 9834056768316610435, ; 151: System.Transactions.dll => 0x8879968718899783 => 124
	i64 9875200773399460291, ; 152: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 118
	i64 9959489431142554298, ; 153: System.CodeDom => 0x8a3736deb7825aba => 35
	i64 9998632235833408227, ; 154: Mono.Security => 0x8ac2470b209ebae3 => 136
	i64 9998685624638532270, ; 155: K4os.Hash.xxHash.dll => 0x8ac27799ad626aae => 26
	i64 10038780035334861115, ; 156: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10051920404523413229, ; 157: Grpc.Net.Common => 0x8b7f9859be1e6eed => 22
	i64 10229024438826829339, ; 158: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 74
	i64 10282208442277544177, ; 159: Google.Cloud.Firestore.V1 => 0x8eb1be19cc79c0f1 => 15
	i64 10376576884623852283, ; 160: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 102
	i64 10430153318873392755, ; 161: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 72
	i64 10447083246144586668, ; 162: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 27
	i64 10775409704848971057, ; 163: Xamarin.Forms.Maps => 0x9589f20936d1d531 => 112
	i64 10823124638835005028, ; 164: Google.Api.Gax.dll => 0x963376840189d664 => 9
	i64 10847732767863316357, ; 165: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 62
	i64 10854473764158213966, ; 166: Grpc.Core.Api.dll => 0x96a2d66108728f4e => 20
	i64 10885087467875303060, ; 167: K4os.Compression.LZ4.Streams => 0x970f99615fc37e94 => 25
	i64 10904763723752545488, ; 168: flashker => 0x975580d4b1d61cd0 => 6
	i64 10953751836886437922, ; 169: System.Linq.Async.dll => 0x98038b429b661022 => 42
	i64 11002576679268595294, ; 170: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 29
	i64 11023048688141570732, ; 171: System.Core => 0x98f9bc61168392ac => 38
	i64 11037814507248023548, ; 172: System.Xml => 0x992e31d0412bf7fc => 55
	i64 11162124722117608902, ; 173: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 107
	i64 11326322297822330275, ; 174: Google.Cloud.Firestore => 0x9d2f2e1ed5493da3 => 14
	i64 11340910727871153756, ; 175: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 73
	i64 11341245327015630248, ; 176: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 37
	i64 11392833485892708388, ; 177: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 97
	i64 11435314654401632883, ; 178: Grpc.Core.Api => 0x9eb266175e6d9a73 => 20
	i64 11441445377436144712, ; 179: Grpc.Net.Common.dll => 0x9ec82df38f1dd448 => 22
	i64 11444370155346000636, ; 180: Xamarin.Forms.Maps.Android => 0x9ed292057b7afafc => 111
	i64 11513602507638267977, ; 181: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 41
	i64 11529969570048099689, ; 182: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 107
	i64 11543207250219725293, ; 183: Grpc.Net.Client => 0xa031b5d5e60f71ed => 21
	i64 11578238080964724296, ; 184: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 82
	i64 11580057168383206117, ; 185: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 58
	i64 11597940890313164233, ; 186: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 187: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 79
	i64 12011556116648931059, ; 188: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 134
	i64 12063623837170009990, ; 189: System.Security => 0xa76a99f6ce740786 => 135
	i64 12102847907131387746, ; 190: System.Buffers => 0xa7f5f40c43256f62 => 34
	i64 12137774235383566651, ; 191: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 105
	i64 12145679461940342714, ; 192: System.Text.Json => 0xa88e1f1ebcb62fba => 54
	i64 12269460666702402136, ; 193: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 36
	i64 12313367145828839434, ; 194: System.IO.Pipelines => 0xaae1de2e1c17f00a => 41
	i64 12437742355241350664, ; 195: Google.Apis.dll => 0xac9bbcc62bfdb608 => 13
	i64 12451044538927396471, ; 196: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 78
	i64 12466513435562512481, ; 197: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 89
	i64 12487638416075308985, ; 198: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 75
	i64 12528155905152483962, ; 199: Firebase.Auth => 0xaddcf36b3153827a => 5
	i64 12538491095302438457, ; 200: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 66
	i64 12550732019250633519, ; 201: System.IO.Compression => 0xae2d28465e8e1b2f => 127
	i64 12700543734426720211, ; 202: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 67
	i64 12708238894395270091, ; 203: System.IO => 0xb05cbbf17d3ba3cb => 138
	i64 12958614573187252691, ; 204: Google.Apis => 0xb3d63f4bf006c1d3 => 13
	i64 12963446364377008305, ; 205: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 126
	i64 13162471042547327635, ; 206: System.Security.Permissions => 0xb6aa7dace9662293 => 51
	i64 13370592475155966277, ; 207: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 208: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 105
	i64 13404347523447273790, ; 209: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 69
	i64 13454009404024712428, ; 210: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 117
	i64 13491513212026656886, ; 211: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 63
	i64 13572454107664307259, ; 212: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 98
	i64 13647894001087880694, ; 213: System.Data.dll => 0xbd670f48cb071df6 => 123
	i64 13710614125866346983, ; 214: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 50
	i64 13782512541859110153, ; 215: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 11
	i64 13959074834287824816, ; 216: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 78
	i64 13967638549803255703, ; 217: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 113
	i64 14124974489674258913, ; 218: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 66
	i64 14172845254133543601, ; 219: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 92
	i64 14261073672896646636, ; 220: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 97
	i64 14327695147300244862, ; 221: System.Reflection.dll => 0xc6d632d338eb4d7e => 137
	i64 14486659737292545672, ; 222: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 85
	i64 14551742072151931844, ; 223: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 53
	i64 14644440854989303794, ; 224: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 90
	i64 14650706219563630045, ; 225: Grpc.Auth => 0xcb51c3af15b23ddd => 19
	i64 14792063746108907174, ; 226: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 117
	i64 14852515768018889994, ; 227: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 73
	i64 14912225920358050525, ; 228: System.Security.Principal.Windows => 0xcef2de7759506add => 52
	i64 14935719434541007538, ; 229: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 230: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 28
	i64 14987728460634540364, ; 231: System.IO.Compression.dll => 0xcfff1ba06622494c => 127
	i64 14988210264188246988, ; 232: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 75
	i64 15097078878581906526, ; 233: Google.Api.Gax.Grpc.dll => 0xd183994097ed5c5e => 10
	i64 15370334346939861994, ; 234: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 72
	i64 15391712275433856905, ; 235: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 28
	i64 15582737692548360875, ; 236: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 88
	i64 15609085926864131306, ; 237: System.dll => 0xd89e9cf3334914ea => 40
	i64 15620612276725577442, ; 238: BouncyCastle.Cryptography.dll => 0xd8c7901aa85576e2 => 4
	i64 15777549416145007739, ; 239: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 100
	i64 15810740023422282496, ; 240: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 115
	i64 15930129725311349754, ; 241: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 121
	i64 15963349826457351533, ; 242: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 132
	i64 16154507427712707110, ; 243: System => 0xe03056ea4e39aa26 => 40
	i64 16321164108206115771, ; 244: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 29
	i64 16337011941688632206, ; 245: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 52
	i64 16565028646146589191, ; 246: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 129
	i64 16621146507174665210, ; 247: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 70
	i64 16637862623548895820, ; 248: K4os.Compression.LZ4 => 0xe6e58fe7aa61724c => 24
	i64 16677317093839702854, ; 249: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 95
	i64 16822611501064131242, ; 250: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 125
	i64 16833383113903931215, ; 251: mscorlib => 0xe99c30c1484d7f4f => 31
	i64 16873478996345296124, ; 252: K4os.Compression.LZ4.Streams.dll => 0xea2aa3bf662d14fc => 25
	i64 16955525858597485057, ; 253: Google.Api.Gax => 0xeb4e20ef25a73a01 => 9
	i64 16991533501433402966, ; 254: Google.Api.CommonProtos.dll => 0xebce0db1ce165656 => 8
	i64 17024911836938395553, ; 255: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 59
	i64 17031351772568316411, ; 256: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 93
	i64 17037200463775726619, ; 257: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 81
	i64 17523946658117960076, ; 258: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 134
	i64 17544493274320527064, ; 259: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 64
	i64 17553799493972570483, ; 260: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 18
	i64 17704177640604968747, ; 261: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 89
	i64 17710060891934109755, ; 262: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 87
	i64 17743407583038752114, ; 263: System.CodeDom.dll => 0xf63d3f302bff4572 => 35
	i64 17816041456001989629, ; 264: Xamarin.Forms.Maps.dll => 0xf73f4b4f90a1bbfd => 112
	i64 17838668724098252521, ; 265: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 34
	i64 17882897186074144999, ; 266: FormsViewGroup => 0xf82cd03e3ac830e7 => 7
	i64 17892495832318972303, ; 267: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 115
	i64 17928294245072900555, ; 268: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 128
	i64 17969331831154222830, ; 269: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 120
	i64 17979120673405951447, ; 270: ZstdSharp => 0xf982aafeb83e5dd7 => 122
	i64 17986907704309214542, ; 271: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 119
	i64 18116111925905154859, ; 272: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 63
	i64 18121036031235206392, ; 273: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 93
	i64 18129453464017766560, ; 274: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 131
	i64 18305135509493619199, ; 275: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 94
	i64 18318849532986632368, ; 276: System.Security.dll => 0xfe39a097c37fa8b0 => 135
	i64 18380184030268848184 ; 277: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 106
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [278 x i32] [
	i32 77, i32 16, i32 30, i32 67, i32 99, i32 100, i32 122, i32 43, ; 0..7
	i32 32, i32 86, i32 118, i32 126, i32 80, i32 76, i32 124, i32 114, ; 8..15
	i32 136, i32 116, i32 62, i32 3, i32 60, i32 88, i32 81, i32 33, ; 16..23
	i32 44, i32 18, i32 61, i32 99, i32 27, i32 58, i32 87, i32 132, ; 24..31
	i32 6, i32 33, i32 92, i32 65, i32 76, i32 130, i32 84, i32 53, ; 32..39
	i32 47, i32 0, i32 14, i32 71, i32 104, i32 48, i32 57, i32 55, ; 40..47
	i32 31, i32 96, i32 47, i32 12, i32 50, i32 37, i32 110, i32 116, ; 48..55
	i32 83, i32 59, i32 46, i32 119, i32 19, i32 102, i32 101, i32 45, ; 56..63
	i32 48, i32 1, i32 98, i32 77, i32 15, i32 44, i32 11, i32 121, ; 64..71
	i32 131, i32 106, i32 64, i32 57, i32 101, i32 49, i32 0, i32 32, ; 72..79
	i32 16, i32 113, i32 109, i32 90, i32 111, i32 49, i32 91, i32 104, ; 80..87
	i32 103, i32 70, i32 38, i32 12, i32 108, i32 68, i32 24, i32 96, ; 88..95
	i32 85, i32 114, i32 7, i32 5, i32 54, i32 86, i32 84, i32 65, ; 96..103
	i32 74, i32 130, i32 133, i32 80, i32 56, i32 46, i32 43, i32 82, ; 104..111
	i32 79, i32 120, i32 137, i32 26, i32 56, i32 17, i32 110, i32 109, ; 112..119
	i32 2, i32 8, i32 123, i32 60, i32 17, i32 129, i32 83, i32 39, ; 120..127
	i32 125, i32 23, i32 42, i32 69, i32 95, i32 51, i32 36, i32 103, ; 128..135
	i32 23, i32 94, i32 128, i32 10, i32 39, i32 4, i32 108, i32 61, ; 136..143
	i32 21, i32 138, i32 45, i32 71, i32 91, i32 30, i32 68, i32 124, ; 144..151
	i32 118, i32 35, i32 136, i32 26, i32 2, i32 22, i32 74, i32 15, ; 152..159
	i32 102, i32 72, i32 27, i32 112, i32 9, i32 62, i32 20, i32 25, ; 160..167
	i32 6, i32 42, i32 29, i32 38, i32 55, i32 107, i32 14, i32 73, ; 168..175
	i32 37, i32 97, i32 20, i32 22, i32 111, i32 41, i32 107, i32 21, ; 176..183
	i32 82, i32 58, i32 1, i32 79, i32 134, i32 135, i32 34, i32 105, ; 184..191
	i32 54, i32 36, i32 41, i32 13, i32 78, i32 89, i32 75, i32 5, ; 192..199
	i32 66, i32 127, i32 67, i32 138, i32 13, i32 126, i32 51, i32 3, ; 200..207
	i32 105, i32 69, i32 117, i32 63, i32 98, i32 123, i32 50, i32 11, ; 208..215
	i32 78, i32 113, i32 66, i32 92, i32 97, i32 137, i32 85, i32 53, ; 216..223
	i32 90, i32 19, i32 117, i32 73, i32 52, i32 133, i32 28, i32 127, ; 224..231
	i32 75, i32 10, i32 72, i32 28, i32 88, i32 40, i32 4, i32 100, ; 232..239
	i32 115, i32 121, i32 132, i32 40, i32 29, i32 52, i32 129, i32 70, ; 240..247
	i32 24, i32 95, i32 125, i32 31, i32 25, i32 9, i32 8, i32 59, ; 248..255
	i32 93, i32 81, i32 134, i32 64, i32 18, i32 89, i32 87, i32 35, ; 256..263
	i32 112, i32 34, i32 7, i32 115, i32 128, i32 120, i32 122, i32 119, ; 264..271
	i32 63, i32 93, i32 131, i32 94, i32 135, i32 106 ; 272..277
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "d84a337c5bff841a2b7c453ddc3a6207",
"assets/AssetManifest.bin.json": "8e77325e00de734fa34bc1cd0c6d89ec",
"assets/AssetManifest.json": "adbd165d86fdc47b8705d42506e0b027",
"assets/assets/images/jpg/quran_tv.jpg": "538135391a7b591987e5be18d804b6f6",
"assets/assets/images/png/augmented_reality.png": "1aa3da3f0f8c0e4a954617c660a17e03",
"assets/assets/images/png/database.png": "cadd4ed181cb0d5108e04650f58a686e",
"assets/assets/images/png/email.png": "0ab3669818d467ffb6558802f9541eb5",
"assets/assets/images/png/facebook.png": "fba8cf30702eff336ee05339deaa34bc",
"assets/assets/images/png/github.png": "2dedee9b3eb9dc4a2e2c4e47cfbe85cd",
"assets/assets/images/png/gitlab.png": "36c2afc995692fb41c8ca54c1b2a15b0",
"assets/assets/images/png/icon.png": "3fbbbf77840a0abc358a1682196bea69",
"assets/assets/images/png/linkedin.png": "c72f600dedcb9ff87c1db18481dd3b39",
"assets/assets/images/png/profile.png": "849a98026961cc86859aed4fa1678c1d",
"assets/assets/images/png/profile1.png": "506c1e28790893e29e32c4982ca37f85",
"assets/assets/images/png/travel.png": "a8c9040f42825c6b05d06c3d7513c71e",
"assets/assets/images/png/youtube.png": "fabf77927a3864fdf13f0fb11dfdb638",
"assets/assets/images/projects/al_bayan/al_bayan.jpg": "12a9581c285d755804302c408fb5d4ba",
"assets/assets/images/projects/al_wahab/1.jpg": "9a9d761b1cfa7622b6cfa02502c49ebd",
"assets/assets/images/projects/al_wahab/11.jpg": "76a40ae7674e53aa6e9b305436345e7b",
"assets/assets/images/projects/al_wahab/2.jpg": "d0c74919f5b07eb9d14dfa43c6ddd4b8",
"assets/assets/images/projects/al_wahab/3.jpg": "3fb079e6ded5f3a24559f8581d635a5b",
"assets/assets/images/projects/al_wahab/4.jpg": "89c26cbe16905ff2c5f903a587599de0",
"assets/assets/images/projects/al_wahab/5.jpg": "9748a6fad7e82cd384253e7a296df406",
"assets/assets/images/projects/al_wahab/6.jpg": "c31f738d9d3b8082b1c6c8e225d422fe",
"assets/assets/images/projects/al_wahab/7.jpg": "e7cabe6197885e409afa7c6e849896b3",
"assets/assets/images/projects/al_wahab/8.jpg": "d745e314d55b62ebda49e8569269a748",
"assets/assets/images/projects/al_wahab/9.jpg": "53c1de42abdd6adb493aac7c646cfa80",
"assets/assets/images/projects/ar_animal_learning/1.png": "865c471e539407656f19fbe85bc36b4c",
"assets/assets/images/projects/ar_animal_learning/10.png": "a9359c4b694b6e1553d2dd96290fcfa9",
"assets/assets/images/projects/ar_animal_learning/11.png": "2216fd4d8052bc2673011433bc9c0279",
"assets/assets/images/projects/ar_animal_learning/12.png": "1c4e3759dcf8168900280ee57d3c7b18",
"assets/assets/images/projects/ar_animal_learning/13.png": "944ad7e845d698df23d9bd255a732800",
"assets/assets/images/projects/ar_animal_learning/14.png": "64d78ad118b308672862afdcce8f4926",
"assets/assets/images/projects/ar_animal_learning/15.png": "af52a620682c7a09ecd5c450524cb79e",
"assets/assets/images/projects/ar_animal_learning/16.png": "e8adea7ca4cb3703a1535c5a46c0028a",
"assets/assets/images/projects/ar_animal_learning/17.png": "fce48efbdb194810d9a702b4591b6e20",
"assets/assets/images/projects/ar_animal_learning/18.png": "091ef79382263fd3001ade7fe085adbd",
"assets/assets/images/projects/ar_animal_learning/19.png": "25dd314112c4cfaea28eab3d598249c8",
"assets/assets/images/projects/ar_animal_learning/2.png": "1a35517be2e5f464c2b6e9aac7eeb417",
"assets/assets/images/projects/ar_animal_learning/3.png": "86a6318d2e2355b816d699ae49ce473b",
"assets/assets/images/projects/ar_animal_learning/4.png": "38cd5152c7b5b96a9d6f447fbf375b6b",
"assets/assets/images/projects/ar_animal_learning/5.png": "15e3d03738e29ee7c817ab8b703ba844",
"assets/assets/images/projects/ar_animal_learning/7.png": "aaabb84ede4265c3fa3a9b65d71fdc75",
"assets/assets/images/projects/ar_animal_learning/8.png": "462f2ab2a6584b7960f296cc4a9f678e",
"assets/assets/images/projects/ar_animal_learning/9.png": "f7acfe80bc45631494f73aff41c8f2df",
"assets/assets/images/projects/celeste/celeste.gif": "4f2e986dd8e3fcd7040d4bc09c5e56fe",
"assets/assets/images/projects/celeste/clouds.jpg": "2690e4a433a2cb0e9a923b81687225e5",
"assets/assets/images/projects/celeste/drawer.jpg": "5c103b7214478fbedc6e0c2530bdfe00",
"assets/assets/images/projects/celeste/home.jpg": "4d16cc600d5a64856c46bbbe40efd2f4",
"assets/assets/images/projects/celeste/mist.jpg": "96eb1523c3d79f9fd32e52e16195575f",
"assets/assets/images/projects/celeste/rain.jpg": "3b653c35ce3e4db33e2b066c736c05de",
"assets/assets/images/projects/celeste/snow.jpg": "a8d5fb6f1d325ad8aa52fada63693a2b",
"assets/assets/images/projects/celeste/snower.jpg": "1487f127ac60077d4092410e0e5e0fee",
"assets/assets/images/projects/celeste/splash.jpg": "ed491d2fc439b73ac4c7d8f87fe8f658",
"assets/assets/images/projects/celeste/thunderstorm.jpg": "6c39d46bd4807364029c679f4f2c0e1f",
"assets/assets/images/projects/devs-notes/add-note.jpg": "c39886ee218e6678749f30423e5aac5f",
"assets/assets/images/projects/devs-notes/devs-notes.gif": "d529942248b078d139393e8046438134",
"assets/assets/images/projects/devs-notes/drawer.jpg": "1a193e5589f3a50b18d5916f34fb3205",
"assets/assets/images/projects/devs-notes/drawing.jpg": "999c04dd794b7f08f627da1fb642a044",
"assets/assets/images/projects/devs-notes/home.jpg": "8a3aba7d65e7e3c5208caab91984fddf",
"assets/assets/images/projects/devs-notes/searching.jpg": "1322eb48c79d8fa95e8bf679847bde7b",
"assets/assets/images/projects/devs-notes/splash.jpg": "c2deaaa7cd0f111c072d6b658111bf3d",
"assets/assets/images/projects/e-commerce/cart.jpg": "dbf5ff1adf04979b186d681f33181fc9",
"assets/assets/images/projects/e-commerce/categories.jpg": "88576210724acb6e2c40061113fb29d9",
"assets/assets/images/projects/e-commerce/categories1.jpg": "63d3968050cab5466f8b534a01094d43",
"assets/assets/images/projects/e-commerce/check-out.jpg": "1040efd0ba434d457b09bd5aae219440",
"assets/assets/images/projects/e-commerce/check-out1.jpg": "4aa1a36532210ba2e867c2972d211f4a",
"assets/assets/images/projects/e-commerce/e-commerce.gif": "c444eaf56d493cbc5ab3c1e4ab555326",
"assets/assets/images/projects/e-commerce/filters.jpg": "a5b94ec3d3e5119fa3d887b35423ff7f",
"assets/assets/images/projects/e-commerce/home.jpg": "d34f8fa78cb986d278b8e61ae0ed50b8",
"assets/assets/images/projects/e-commerce/login.jpg": "f0822f2a5dc174a7ddd0ffa86dea040d",
"assets/assets/images/projects/e-commerce/my-orders-cancelled.jpg": "76d6f9354132149de4db807f1dc75704",
"assets/assets/images/projects/e-commerce/my_orders-processing.jpg": "7f74c2b8aec8de6a3646527c564c8927",
"assets/assets/images/projects/e-commerce/order-details-by.jpg": "1411b3a354e974ace0bb8016cf8109c2",
"assets/assets/images/projects/e-commerce/order-success.jpg": "227cd88367ae4aa0e9d0e7a8a6392f85",
"assets/assets/images/projects/e-commerce/product.jpg": "707b02f2fae65158d0b69e5abe781d84",
"assets/assets/images/projects/e-commerce/product1.jpg": "0f3f55f641c61c8621a41af46d9f1247",
"assets/assets/images/projects/e-commerce/profile.jpg": "37f42eeda4001a05a4f211868af3b4de",
"assets/assets/images/projects/e-commerce/sign-up.jpg": "47be1bbd03bf6d2a942b634cc4273ac8",
"assets/assets/images/projects/e-commerce/sort-by.jpg": "16657b48f71f98a843d53c0467cb5cf5",
"assets/assets/images/projects/e-commerce/splash.jpg": "80898e20e3c0972b6c9e0994804c8b9a",
"assets/assets/images/projects/el-ogra/add-the-amount-paid.jpg": "16dccb618598a68328f2f1ea9da9478f",
"assets/assets/images/projects/el-ogra/an-error-occurred.jpg": "f40d801cc1c81716dbc2392b10653efa",
"assets/assets/images/projects/el-ogra/bill.jpg": "d91093ce8d6f011e08b9180dd7913723",
"assets/assets/images/projects/el-ogra/dashboard.jpg": "228548a21d2ea37681d05f876cf39191",
"assets/assets/images/projects/el-ogra/EL-Ogra.gif": "a82d05342b678aeaa1239819801d1c91",
"assets/assets/images/projects/el-ogra/home.jpg": "02b1ba4024ab55da91777e17e39bc3e8",
"assets/assets/images/projects/el-ogra/splash.jpg": "6f9aef5e6f43574b0af88745a5f4ed1d",
"assets/assets/images/projects/el-ogra/the-payment-was-made.jpg": "40f7e200397767036ad7c361c8729a5d",
"assets/assets/images/projects/flutter_animation_cv/flutter_animation_cv.gif": "c103ec4383c28aa471f6b4dae43a17cb",
"assets/assets/images/projects/jamallek/1.png": "20f89dfef3c3d5a4bff0eb85652380d5",
"assets/assets/images/projects/jamallek/10.png": "a9a2104f3c78203b749fb756af732c4f",
"assets/assets/images/projects/jamallek/11.png": "6c7986319ee53d0efa2e6069cde7a309",
"assets/assets/images/projects/jamallek/12.png": "954e8203496b1c6ea2b94ac56c07631e",
"assets/assets/images/projects/jamallek/13.png": "f06e13c3e08aec5d805aca335c7e0cf7",
"assets/assets/images/projects/jamallek/14.png": "8252a5c9ffe2cd1f5793d846b3067faf",
"assets/assets/images/projects/jamallek/15.png": "c05e5c6a07991fe6cc1f2bc5dcdede03",
"assets/assets/images/projects/jamallek/16.png": "bf0d09e24094b12ce31a9060d663d7ed",
"assets/assets/images/projects/jamallek/2.png": "899bc5b309ad685b50c7d655b9e3b346",
"assets/assets/images/projects/jamallek/3.png": "4e2d418f0f6e14638bc06207549c9464",
"assets/assets/images/projects/jamallek/4.png": "0844bb97c745b18b6516eaa3169e05d1",
"assets/assets/images/projects/jamallek/5.png": "e6075a7bcc96e63f8efa8f08d458e630",
"assets/assets/images/projects/jamallek/6.png": "fcbd729047728f75085439efe81d5174",
"assets/assets/images/projects/jamallek/7.png": "3222ad2d3404806b3edd41deefeb7a75",
"assets/assets/images/projects/jamallek/8.png": "8aa2bc0ada0a4b271039fdb311dff69a",
"assets/assets/images/projects/jamallek/9.png": "7e5d36f726822bcc32516ec5122a7193",
"assets/assets/images/projects/password-manager/1.jpeg": "31586158d6c305aad13cd04ca88f7a2b",
"assets/assets/images/projects/password-manager/1.png": "ed71f978cba6c6daeef8732960fb3027",
"assets/assets/images/projects/password-manager/10.png": "3799135631f0b7e79b3ef8eb3c37d173",
"assets/assets/images/projects/password-manager/11.png": "382537ba8810f190fb6495089cb6a4b8",
"assets/assets/images/projects/password-manager/12.png": "328d44ab56b57b217447e18e623acb75",
"assets/assets/images/projects/password-manager/13.gif": "2f9670f2591ac0e229021bb158603ffc",
"assets/assets/images/projects/password-manager/3.png": "c4cace133022b428a2d3fc48318e5203",
"assets/assets/images/projects/password-manager/4.png": "5cacb95e725a0b273082fa5901c52b81",
"assets/assets/images/projects/password-manager/5.png": "79f163c6c374c7734b09c5c48fd2e28d",
"assets/assets/images/projects/password-manager/6.png": "6aba6c391c92cedf0c9f349871bfa235",
"assets/assets/images/projects/password-manager/7.png": "9b6633a6a55377a5f985f2defd869dce",
"assets/assets/images/projects/password-manager/8.png": "e5e5ddcd5953b2e2c05b926702401ffc",
"assets/assets/images/projects/password-manager/9.png": "f739543c601e202aaf18e21fbcc99489",
"assets/assets/images/projects/prayer-times/1.png": "533b3a9816b6c53a41c7cbb6e1b6bff1",
"assets/assets/images/projects/quran-tv/1.jpeg": "538135391a7b591987e5be18d804b6f6",
"assets/assets/images/projects/quran-tv/2.jpeg": "818d122ba38d46372fc0bd3d5e8d667b",
"assets/assets/images/projects/quran-tv/3.jpeg": "f48b11ecc73bafab181a548d42ff7f7c",
"assets/assets/images/projects/qurani-pro/qurani_pro.jpg": "1939b2343537a9ffa1d45e7ab05cfca0",
"assets/assets/images/projects/travel/travel_system.png": "7b48076a4c4188bfab5ce04122c09b5d",
"assets/assets/images/projects/zamzam/zamzam.png": "4ed1f7676d583adc0f1654cadb273f30",
"assets/assets/images/svg/android_studio.svg": "7856f181cc1e30135ab796e747d3203c",
"assets/assets/images/svg/api.svg": "29c52c3a26f17d43a0c00846ade7195c",
"assets/assets/images/svg/augmented_reality.svg": "5b0c30e8d05d4de77efe8bd54761aaaa",
"assets/assets/images/svg/bloc.svg": "3ff9e17e7e82263002c5c1df9f2fb6a3",
"assets/assets/images/svg/dark_mood.svg": "42255d98a42c2305be64fe4580d9c680",
"assets/assets/images/svg/dart.svg": "77736b70355db3b992d712891749acd5",
"assets/assets/images/svg/database.svg": "41fd9ce2899d7796db1b63eeee64d658",
"assets/assets/images/svg/email.svg": "992ac34a80cdd509871cff78c6d98e72",
"assets/assets/images/svg/figma.svg": "cd76b1d8ad37d6f691921a8831d59dc0",
"assets/assets/images/svg/firebase.svg": "029fd3c092480d94d80837b5fc4d2744",
"assets/assets/images/svg/flutter.svg": "9a6e81be6ff5b09956f4f85fe1f0a89f",
"assets/assets/images/svg/git.svg": "5823989cf97fd166c65a7df7522a2768",
"assets/assets/images/svg/github.svg": "5e428f6c8ccf31f88152e7d9bf8b0af6",
"assets/assets/images/svg/gitlab.svg": "c2c228ff14df49ae562d6dc4d52a13cf",
"assets/assets/images/svg/google_play_console.svg": "06f4299a87770c5e9d40ea01bbee6cab",
"assets/assets/images/svg/linkedIn.svg": "b0cf43d255bf35d1dafb374c51a11773",
"assets/assets/images/svg/location.svg": "0cfa20a89b67c66414f741b6c38ddd1d",
"assets/assets/images/svg/logo_profile.svg": "cbb932accfa80673febd09c09daf702a",
"assets/assets/images/svg/onesignal.svg": "a9fa373d43e692f6d453cb042e3fcc79",
"assets/assets/images/svg/postman.svg": "fbfb57a181ce251926d686d12e6cee5a",
"assets/assets/images/svg/sentry.svg": "245506c309e35b321abf72e27904ec6b",
"assets/assets/images/svg/vs_code.svg": "bf246f1a348a946a439ef4c8e4ef8466",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0d44e52658c02d56af54606c30105e64",
"assets/NOTICES": "1acc87ed12617126a4eaa2491d183736",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "64bf57820f971acdfed4f954e895f423",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "9c1011dd4efaa1ad3a71f675c8ab5bde",
"icons/Icon-192.png": "beffae72478d85a9ebd3458774a97d65",
"icons/Icon-512.png": "64c6fe2174920e7f43ebd256f9905e76",
"icons/Icon-maskable-192.png": "beffae72478d85a9ebd3458774a97d65",
"icons/Icon-maskable-512.png": "64c6fe2174920e7f43ebd256f9905e76",
"index.html": "bf1e45747974a42ebcf850f57cc46223",
"/": "bf1e45747974a42ebcf850f57cc46223",
"main.dart.js": "4594c07783aaf21c5881984fa428065d",
"main.dart.mjs": "125c4c426c91e3ee9e7636f6a7456b49",
"main.dart.wasm": "ffeb339fe45bcb9f5e2f441a3d6f8691",
"manifest.json": "5b370eaf3d5e5978cf7653695b021001",
"version.json": "9b818ca9511483c901bed1545384376c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"main.dart.wasm",
"main.dart.mjs",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

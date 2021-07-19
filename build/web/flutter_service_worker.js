'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "ba2703970f0e3e71efbd31b075241787",
"assets/assets/arrowBlack.png": "daedd790f95da6016a93b665767b8202",
"assets/assets/arrowBott.png": "8549eb1641f459693957d4a09728a561",
"assets/assets/bgAbout.png": "139074c8c4395942081d09e5f96213dd",
"assets/assets/bigCALL.png": "342f5f7279ad25c023c864ff6a67c4a1",
"assets/assets/bigFB.png": "7922764fcdacc673e29c290b92cc058b",
"assets/assets/bigIG.png": "8a0675d081240b8f2aa209db9078cd23",
"assets/assets/bigWA.png": "12967bb03115595b9803f3c7624848ff",
"assets/assets/call.png": "cdf5c272b4a2d8485851bdd27d790bb7",
"assets/assets/callMED.png": "7ea1a08095eb6b541b768ac4bdd4c4c3",
"assets/assets/csv1.png": "de5f0b11a60e371393e0e8a992b2b30c",
"assets/assets/csv2.png": "00f5abd6b13724af7a01f3c9786d1eea",
"assets/assets/csv3.png": "40c93012e769ff5471da65baa7594e7e",
"assets/assets/csvNews.png": "2d4497e91a367e44c13be672f5d3bbcb",
"assets/assets/fb.png": "b0f12b1e34c8a37da87b3df508ba34ed",
"assets/assets/fbMED.png": "3c0d9a9b26a2a085ee2a26cd582c65ff",
"assets/assets/head.png": "4891dabc62ae9b09a6c7597bc99b5985",
"assets/assets/ig.png": "63a72dc6d68e3c3ec70ca8318141e1cf",
"assets/assets/igMED.png": "23f94893510b228bff77615d34330208",
"assets/assets/imgProduct.png": "8c0cda5f9f599afcd773ea039ff34351",
"assets/assets/logo.jpg": "cf7b83bbe9332c29e677f73e84fe2c72",
"assets/assets/logo.png": "1a56b9dc79bdebbfe1c6a370256596bf",
"assets/assets/logoWhite.png": "6e3c02da78d6da4078fc26af65e8cc9a",
"assets/assets/newIC.png": "fd65be3da86479d355dbcc9d0c9f7201",
"assets/assets/searchIcon.png": "351cf9d1cad3a52a581026231e40e46b",
"assets/assets/share.png": "92deff832a3358d908e77b452e658da9",
"assets/assets/shareMED.png": "d14398d933a5a5a74e1cdfb580799a0d",
"assets/assets/TInywidget.png": "40ce09009dd4e3fd6709002a76dfcbaf",
"assets/assets/Tinywidget2.png": "2ddcb9f7da653db87e0d5d70d9b62e19",
"assets/assets/Tinywidget3.png": "a4416f9cc5280ca1a1ed718d40ffbf76",
"assets/assets/userIcon.png": "b85e554eee25dea10baeb6107eadbf94",
"assets/assets/widgetBig.png": "eeb883ef70ffde8e757c38f11b16c271",
"assets/assets/widgetNews1.png": "54221fe7b78be8ca8e13ce94b0660e20",
"assets/assets/widgetNews2.png": "dda7cd3fa96205b308b15a54957eaba9",
"assets/assets/widgetNews3.png": "4a2846dc200554490695009945020110",
"assets/assets/widgetNews4.png": "3737a07ac1b4a2bd120e8efd2dafcfbf",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "4cb70afa7708fdb1f5515654f2def43d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "f40a3b7e8c6525c50ef59218b79292c4",
"/": "f40a3b7e8c6525c50ef59218b79292c4",
"main.dart.js": "2eb14630c652f3b4a522fb35792c7842",
"manifest.json": "8d7d2afa5e06793af101559d174a5242",
"version.json": "c48dd6769c300c7bcc1d96108dad220a"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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

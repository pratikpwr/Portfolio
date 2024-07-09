'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/aafm.png": "b680e9b18a1dfa47d21d3893fa22f108",
"assets/allKart.png": "d8cbde45768675e9c4fa3b8ca277069f",
"assets/appdev.png": "5a1309c6e33aa37f80d97aaaaa75fae8",
"assets/AssetManifest.bin": "6364a6d3d0693ecebd2baa237211729a",
"assets/AssetManifest.bin.json": "9b146228e5c74e3a0181b2cdecbbf43b",
"assets/AssetManifest.json": "849ccd218ca19caa56519d0b399df99c",
"assets/cancel.png": "a874accaf0bd51c56793fee87b7aa60b",
"assets/collegeBuddy.png": "01ea01d3dc5e8c0729d67c1609780b5c",
"assets/cv.png": "0e623a6c38fa824dcb2bfb8527c73056",
"assets/dart_logo.png": "b1c9fbfe2bc72cdd66a848ebcc793856",
"assets/email_logo.jpg": "a65c408e2e2326b0b6a0d1f81d5204ac",
"assets/envelope.png": "fb1bee4e43b21a61fbfe090892b64115",
"assets/flask_logo.png": "d06e73bbb0a75dd313f6919b6144d02d",
"assets/flutterAnimations.png": "178442582ce483f3be60bd63f3d95e5d",
"assets/flutter_dev.png": "981a25e86bfa6f628520644d3d659c5b",
"assets/flutter_logo.png": "d21f1eecaeaab081ba7efec1721c0712",
"assets/FontManifest.json": "5a98d3a2f556a931075fb95e7592133b",
"assets/fonts/MaterialIcons-Regular.otf": "8d2912c245a70730bcd710695567a256",
"assets/frame.png": "c36a0d249938274e9f7471392a963eee",
"assets/github.png": "4d2d55231e887f144015d6f9b5e2aa0d",
"assets/github_logo.png": "1fbf1eeb622038a1ea2e62036d33788a",
"assets/GoogleSansRegular.ttf": "b5c77a6aed75cdad9489effd0d5ea411",
"assets/icons8-back-48.png": "d186e491a0802a0ccf33951946d4222b",
"assets/icons8-forward-48.png": "df6f39dbf424c5ffeea7d923c9bbda44",
"assets/icons8-home-48.png": "a4aee3514aa93261350f86a809746ac2",
"assets/icons8-important-mail-48.png": "1e4c9c007a82ce5f1d27b694c2b77a5b",
"assets/icons8-project-management-48.png": "b852c72ba202efd06d478828a9a1713a",
"assets/icons8-set-as-resume-48.png": "09879284b7702e4d04be51ba120b000b",
"assets/icons8-user-64.png": "c6b270671cb771c144ae41a00288a87a",
"assets/icons8-x-48.png": "2249b2b7ebcd1f2e5ed674ff4a2ea3d9",
"assets/idea.png": "a5df3abd0048e4627a4375fbf4ee7073",
"assets/insta.png": "2c8e6174ea865ba13b41d29c648dd7ca",
"assets/insta_logo.jpg": "308b4978318a5ac83e6b128c32504742",
"assets/lamp.png": "0f1c59dc9e5ac99103a5dfad852f91b1",
"assets/linkedin.png": "c162ff9ad175f117df82b576c326f144",
"assets/linked_logo.jpg": "3228be13cae6c0d0dec4fa47c7e36e83",
"assets/mail_ill.png": "61d3600478905f7ee63fd431907680f2",
"assets/MaterialIcons-Regular.ttf": "8ef52a15e44481b41e7db3c7eaf9bb83",
"assets/musicUI.png": "9c5c3bcae741be110bc1248379d1f93a",
"assets/myPortfolio.png": "e45b872bd1770ce994bc1b303d867d35",
"assets/NOTICES": "1f9ad9f8cc7fdf891ee69a0d9a8329be",
"assets/Nrityosava.png": "50c4867061c1fdae0b475444c65dc60d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/social_media_buttons/fonts/SocialMediaIcons.ttf": "6483bf9fdd106eb77d6f3c04dfe35057",
"assets/pratik.png": "33f3589de8ff513b20e412ec448db670",
"assets/profile.png": "6c42bd282a64561b39802c689e27c6ad",
"assets/python.png": "9b41fafad51b5ba82b3257b395be76cb",
"assets/resume.png": "ce6362dd7e69661495bf05c6abcfa20f",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shape0.png": "ef1ad2391ed0a0ca7d1acb4e0245d4a4",
"assets/shape1.png": "4c4c11f6dcb7f89930d6d181423c60df",
"assets/shape2.png": "20bae89cddf9037721ea7dcfef32f843",
"assets/shape3.png": "39f1ad064a188ac6d5b0180e452e1b8e",
"assets/shape4.png": "64660e93414f31b04e030fded04a979e",
"assets/ssb.png": "8fbe9e921cd4c4c1a0bbba16ba7a1dfa",
"assets/swipeUp.png": "83807a7d1f939e8ed40985a05ba4deb6",
"assets/tele.png": "a8bc608fc98400f582ee4ef97ca61757",
"assets/undraw_developer_activity_bv83.svg": "a36074c0684d514ba09405dc07a7b7b5",
"assets/undraw_my_app_grf2.svg": "18f9ce0d5f6f5878f8ad76834692b3a2",
"assets/undraw_progressive_app_m9ms%20(2).svg": "159e2b86befca32b136f2d3c08a1092b",
"assets/user-profile.png": "a4746c2e4e80aba308c4f05d79455da1",
"assets/user.png": "8feff93941a2425f1d7b98118625a17d",
"assets/verticalLine.png": "7137279aa8975703f3955cf39ae00a85",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "14d138606e1825524893c14af9f167e3",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "968984f94fbbaf45162d2e1967904491",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "c9b437f01045ce3fd8f75e8ed61518c7",
"/": "c9b437f01045ce3fd8f75e8ed61518c7",
"main.dart.js": "42f8233ecbe6fd1383a3c34e378fba91",
"manifest.json": "a03fd57bd9cfeeb173ce01033119300d",
"version.json": "87ff1bab6af4d0a4c1c67524f0ddf5d7"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
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

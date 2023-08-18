'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "e954f60c08e48ac53304ebb2eb9acaa9",
"/": "e954f60c08e48ac53304ebb2eb9acaa9",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"manifest.json": "850751fb7b75494ad2f4a84b7cae8634",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/fonts/MaterialIcons-Regular.otf": "3265e4dca96cbeed42cb8c8a4076328d",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "02b0e3306b42f3f1e060b5ee46d112dd",
"assets/assets/images/github-mark.png": "43ce87609eb221d09d4832a9c0e709d0",
"assets/assets/images/profile-image.png": "1a24a6b7e011cd33238e8ebb6a3031fc",
"assets/assets/images/post-2.jpg": "835eaaa1997fa78211cb91482513a9e8",
"assets/assets/about/about.md": "92228f0b2c78bb616144ab7bd9788a93",
"assets/assets/fonts/Inter-Medium.ttf": "16580ed788273749548eb27b9a9b674f",
"assets/assets/fonts/Inter-SemiBold.ttf": "1753a05196abeef95c32f10246bd6473",
"assets/assets/fonts/Inter-Regular.ttf": "a4a7379505cd554ea9523594b7c28b2a",
"assets/assets/fonts/Inter-ExtraBold.ttf": "e771faf703386b0c5863cc3df1e26ba1",
"assets/assets/fonts/Inter-Thin.ttf": "be37c2ebe9cd2e0719d1a9437858686f",
"assets/assets/fonts/Inter-Black.ttf": "10215142a203211d9292c62ae0503a97",
"assets/assets/fonts/Inter-Bold.ttf": "d17c0274915408cee0308d5476df9f45",
"assets/assets/fonts/Inter-Light.ttf": "60c8f64064078554b6469eeda25944eb",
"assets/assets/fonts/Inter-ExtraLight.ttf": "c36ac5a28afa9a4d70292df06a932ccd",
"assets/assets/projects/projects_list.json": "633653d4d43d6a0e26c66c7c08633b4d",
"assets/assets/projects/dart_CRUD/images/delete_linked1.jpg": "bfbc85f07e17f0ca584717dbce3bf3ef",
"assets/assets/projects/dart_CRUD/images/addNew2.jpg": "fff0200f2963aea87404d318c4f0aa54",
"assets/assets/projects/dart_CRUD/images/delete_linked2.jpg": "f13aaff79617fb246740037f2e3ca9d4",
"assets/assets/projects/dart_CRUD/images/addNew_linked.jpg": "5d85c9850066faa3e9f007660860e1ed",
"assets/assets/projects/dart_CRUD/images/viewlist.jpg": "617d60c32b1ffee83268e69f17245882",
"assets/assets/projects/dart_CRUD/images/Singlelinkedlist.png": "c45991bf5863c0112069848a025e298b",
"assets/assets/projects/dart_CRUD/images/addNew1.jpg": "34babebc0db00aa1dd78159ff2f968d7",
"assets/assets/projects/dart_CRUD/images/update2.jpg": "68d01e339222ed8d436e63769279a119",
"assets/assets/projects/dart_CRUD/images/Doublylinkedlist.png": "705a9d41d0879b28f5071fbc79dc1d00",
"assets/assets/projects/dart_CRUD/images/exit.jpg": "8048c64aa6230f2d389f724492262f13",
"assets/assets/projects/dart_CRUD/images/viewlist_linked.jpg": "0da17fe5f93fd87b4a7fb6c6c0421e7d",
"assets/assets/projects/dart_CRUD/images/menu.jpg": "0f848cf644877282531029375374c0f6",
"assets/assets/projects/dart_CRUD/images/delete2.jpg": "24d68ca5d119de319e45b28bbd645b52",
"assets/assets/projects/dart_CRUD/images/update_linked.jpg": "baf857c4325988f70eefe0b8ada6740d",
"assets/assets/projects/dart_CRUD/images/Circularlinkedlist.png": "c8b59e75bc5f74f9097a9863857e51a0",
"assets/assets/projects/dart_CRUD/images/update1.jpg": "68b190e5ee7356580acbdd10450d167b",
"assets/assets/projects/dart_CRUD/images/delete1.jpg": "73be6d653954389c85cccaae557a1bb8",
"assets/assets/projects/dart_CRUD/metadata.json": "3abc695fc2615a000e1e0bfa4e4cff13",
"assets/assets/projects/dart_CRUD/2023-08-19-crud-dart.md": "e9ca0316840b9190697b84bad03c2bdd",
"assets/assets/projects/portfolio-project/images/actions.jpg": "662e1fa36e4fea91d54038f03b88e071",
"assets/assets/projects/portfolio-project/images/project1.jpg": "41a4922abe35ef3a84b2402e1d36b678",
"assets/assets/projects/portfolio-project/images/blog1.jpg": "2121d4bf3ee56797d70c5c00455fed08",
"assets/assets/projects/portfolio-project/images/home-project.jpg": "40fcd44fb14b2c0ddd0d98a4defe8439",
"assets/assets/projects/portfolio-project/images/project-post.jpg": "3a54e995791ae019759b2f7383fa8154",
"assets/assets/projects/portfolio-project/images/flutter_markdown.jpg": "c3893d422655c927c059ac966a2fdd80",
"assets/assets/projects/portfolio-project/images/responsive_framework.jpg": "3530e631209013fe92a703ec15c922e7",
"assets/assets/projects/portfolio-project/images/home-blog2.jpg": "c2507d778e8ee274e44f7259325ed778",
"assets/assets/projects/portfolio-project/images/desktop3.jpg": "2b4ae1fab3a37982b7a4296d4e49db91",
"assets/assets/projects/portfolio-project/images/home-page.jpg": "16b66fb0babc1188ff2f8ab7842fbb23",
"assets/assets/projects/portfolio-project/images/About1.jpg": "a99a7e8e74a18fbde613de851298684d",
"assets/assets/projects/portfolio-project/images/home-blog1.jpg": "26cbefcc9c42d4fe45da50f87131b53a",
"assets/assets/projects/portfolio-project/images/assets.jpg": "e8274c05dc9fb10f62af023a797061b8",
"assets/assets/projects/portfolio-project/images/tablet.jpg": "67a2a9bfdd26fc068f5436fead6ae2bc",
"assets/assets/projects/portfolio-project/images/about2.jpg": "28a6e1c5ea5a0dae9504b696b405ccb5",
"assets/assets/projects/portfolio-project/images/blog2.jpg": "4e73268c5aaa27b527c96dcadddb00be",
"assets/assets/projects/portfolio-project/images/desktop.jpg": "9db6793548d5f368081828623cf79dd3",
"assets/assets/projects/portfolio-project/images/project2.jpg": "dbc71798f6b9954b5893a2b0f4e5f6a3",
"assets/assets/projects/portfolio-project/images/settings-pages.jpg": "8f49324254d85a305936f1f14c54433f",
"assets/assets/projects/portfolio-project/metadata.json": "305c4f3de8f251fa9d786611a2387aa1",
"assets/assets/projects/portfolio-project/2023-07-09-flutter-portfolio-project.md": "cd2904d3c19d49dcafc9b61972416cbf",
"assets/assets/blogs/blogs_list.json": "9dd41573e4c007a296d35f461c91c37e",
"assets/assets/blogs/dart_CRUD/images/delete_linked1.jpg": "bfbc85f07e17f0ca584717dbce3bf3ef",
"assets/assets/blogs/dart_CRUD/images/addNew2.jpg": "fff0200f2963aea87404d318c4f0aa54",
"assets/assets/blogs/dart_CRUD/images/delete_linked2.jpg": "f13aaff79617fb246740037f2e3ca9d4",
"assets/assets/blogs/dart_CRUD/images/addNew_linked.jpg": "5d85c9850066faa3e9f007660860e1ed",
"assets/assets/blogs/dart_CRUD/images/viewlist.jpg": "617d60c32b1ffee83268e69f17245882",
"assets/assets/blogs/dart_CRUD/images/Singlelinkedlist.png": "c45991bf5863c0112069848a025e298b",
"assets/assets/blogs/dart_CRUD/images/addNew1.jpg": "34babebc0db00aa1dd78159ff2f968d7",
"assets/assets/blogs/dart_CRUD/images/update2.jpg": "68d01e339222ed8d436e63769279a119",
"assets/assets/blogs/dart_CRUD/images/Doublylinkedlist.png": "705a9d41d0879b28f5071fbc79dc1d00",
"assets/assets/blogs/dart_CRUD/images/exit.jpg": "8048c64aa6230f2d389f724492262f13",
"assets/assets/blogs/dart_CRUD/images/viewlist_linked.jpg": "0da17fe5f93fd87b4a7fb6c6c0421e7d",
"assets/assets/blogs/dart_CRUD/images/menu.jpg": "0f848cf644877282531029375374c0f6",
"assets/assets/blogs/dart_CRUD/images/delete2.jpg": "24d68ca5d119de319e45b28bbd645b52",
"assets/assets/blogs/dart_CRUD/images/update_linked.jpg": "baf857c4325988f70eefe0b8ada6740d",
"assets/assets/blogs/dart_CRUD/images/Circularlinkedlist.png": "c8b59e75bc5f74f9097a9863857e51a0",
"assets/assets/blogs/dart_CRUD/images/update1.jpg": "68b190e5ee7356580acbdd10450d167b",
"assets/assets/blogs/dart_CRUD/images/delete1.jpg": "73be6d653954389c85cccaae557a1bb8",
"assets/assets/blogs/dart_CRUD/metadata.json": "3abc695fc2615a000e1e0bfa4e4cff13",
"assets/assets/blogs/dart_CRUD/2023-08-19-crud-dart.md": "4a4f5e09f6844207091a654aa6bc87d6",
"assets/assets/blogs/portfolio-blog/images/project-card.jpg": "5108c96379991b628aac5626455da6a0",
"assets/assets/blogs/portfolio-blog/images/breakpoint.jpg": "4bcdc370f7ca23820d9f9170ca49b421",
"assets/assets/blogs/portfolio-blog/images/build-web-assets.jpg": "7521c5625b024b768e20e5b6e951110b",
"assets/assets/blogs/portfolio-blog/images/build-web.jpg": "9b882ab4214b1569da9ba763fb3a1723",
"assets/assets/blogs/portfolio-blog/images/libFolder.jpg": "2be98652630da81276cfae88430a10ae",
"assets/assets/blogs/portfolio-blog/images/actions.jpg": "662e1fa36e4fea91d54038f03b88e071",
"assets/assets/blogs/portfolio-blog/images/projects-page.jpg": "519f1aa7b4f47d7a69dd03f13286e135",
"assets/assets/blogs/portfolio-blog/images/assets-blog.jpg": "bf88b7a1a0036435d617ceb2cdf9a511",
"assets/assets/blogs/portfolio-blog/images/post-page.jpg": "7f8a6d467446c5d3bb6eb2d53b95fd7c",
"assets/assets/blogs/portfolio-blog/images/grid-fixed.jpg": "69dfa8d1d6a6a28b40b2e3b549bfedd0",
"assets/assets/blogs/portfolio-blog/images/create-repository.jpg": "d6ce6de69606b0c1aa527f57a9114d90",
"assets/assets/blogs/portfolio-blog/images/projects-folder.jpg": "66258eaeebdade3da50ba283fc4338cb",
"assets/assets/blogs/portfolio-blog/images/launchUrl.jpg": "ad6f7b997e8924a7610fefa9dbda4de7",
"assets/assets/blogs/portfolio-blog/images/projects-list.jpg": "f2fd9568916d16a582b61cbfcc6249f5",
"assets/assets/blogs/portfolio-blog/images/responsive_framework.jpg": "3530e631209013fe92a703ec15c922e7",
"assets/assets/blogs/portfolio-blog/images/blog-section.jpg": "fefa517b69d839509be63db614befbc4",
"assets/assets/blogs/portfolio-blog/images/grid-max.jpg": "4311f5f366dc395793cd90e076991846",
"assets/assets/blogs/portfolio-blog/images/portfolio-blog.jpg": "9197b65f08bc5ec09f592e23dacc5e8b",
"assets/assets/blogs/portfolio-blog/images/desktop3.jpg": "2b4ae1fab3a37982b7a4296d4e49db91",
"assets/assets/blogs/portfolio-blog/images/top-navigation-bar.jpg": "719454ca02a8b0343a17f43baecc73eb",
"assets/assets/blogs/portfolio-blog/images/home-page.jpg": "16b66fb0babc1188ff2f8ab7842fbb23",
"assets/assets/blogs/portfolio-blog/images/project-section.jpg": "1b2f9e8eb18e1bf23749ba4268049edb",
"assets/assets/blogs/portfolio-blog/images/vonge-theme.jpg": "ba1038129bc2f19aff2def50863495bb",
"assets/assets/blogs/portfolio-blog/images/assets.jpg": "2df270c9a23c5c477f800c9964f893a4",
"assets/assets/blogs/portfolio-blog/images/tablet.jpg": "67a2a9bfdd26fc068f5436fead6ae2bc",
"assets/assets/blogs/portfolio-blog/images/blog-card.jpg": "5874b3c29d710121f7bbf5691446dfed",
"assets/assets/blogs/portfolio-blog/images/metadata.jpg": "94ec8c1c580c5714ec8ca4741293b6c1",
"assets/assets/blogs/portfolio-blog/images/desktop.jpg": "9db6793548d5f368081828623cf79dd3",
"assets/assets/blogs/portfolio-blog/images/github-button.jpg": "bd9141fb7ad53d931078f664cdc6db5b",
"assets/assets/blogs/portfolio-blog/images/settings-pages.jpg": "8f49324254d85a305936f1f14c54433f",
"assets/assets/blogs/portfolio-blog/images/drawer.jpg": "8c0a5b4d598060a5c4bde980fe0fb5a1",
"assets/assets/blogs/portfolio-blog/images/workflow-folder.jpg": "ef6c37b2007351281c2e0b36b9ef9d7c",
"assets/assets/blogs/portfolio-blog/metadata.json": "6eb7a690756d58266d0a5755e1d40fb1",
"assets/assets/blogs/portfolio-blog/2023-07-09-flutter-portfolio-blog-post.md": "745cbf4c1cbdc3285112eb05deeee422",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.json": "8ca1e3d1cc82c76bda7cd41914dffded",
"assets/NOTICES": "ee02b60cbbbc5918ea047e5df12dea73",
"assets/FontManifest.json": "8fac3349b566e73005b1fcc307cde714",
"version.json": "84faedd5d78f03ab1929e680a6fef173",
"main.dart.js": "0dba235ea8df9425ec5e84933e2c1a2f",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/chromium/canvaskit.wasm": "393ec8fb05d94036734f8104fa550a67",
"canvaskit/canvaskit.wasm": "d9f69e0f428f695dc3d66b3a83a4aa8e"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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

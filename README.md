##CACHE MANIFEST GENERATOR USING JSOUP

* Creates output for an appcache file that makes a website available offline
* Uses the [jsoup.org](jsoup.org) java library to parse an HTML file.
* Extracts images, scripts and link tags from the page and builds a manifest from these.
* Change the **site** to get your Cache Manifest
* Doesn't (Can't) get assets loaded after page load
* Only works with CF10 (Railo ???)
* Copy output and put into offline.appcache file. Reference this in html tag e.g. `<html manifest="offline.appcache">`
* Inspired by [http://www.bennadel.com/blog/2358-parsing-traversing-and-mutating-html-with-coldfusion-and-jsoup.htm](http://www.bennadel.com/blog/2358-parsing-traversing-and-mutating-html-with-coldfusion-and-jsoup.htm)


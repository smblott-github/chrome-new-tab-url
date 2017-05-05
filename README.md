# Redirect Chrome's New-Tab URL

This is a simple extension to redirect Chrome's new-tab page (`chrome://newtab`)
to a URL of your choice.  By default, it redirects to this more-or-less [blank
page](http://www.this-page-intentionally-left-blank.org/), but you can change
that on the extension's options page.  The extension was written as a
super-simple, lightweight alternative to [New Tab
Redirect](https://chrome.google.com/webstore/detail/new-tab-redirect/icpgjfneehieebagbmdbhnlpiopdcmna?utm_source=chrome-app-launcher-info-dialog).

One use for this is with [Vimium](https://github.com/philc/vimium).  Vimium does not run on the built-in new-tab page.  After redirecting new tabs (opened with `Ctrl-T`) to a blank page, say, Vimium is immediately active.

Available on the [Chrome Store](https://chrome.google.com/webstore/detail/new-tab-url/njigpponciklokfkoddampoienefegcl).

If you select *Allow access to file URLs* on the extensions page, then you can set the redirection URL (on the options page) to a `file://...` URL.

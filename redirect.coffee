
documentReady = (func) ->
  if document.readyState == "loading" then window.addEventListener "DOMContentLoaded", func else func()

defaultURL = "http://www.this-page-intentionally-left-blank.org/"

chrome.storage.sync.get "url", (items) ->
  documentReady -> document.location.href = items.url || defaultURL


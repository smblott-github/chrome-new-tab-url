
documentReady = (func) ->
  if document.readyState == "loading" then window.addEventListener "DOMContentLoaded", func else func()

chrome.storage.sync.get "url", (items) ->
  url = items.url ? defaultURL
  if url
    documentReady ->
      chrome.tabs.getSelected null, (tab) ->
        chrome.tabs.update tab.id, { url }


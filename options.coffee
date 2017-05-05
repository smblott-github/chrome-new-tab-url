
$ = (id) -> document.getElementById id

document.addEventListener "keyup", (event) ->
  if event.ctrlKey and event.keyCode == 13
    document.activeElement?.blur?()
    url = $("url").value.trim()
    url = defaultURL unless 0 < url.length
    $("url").value = url
    chrome.storage.sync.set { url }

chrome.storage.sync.get "url", (items) ->
  $("url").value = if items.url? then items.url else defaultURL
  $("url").focus()

# From Vimium.
documentReady = do ->
  [isReady, callbacks] = [document.readyState != "loading", []]
  unless isReady
    window.addEventListener "DOMContentLoaded", onDOMContentLoaded = ->
      window.removeEventListener "DOMContentLoaded", onDOMContentLoaded
      isReady = true
      callback() for callback in callbacks
      callbacks = null

  (callback) -> if isReady then callback() else callbacks.push callback

documentReady ->
  versionNumber = $ "versionNumber"
  versionNumber.textContent = chrome.runtime.getManifest().version

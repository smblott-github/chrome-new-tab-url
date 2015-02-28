
$ = (id) -> document.getElementById id
defaultURL = "http://www.this-page-intentionally-left-blank.org/"

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



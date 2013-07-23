var $dcss = "";

function fetchCSS(cb) {
  var xhr = new XMLHttpRequest();
  xhr.open("GET", "http://diagnosticss.github.io/css/diagnosticss.css", true);
  xhr.onreadystatechange = function() {
    if (xhr.readyState == 4) {
      $dcss = xhr.responseText;
      cb();
    }
  }
  xhr.send();
}

function insertCSS() {
  chrome.tabs.insertCSS({
    code: $dcss,
    allFrames: true
  });
};

chrome.browserAction.onClicked.addListener(function(){
  if ($dcss.length < 3) {
    fetchCSS(insertCSS);
  } else {
    insertCSS();
  }
});

/*<style>
    .google-translate {
    display: inline-block;
    vertical-align: top;
    padding-top: 15px;
}

    .goog-logo-link {
    display: none !important;
}

    .goog-te-gadget {
    color: transparent !important;
}

    #google_translate_element {
    display: none;
}

    .goog-te-banner-frame.skiptranslate {
    display: none !important;
}

    body {
    top: 0px !important;
}

</style>

<script src="{{asset('js/translate-google.js')}}"></script>


<script type="text/javascript">
    function googleTranslateElementInit2(){
    new google.translate.TranslateElement({
        pageLanguage: 'fr',
        includedLanguages: 'en,es,fr',
        // https://ctrlq.org/code/19899-google-translate-languages
        // includedLanguages: 'en,it,la,fr',
        // layout:     google.translate.TranslateElement.InlineLayout.SIMPLE,
        autoDisplay: true
    }, 'google_translate_element2');
    var a = document.querySelector("#google_translate_element select");
    // console.log(a);

    if(a){
    a.selectedIndex=1;
    a.dispatchEvent(new Event('change'));
}
}
</script>

<ul className="navbar-nav my-lg-0 m-r-10">
    <li>
        <div className="google-translate">
            <div id="google_translate_element2"></div>
        </div>
    </li>


*/
(function () {
    var gtConstEvalStartTime = new Date();

    function d(b) {
        var a = document.getElementsByTagName("head")[0];
        a || (a = document.body.parentNode.appendChild(document.createElement("head")));
        a.appendChild(b)
    }

    function _loadJs(b) {
        // console.log(b);
        var a = document.createElement("script");
        a.type = "text/javascript";
        a.charset = "UTF-8";
        a.src = b;
        d(a)
    }

    function _loadCss(b) {
        var a = document.createElement("link");
        a.type = "text/css";
        a.rel = "stylesheet";
        a.charset = "UTF-8";
        a.href = b;
        d(a)
    }

    function _isNS(b) {
        b = b.split(".");
        for (var a = window, c = 0; c < b.length; ++c)
            if (!(a = a[b[c]])) return !1;
        return !0
    }

    function _setupNS(b) {
        b = b.split(".");
        for (var a = window, c = 0; c < b.length; ++c) a.hasOwnProperty ? a.hasOwnProperty(b[c]) ? a = a[b[c]] : a = a[b[c]] = {} : a = a[b[c]] || (a[b[c]] = {});
        return a
    }
    window.addEventListener && "undefined" == typeof document.readyState && window.addEventListener("DOMContentLoaded", function () {
        document.readyState = "complete"
    }, !1);
    if (_isNS('google.translate.Element')) {
        return
    }(function () {
        var c = _setupNS('google.translate._const');
        c._cest = gtConstEvalStartTime;
        gtConstEvalStartTime = undefined;
        c._cl = 'en';
        c._cuc = 'googleTranslateElementInit2';
        c._cac = '';
        c._cam = '';
        c._ctkk = eval('((function(){var a\x3d3002255536;var b\x3d-2533142796;return 425386+\x27.\x27+(a+b)})())');
        var h = 'translate.googleapis.com';
        var s = (true ? 'https' : window.location.protocol == 'https:' ? 'https' : 'http') + '://';
        var b = s + h;
        c._pah = h;
        c._pas = s;
        c._pbi = b + '/translate_static/img/te_bk.gif';
        c._pci = b + '/translate_static/img/te_ctrl3.gif';
        c._pli = b + '/translate_static/img/loading.gif';
        c._plla = h + '/translate_a/l';
        c._pmi = b + '/translate_static/img/mini_google.png';
        c._ps = b + '/translate_static/css/translateelement.css';
        c._puh = 'translate.google.com';
        _loadCss(c._ps);
        _loadJs(b + '/translate_static/js/element/main.js');
    })();
})();
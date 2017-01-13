(function($) {
    $.QueryString = (function(a) {
        if (a == "") return {};
        var b = {};
        for (var i = 0; i < a.length; ++i)
        {
            var p=a[i].split('=');
            if (p.length != 2) continue;
            b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
        }
        return b;
    })(window.location.search.substr(1).split('&'))
})(jQuery);

var querystring = window.location.href.substring(window.location.href.indexOf('?') + 1, window.location.href.length)

var obj = {
    lexeme : $.QueryString["lexeme"],
    stem : $.QueryString["stem"],
    phonetic : $.QueryString["phonetic"],
    silnum : $.QueryString["silnum"],
    def : $.QueryString["def"],
    gloss : $.QueryString["gloss"],
    graminf : $.QueryString["graminf"],
    tones : $.QueryString["tones"],
  }

$(document).ready(function(){
  $.each(obj, function(key, value){
      if(value=="true"){
        $("." + key).css("display", "table-cell");
        $("#" + key).prop("checked",true);
        }
    });
    
  $.each(obj, function(key, value){
      $("#" + key).change(function () {
            var href = window.location.href.substring(0, window.location.href.indexOf('?'));
            var qs = window.location.href.substring(window.location.href.indexOf('?') + 1, window.location.href.length);
            var newParam = $(this).attr("id") + '=' + $("#" + key).prop("checked");

            if (qs.indexOf($(this).attr("id") + '=') == -1) {
                if (qs == '') {
                    qs = '?'
                }
                else {
                    qs = qs + '&'
                }
                qs = qs + newParam;

            }
            else {
                var start = qs.indexOf($(this).attr("id") + "=");
                var end = qs.indexOf("&", start);
                if (end == -1) {
                    end = qs.length;
                }
                var curParam = qs.substring(start, end);
                qs = qs.replace(curParam, newParam);
            }
            window.location.replace(href + '?' + qs.match(/&.*/));
    });});
  
  $('a').each(function()
    {
        var href = $(this).attr('href');
        href += (href.match(/\?/) ? '&' : '?') + querystring;
        $(this).attr('href', href);
    });
    
});




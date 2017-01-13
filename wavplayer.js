function getPlayer(pid) {
            var obj = document.getElementById(pid);
            if (obj.doPlay) return obj;
            for(i=0; i<obj.childNodes.length; i++) {
              var child = obj.childNodes[i];
              if (child.tagName == "EMBED") return child;
            }
          }
          function doPlay(fname) {
            var player=getPlayer("audio1");
            player.play(fname);
          }
          function doStop() {
            var player=getPlayer("audio1");
            player.doStop();
          }
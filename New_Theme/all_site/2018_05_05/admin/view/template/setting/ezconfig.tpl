<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/<?php echo $image;?>" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location='<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <div id="tabs" class="htabs">
      <?php foreach ($tabs as $tab) { ?>
        <a href="#tab-<?php echo $tab['id']; ?>"><?php echo $tab['name']; ?></a>
      <?php } ?>
      </div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <?php foreach ($tabs as $tab) { ?>
        <div id="tab-<?php echo $tab['id']; ?>">
        <?php if ($tab['subtabs']) { ?>
          <div id="vtab-<?php echo $tab['id']; ?>" class="vtabs">
          <?php foreach ($tab['content'] as $vtab => $content) { ?>
            <?php if ($content['header']) { ?>
            <a href="#vtab-<?php echo $tab['id'] . '_' . $vtab;?>" id="<?php echo $tab['id'] . '_' . $vtab;?>"><?php echo $content['header'];?></a>
            <?php } ?>
          <?php } ?>
          </div>
        <?php } ?>
        <?php foreach ($tab['content'] as $vtab => $content) { ?>
          <?php if ($tab['subtabs'] && $content['header']) { ?>
          <div id="vtab-<?php echo $tab['id'] . '_' . $vtab; ?>" class="vtabs-content">
          <?php } ?>
          <?php if (isset($content['settings'][0]['name'])) { ?>
            <table class="form">
              <tr>
              <?php $rownum = 0;?>
              <?php foreach ($content['settings'] as $setting) { ?>
                <?php $width = (!$rownum && count($content['settings']) >= 4) ? ' style="width:130px;"' : '';?>
                <?php $rownum++;?>
                <td<?php echo $width;?>>
                  <?php if ($setting['required']) { ?><span class="required">*</span><?php } ?>
                  <?php echo $setting['name']; ?>
                </td>
                <td>
                  <?php echo $setting['input'];?>
                  <?php if ($setting['error']) { ?><span class="error"><?php echo $setting['error']; ?></span><?php } ?>
                </td>
              <?php } ?>
              </tr>
            </table>
          <?php } else { ?>
            <?php $hidden = '';?>
            <?php foreach ($content['settings'] as $row) { ?>
            <table class="form">
              <tr>
              <?php $rownum = 0;?>
              <?php foreach ($row as $setting) { ?>
                <?php $width = (!$rownum && count($row) >= 4) ? ' style="width:220px;"' : '';?>
                <?php $rownum++;?>
                <?php if ($setting['name'] != 'hidden') { ?>
                <td<?php echo $width;?>>
                  <?php if ($setting['required']) { ?><span class="required">*</span><?php } ?>
                  <?php echo $setting['name']; ?>
                </td>
                <td>
                  <?php echo $setting['input'];?>
                  <?php if ($setting['error']) { ?><span class="error"><?php echo $setting['error']; ?></span><?php } ?>
                </td>
                <?php } else { ?>
                <?php $hidden .= $setting['input'];?>
                <?php } ?>
              <?php } ?>
              </tr>
            </table>
            <?php } ?>
            <?php echo $hidden;?>
          <?php } ?>
          <?php if ($tab['subtabs'] && $content['header']) { ?>
          </div>
          <?php } ?>
        <?php } ?>
        </div>
      <?php } ?>
      </form>
    </div>
  </div>
</div>
<!--// Following line of javascript is minimized jsColor (by Jan Odvarko) //-->
<script type="text/javascript">var jscolor={bindClass:'color',binding:true,preloading:false,install:function(){jscolor.addEvent(window,'load',jscolor.init)},init:function(){if(jscolor.binding){jscolor.bind()}if(jscolor.preloading){jscolor.preload()}},bind:function(){var matchClass=new RegExp('(^|\\s)('+jscolor.bindClass+')\\s*(\\{[^}]*\\})?','i');var e=document.getElementsByTagName('input');for(var i=0;i<e.length;i+=1){var m;if(!e[i].color&&e[i].className&&(m=e[i].className.match(matchClass))){var prop={};if(m[3]){try{eval('prop='+m[3])}catch(eInvalidProp){}}e[i].color=new jscolor.color(e[i],prop)}}},preload:function(){for(var fn in jscolor.imgRequire){if(jscolor.imgRequire.hasOwnProperty(fn)){jscolor.loadImage(fn)}}},images:{pad:[181,101],sld:[16,101],cross:[15,15],arrow:[7,11]},imgRequire:{},imgLoaded:{},requireImage:function(filename){jscolor.imgRequire[filename]=true},loadImage:function(filename){if(!jscolor.imgLoaded[filename]){jscolor.imgLoaded[filename]=new Image();jscolor.imgLoaded[filename].src=filename}},fetchElement:function(mixed){return typeof mixed==='string'?document.getElementById(mixed):mixed},addEvent:function(el,evnt,func){if(el.addEventListener){el.addEventListener(evnt,func,false)}else if(el.attachEvent){el.attachEvent('on'+evnt,func)}},fireEvent:function(el,evnt){if(!el){return}if(document.createEventObject){var ev=document.createEventObject();el.fireEvent('on'+evnt,ev)}else if(document.createEvent){var ev=document.createEvent('HTMLEvents');ev.initEvent(evnt,true,true);el.dispatchEvent(ev)}else if(el['on'+evnt]){el['on'+evnt]()}},getElementPos:function(e){var e1=e,e2=e;var x=0,y=0;if(e1.offsetParent){do{x+=e1.offsetLeft;y+=e1.offsetTop}while(e1=e1.offsetParent)}while((e2=e2.parentNode)&&e2.nodeName.toUpperCase()!=='BODY'){x-=e2.scrollLeft;y-=e2.scrollTop}return[x,y]},getElementSize:function(e){return[e.offsetWidth,e.offsetHeight]},getMousePos:function(e){if(!e){e=window.event}if(typeof e.pageX==='number'){return[e.pageX,e.pageY]}else if(typeof e.clientX==='number'){return[e.clientX+document.body.scrollLeft+document.documentElement.scrollLeft,e.clientY+document.body.scrollTop+document.documentElement.scrollTop]}},getViewPos:function(){if(typeof window.pageYOffset==='number'){return[window.pageXOffset,window.pageYOffset]}else if(document.body&&(document.body.scrollLeft||document.body.scrollTop)){return[document.body.scrollLeft,document.body.scrollTop]}else if(document.documentElement&&(document.documentElement.scrollLeft||document.documentElement.scrollTop)){return[document.documentElement.scrollLeft,document.documentElement.scrollTop]}else{return[0,0]}},getViewSize:function(){if(typeof window.innerWidth==='number'){return[window.innerWidth,window.innerHeight]}else if(document.body&&(document.body.clientWidth||document.body.clientHeight)){return[document.body.clientWidth,document.body.clientHeight]}else if(document.documentElement&&(document.documentElement.clientWidth||document.documentElement.clientHeight)){return[document.documentElement.clientWidth,document.documentElement.clientHeight]}else{return[0,0]}},URI:function(uri){this.scheme=null;this.authority=null;this.path='';this.query=null;this.fragment=null;this.parse=function(uri){var m=uri.match(/^(([A-Za-z][0-9A-Za-z+.-]*)(:))?((\/\/)([^\/?#]*))?([^?#]*)((\?)([^#]*))?((#)(.*))?/);this.scheme=m[3]?m[2]:null;this.authority=m[5]?m[6]:null;this.path=m[7];this.query=m[9]?m[10]:null;this.fragment=m[12]?m[13]:null;return this};this.toString=function(){var result='';if(this.scheme!==null){result=result+this.scheme+':'}if(this.authority!==null){result=result+'//'+this.authority}if(this.path!==null){result=result+this.path}if(this.query!==null){result=result+'?'+this.query}if(this.fragment!==null){result=result+'#'+this.fragment}return result};this.toAbsolute=function(base){var base=new jscolor.URI(base);var r=this;var t=new jscolor.URI;if(base.scheme===null){return false}if(r.scheme!==null&&r.scheme.toLowerCase()===base.scheme.toLowerCase()){r.scheme=null}if(r.scheme!==null){t.scheme=r.scheme;t.authority=r.authority;t.path=removeDotSegments(r.path);t.query=r.query}else{if(r.authority!==null){t.authority=r.authority;t.path=removeDotSegments(r.path);t.query=r.query}else{if(r.path===''){t.path=base.path;if(r.query!==null){t.query=r.query}else{t.query=base.query}}else{if(r.path.substr(0,1)==='/'){t.path=removeDotSegments(r.path)}else{if(base.authority!==null&&base.path===''){t.path='/'+r.path}else{t.path=base.path.replace(/[^\/]+$/,'')+r.path}t.path=removeDotSegments(t.path)}t.query=r.query}t.authority=base.authority}t.scheme=base.scheme}t.fragment=r.fragment;return t};function removeDotSegments(path){var out='';while(path){if(path.substr(0,3)==='../'||path.substr(0,2)==='./'){path=path.replace(/^\.+/,'').substr(1)}else if(path.substr(0,3)==='/./'||path==='/.'){path='/'+path.substr(3)}else if(path.substr(0,4)==='/../'||path==='/..'){path='/'+path.substr(4);out=out.replace(/\/?[^\/]*$/,'')}else if(path==='.'||path==='..'){path=''}else{var rm=path.match(/^\/?[^\/]*/)[0];path=path.substr(rm.length);out=out+rm}}return out}if(uri){this.parse(uri)}},color:function(target,prop){this.required=true;this.adjust=true;this.hash=false;this.caps=true;this.valueElement=target;this.styleElement=target;this.hsv=[0,0,1];this.rgb=[1,1,1];this.pickerOnfocus=true;this.pickerMode='HSV';this.pickerPosition='bottom';this.pickerFace=10;this.pickerFaceColor='ThreeDFace';this.pickerBorder=1;this.pickerBorderColor='ThreeDHighlight ThreeDShadow ThreeDShadow ThreeDHighlight';this.pickerInset=1;this.pickerInsetColor='ThreeDShadow ThreeDHighlight ThreeDHighlight ThreeDShadow';this.pickerZIndex=10000;for(var p in prop){if(prop.hasOwnProperty(p)){this[p]=prop[p]}}this.hidePicker=function(){if(isPickerOwner()){removePicker()}};this.showPicker=function(){if(!isPickerOwner()){var tp=jscolor.getElementPos(target);var ts=jscolor.getElementSize(target);var vp=jscolor.getViewPos();var vs=jscolor.getViewSize();var ps=[2*this.pickerBorder+4*this.pickerInset+2*this.pickerFace+jscolor.images.pad[0]+2*jscolor.images.arrow[0]+jscolor.images.sld[0],2*this.pickerBorder+2*this.pickerInset+2*this.pickerFace+jscolor.images.pad[1]];var a,b,c;switch(this.pickerPosition.toLowerCase()){case'left':a=1;b=0;c=-1;break;case'right':a=1;b=0;c=1;break;case'top':a=0;b=1;c=-1;break;default:a=0;b=1;c=1;break}var l=(ts[b]+ps[b])/2;var pp=[-vp[a]+tp[a]+ps[a]>vs[a]?(-vp[a]+tp[a]+ts[a]/2 > vs[a]/2&&tp[a]+ts[a]-ps[a]>=0?tp[a]+ts[a]-ps[a]:tp[a]):tp[a],-vp[b]+tp[b]+ts[b]+ps[b]-l+l*c>vs[b]?(-vp[b]+tp[b]+ts[b]/2 > vs[b]/2&&tp[b]+ts[b]-l-l*c>=0?tp[b]+ts[b]-l-l*c:tp[b]+ts[b]-l+l*c):(tp[b]+ts[b]-l+l*c>=0?tp[b]+ts[b]-l+l*c:tp[b]+ts[b]-l-l*c)];drawPicker(pp[a],pp[b])}};this.importColor=function(){if(!valueElement){this.exportColor()}else{if(!this.adjust){if(!this.fromString(valueElement.value,leaveValue)){styleElement.style.backgroundColor=styleElement.jscStyle.backgroundColor;styleElement.style.color=styleElement.jscStyle.color;this.exportColor(leaveValue|leaveStyle)}}else if(!this.required&&/^\s*$/.test(valueElement.value)){valueElement.value='';styleElement.style.backgroundColor=styleElement.jscStyle.backgroundColor;styleElement.style.color=styleElement.jscStyle.color;this.exportColor(leaveValue|leaveStyle)}else if(this.fromString(valueElement.value)){}else{this.exportColor()}}};this.exportColor=function(flags){if(!(flags&leaveValue)&&valueElement){var value=this.toString();if(this.caps){value=value.toUpperCase()}if(this.hash){value='#'+value}valueElement.value=value}if(!(flags&leaveStyle)&&styleElement){styleElement.style.backgroundColor='#'+this.toString();styleElement.style.color=0.213*this.rgb[0]+0.715*this.rgb[1]+0.072*this.rgb[2]<0.5?'#FFF':'#000'}if(!(flags&leavePad)&&isPickerOwner()){redrawPad()}if(!(flags&leaveSld)&&isPickerOwner()){redrawSld()}};this.fromHSV=function(h,s,v,flags){h<0&&(h=0)||h>6&&(h=6);s<0&&(s=0)||s>1&&(s=1);v<0&&(v=0)||v>1&&(v=1);this.rgb=HSV_RGB(h===null?this.hsv[0]:(this.hsv[0]=h),s===null?this.hsv[1]:(this.hsv[1]=s),v===null?this.hsv[2]:(this.hsv[2]=v));this.exportColor(flags)};this.fromRGB=function(r,g,b,flags){r<0&&(r=0)||r>1&&(r=1);g<0&&(g=0)||g>1&&(g=1);b<0&&(b=0)||b>1&&(b=1);var hsv=RGB_HSV(r===null?this.rgb[0]:(this.rgb[0]=r),g===null?this.rgb[1]:(this.rgb[1]=g),b===null?this.rgb[2]:(this.rgb[2]=b));if(hsv[0]!==null){this.hsv[0]=hsv[0]}if(hsv[2]!==0){this.hsv[1]=hsv[1]}this.hsv[2]=hsv[2];this.exportColor(flags)};this.fromString=function(hex,flags){var m=hex.match(/^\W*([0-9A-F]{3}([0-9A-F]{3})?)\W*$/i);if(!m){return false}else{if(m[1].length===6){this.fromRGB(parseInt(m[1].substr(0,2),16)/255,parseInt(m[1].substr(2,2),16)/255,parseInt(m[1].substr(4,2),16)/255,flags)}else{this.fromRGB(parseInt(m[1].charAt(0)+m[1].charAt(0),16)/255,parseInt(m[1].charAt(1)+m[1].charAt(1),16)/255,parseInt(m[1].charAt(2)+m[1].charAt(2),16)/255,flags)}return true}};this.toString=function(){return((0x100|Math.round(255*this.rgb[0])).toString(16).substr(1)+(0x100|Math.round(255*this.rgb[1])).toString(16).substr(1)+(0x100|Math.round(255*this.rgb[2])).toString(16).substr(1))};function RGB_HSV(r,g,b){var n=Math.min(Math.min(r,g),b);var v=Math.max(Math.max(r,g),b);var m=v-n;if(m===0){return[null,0,v]}var h=r===n?3+(b-g)/m:(g===n?5+(r-b)/m:1+(g-r)/m);return[h===6?0:h,m/v,v]}function HSV_RGB(h,s,v){if(h===null){return[v,v,v]}var i=Math.floor(h);var f=i%2?h-i:1-(h-i);var m=v*(1-s);var n=v*(1-s*f);switch(i){case 6:case 0:return[v,n,m];case 1:return[n,v,m];case 2:return[m,v,n];case 3:return[m,n,v];case 4:return[n,m,v];case 5:return[v,m,n]}}function removePicker(){delete jscolor.picker.owner;document.getElementsByTagName('body')[0].removeChild(jscolor.picker.boxB)}function drawPicker(x,y){if(!jscolor.picker){jscolor.picker={box:document.createElement('div'),boxB:document.createElement('div'),pad:document.createElement('div'),padB:document.createElement('div'),padM:document.createElement('div'),sld:document.createElement('div'),sldB:document.createElement('div'),sldM:document.createElement('div')};for(var i=0,segSize=4;i<jscolor.images.sld[1];i+=segSize){var seg=document.createElement('div');seg.style.height=segSize+'px';seg.style.fontSize='1px';seg.style.lineHeight='0';jscolor.picker.sld.appendChild(seg)}jscolor.picker.sldB.appendChild(jscolor.picker.sld);jscolor.picker.box.appendChild(jscolor.picker.sldB);jscolor.picker.box.appendChild(jscolor.picker.sldM);jscolor.picker.padB.appendChild(jscolor.picker.pad);jscolor.picker.box.appendChild(jscolor.picker.padB);jscolor.picker.box.appendChild(jscolor.picker.padM);jscolor.picker.boxB.appendChild(jscolor.picker.box)}var p=jscolor.picker;posPad=[x+THIS.pickerBorder+THIS.pickerFace+THIS.pickerInset,y+THIS.pickerBorder+THIS.pickerFace+THIS.pickerInset];posSld=[null,y+THIS.pickerBorder+THIS.pickerFace+THIS.pickerInset];p.box.onmouseup=p.box.onmouseout=function(){target.focus()};p.box.onmousedown=function(){abortBlur=true};p.box.onmousemove=function(e){holdPad&&setPad(e);holdSld&&setSld(e)};p.padM.onmouseup=p.padM.onmouseout=function(){if(holdPad){holdPad=false;jscolor.fireEvent(valueElement,'change')}};p.padM.onmousedown=function(e){holdPad=true;setPad(e)};p.sldM.onmouseup=p.sldM.onmouseout=function(){if(holdSld){holdSld=false;jscolor.fireEvent(valueElement,'change')}};p.sldM.onmousedown=function(e){holdSld=true;setSld(e)};p.box.style.width=4*THIS.pickerInset+2*THIS.pickerFace+jscolor.images.pad[0]+2*jscolor.images.arrow[0]+jscolor.images.sld[0]+'px';p.box.style.height=2*THIS.pickerInset+2*THIS.pickerFace+jscolor.images.pad[1]+'px';p.boxB.style.position='absolute';p.boxB.style.clear='both';p.boxB.style.left=x+'px';p.boxB.style.top=y+'px';p.boxB.style.zIndex=THIS.pickerZIndex;p.boxB.style.border=THIS.pickerBorder+'px solid';p.boxB.style.borderColor=THIS.pickerBorderColor;p.boxB.style.background=THIS.pickerFaceColor;p.pad.style.width=jscolor.images.pad[0]+'px';p.pad.style.height=jscolor.images.pad[1]+'px';p.padB.style.position='absolute';p.padB.style.left=THIS.pickerFace+'px';p.padB.style.top=THIS.pickerFace+'px';p.padB.style.border=THIS.pickerInset+'px solid';p.padB.style.borderColor=THIS.pickerInsetColor;p.padM.style.position='absolute';p.padM.style.left='0';p.padM.style.top='0';p.padM.style.width=THIS.pickerFace+2*THIS.pickerInset+jscolor.images.pad[0]+jscolor.images.arrow[0]+'px';p.padM.style.height=p.box.style.height;p.padM.style.cursor='crosshair';p.sld.style.overflow='hidden';p.sld.style.width=jscolor.images.sld[0]+'px';p.sld.style.height=jscolor.images.sld[1]+'px';p.sldB.style.position='absolute';p.sldB.style.right=THIS.pickerFace+'px';p.sldB.style.top=THIS.pickerFace+'px';p.sldB.style.border=THIS.pickerInset+'px solid';p.sldB.style.borderColor=THIS.pickerInsetColor;p.sldM.style.position='absolute';p.sldM.style.right='0';p.sldM.style.top='0';p.sldM.style.width=jscolor.images.sld[0]+jscolor.images.arrow[0]+THIS.pickerFace+2*THIS.pickerInset+'px';p.sldM.style.height=p.box.style.height;try{p.sldM.style.cursor='pointer'}catch(eOldIE){p.sldM.style.cursor='hand'}switch(modeID){case 0:var padImg='data:image/png;base64,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%3D';break;case 1:var padImg='data:image/png;base64,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';break}p.padM.style.background="url(data:image/gif;base64,R0lGODlhDwAPAKEBAAAAAP///////////yH5BAEKAAIALAAAAAAPAA8AAAIklB8Qx53b4otSUWcvyiz4/4AeQJbmKY4p1HHapBlwPL/uVRsFADs%3D) no-repeat";p.sldM.style.background="url(data:image/gif;base64,R0lGODlhBwALAKECAAAAAP///6g8eKg8eCH5BAEKAAIALAAAAAAHAAsAAAITTIQYcLnsgGxvijrxqdQq6DRJAQA7) no-repeat";p.pad.style.background="url("+padImg+") 0 0 no-repeat";redrawPad();redrawSld();jscolor.picker.owner=THIS;document.getElementsByTagName('body')[0].appendChild(p.boxB)}function redrawPad(){switch(modeID){case 0:var yComponent=1;break;case 1:var yComponent=2;break}var x=Math.round((THIS.hsv[0]/6)*(jscolor.images.pad[0]-1));var y=Math.round((1-THIS.hsv[yComponent])*(jscolor.images.pad[1]-1));jscolor.picker.padM.style.backgroundPosition=(THIS.pickerFace+THIS.pickerInset+x-Math.floor(jscolor.images.cross[0]/2))+'px '+(THIS.pickerFace+THIS.pickerInset+y-Math.floor(jscolor.images.cross[1]/2))+'px';var seg=jscolor.picker.sld.childNodes;switch(modeID){case 0:var rgb=HSV_RGB(THIS.hsv[0],THIS.hsv[1],1);for(var i=0;i<seg.length;i+=1){seg[i].style.backgroundColor='rgb('+(rgb[0]*(1-i/seg.length)*100)+'%,'+(rgb[1]*(1-i/seg.length)*100)+'%,'+(rgb[2]*(1-i/seg.length)*100)+'%)'}break;case 1:var rgb,s,c=[THIS.hsv[2],0,0];var i=Math.floor(THIS.hsv[0]);var f=i%2?THIS.hsv[0]-i:1-(THIS.hsv[0]-i);switch(i){case 6:case 0:rgb=[0,1,2];break;case 1:rgb=[1,0,2];break;case 2:rgb=[2,0,1];break;case 3:rgb=[2,1,0];break;case 4:rgb=[1,2,0];break;case 5:rgb=[0,2,1];break}for(var i=0;i<seg.length;i+=1){s=1-1/(seg.length-1)*i;c[1]=c[0]*(1-s*f);c[2]=c[0]*(1-s);seg[i].style.backgroundColor='rgb('+(c[rgb[0]]*100)+'%,'+(c[rgb[1]]*100)+'%,'+(c[rgb[2]]*100)+'%)'}break}}function redrawSld(){switch(modeID){case 0:var yComponent=2;break;case 1:var yComponent=1;break}var y=Math.round((1-THIS.hsv[yComponent])*(jscolor.images.sld[1]-1));jscolor.picker.sldM.style.backgroundPosition='0 '+(THIS.pickerFace+THIS.pickerInset+y-Math.floor(jscolor.images.arrow[1]/2))+'px'}function isPickerOwner(){return jscolor.picker&&jscolor.picker.owner===THIS}function blurTarget(){if(valueElement===target){THIS.importColor()}if(THIS.pickerOnfocus){THIS.hidePicker()}}function blurValue(){if(valueElement!==target){THIS.importColor()}}function setPad(e){var posM=jscolor.getMousePos(e);var x=posM[0]-posPad[0];var y=posM[1]-posPad[1];switch(modeID){case 0:THIS.fromHSV(x*(6/(jscolor.images.pad[0]-1)),1-y/(jscolor.images.pad[1]-1),null,leaveSld);break;case 1:THIS.fromHSV(x*(6/(jscolor.images.pad[0]-1)),null,1-y/(jscolor.images.pad[1]-1),leaveSld);break}}function setSld(e){var posM=jscolor.getMousePos(e);var y=posM[1]-posPad[1];switch(modeID){case 0:THIS.fromHSV(null,null,1-y/(jscolor.images.sld[1]-1),leavePad);break;case 1:THIS.fromHSV(null,1-y/(jscolor.images.sld[1]-1),null,leavePad);break}}var THIS=this;var modeID=this.pickerMode.toLowerCase()==='hvs'?1:0;var abortBlur=false;var valueElement=jscolor.fetchElement(this.valueElement),styleElement=jscolor.fetchElement(this.styleElement);var holdPad=false,holdSld=false;var posPad,posSld;var leaveValue=1<<0,leaveStyle=1<<1,leavePad=1<<2,leaveSld=1<<3;jscolor.addEvent(target,'focus',function(){if(THIS.pickerOnfocus){THIS.showPicker()}});jscolor.addEvent(target,'blur',function(){if(!abortBlur){window.setTimeout(function(){abortBlur||blurTarget();abortBlur=false},0)}else{abortBlur=false}});if(valueElement){var updateField=function(){THIS.fromString(valueElement.value,leaveValue)};jscolor.addEvent(valueElement,'keyup',updateField);jscolor.addEvent(valueElement,'input',updateField);jscolor.addEvent(valueElement,'blur',blurValue);valueElement.setAttribute('autocomplete','off')}if(styleElement){styleElement.jscStyle={backgroundColor:styleElement.style.backgroundColor,color:styleElement.style.color}}switch(modeID){case 0:jscolor.requireImage('hs.png');break;case 1:jscolor.requireImage('hv.png');break}jscolor.requireImage('cross.gif');jscolor.requireImage('arrow.gif');this.importColor()}};jscolor.install();</script>
<script type="text/javascript"><!--
<?php echo $javascript;?>
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
$('input.numeric').live('keyup', function() {
	var value = $(this).val().replace(/[^0-9-]/g, "");
	$(this).val(value);
});

$(document).ready(function() {
	$('select[multiple]').each(function() {
		if (!$(this).is('[name]')) return true;
		var width =  ($(this).is(':visible')) ? $(this).outerWidth() + 20 : 150;
		var checkboxes = $('<div/>', { 'class': 'multiselect', 'width': width + 'px', 'height': '90px'}).css({ 'border-style': 'solid', 'border-width': '1px', 'border-color': '#0080C0', 'overflow': 'auto' }),
			name = $(this).attr('name');
		$(this).after(checkboxes);
		var options = $(this).find("option");
		options.each(function() {
			var checkbox = $('<input/>', {'type': 'checkbox', 'name': name, 'value': $(this).val() });
			checkboxes.append($('<label/>').css('display', 'block').append(checkbox).append($(this).html()));
			// Highlight pre-selected checkboxes
			if ($(this).is(':selected')) {
				checkbox.attr("checked", "checked");
				checkbox.parent().addClass("multiselect-on");
			}

			// Highlight checkboxes that the user selects
			checkbox.click(function() {
				if ($(this).attr("checked")) {
					if ($(this).val() == '') {
						$(this).parent().parent().find('.multiselect-on > input').click();
						$(this).parent().parent().find('.multiselect-on').removeClass('multiselect-on');
					}
					$(this).parent().addClass("multiselect-on");
				} else {
					$(this).parent().removeClass("multiselect-on");
				}
			});
		});
		$(this).remove();
	});

	$('#tabs a').click(function() {
		var clicked = $(this);
		var action = $('#form').attr('action');
		action = action.split('&tab=')[0] + '&tab=' + clicked.attr('href').replace('#tab-', '');
		$('#form').attr('action', action);
		$('.button[href]').each(function() {
			var action = $(this).attr('href');
			action = action.split('&tab=')[0] + '&tab=' + clicked.attr('href').replace('#tab-', '');
			$(this).attr('href', action);
		});
	}).tabs();
<?php foreach ($tabs as $tab) { ?>
  <?php if ($tab['subtabs']) { ?>
    $('#vtab-<?php echo $tab['id']; ?> a').tabs();
  <?php } ?>
<?php } ?>
	var tab = getURLVar('tab');
	if (tab) $('a[href="#tab-' + tab + '"]').click();

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script>
<?php echo $footer; ?>

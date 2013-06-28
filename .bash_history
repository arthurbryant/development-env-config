git pull
ls
git log
ls
vim
fg
git status
clear
ls
git status
ga .
gm
git push
ls
git status
git pull
git log
clear
ls
vim
vim db-schema/DB_PCSKIN__pcskin.sql 
git status
ls
vim
fg
vim
ag 
man ag
ag SKIN_DATA .
vim
vim ./lib/Mixi/Skin/Touch.pm
clear
ag SKIN_DATA .
ls
clear
vim
find . -name "home2011"
find . -name "home2011*"
vim
find . -name "home2011*"
vim
ls
git log
git pull
git reset --hard HEAD~2
git log
git reset --hard HEAD~2
git log
git status
vim
git diff
gs
gst
git add .
gm
gst
gb
git remote -v
git push origin -f
git log
ls
clear
ls
clear
vim
ag skin_data .
ag skin_data ./.*/touch/
ag skin_data ./.*/touch/.*
clear
ag skin_data .
vim
cd lib/Mixi/Skin/
ls
clear
ag skin_data .
ag skin_data 
clear
ag skin_data 
vim Touch.pm 
ls -al
git diff Touch.pm
git log Touch.pm
fg
ls
clear
ls
pwd
vim Admin.pm 
ag memcache .
ag cache .
vim Controller/Manage.pm 
git log
git pull
git log
fg
pwd
ls
fg
cd Touch/
ls
vim Admin.pm 
git log
git pull
fg
ls
vim Admin.pm 
ls
cd ..
ls
g
fg
vim
pwd
ls
vim Touch/Admin.pm 
ls
ag skin_data 
ag -i skin_dara
ag -i skin_data
vim Touch.pm 
av -i member_skin
ag -i member_skin
clear
ag MEMBER_SKIN
vim Test.pm 
git diff Test.pm
git log Test.pm
vim Test.pm 
ls
vim Config.pm 
gst
git diff
git diff --color
ag MEMBER_SKIN
vim Touch/Admin.pm 
gst
git add .
gm
git push
git pull --rebase 
git push
git log
ls
cd Touch/
ls
vim Admin.pm 
pwd
ls
cd ..
ls
cd Controller/
ls
vim Manage.pm 
gst
fg
ls
cd ..
ls
vim Admin.pm 
fg
cd git/touch-skin/
script/devel/server  -p 4242
lsof -i:4242
kill -9 28828
kill -9 28830
kill -9 28831
cleaqr
clear
ls
script/devel/server  -p 4242
cd git/
ls
cd javascript/
ls
git clone https://github.com/lamberta/html5-animation.git
ls
cd html5-animation/
ls
cd examples/ch09/
ls
cd ..
ls
cd
ls
cd git/
ls
cd ..
ls
cd mixi/
ls
git status
git log
git checkout .
git status
git remote -v
git checkout .
git status
git clean
git clean -f 
git status
git pull
clear

vim static/js/jp/mixi/featuredcontents/touch/widget/searchform.js 
vim static/js/jp/mixi/featuredcontents/ui/searchform.js 
ls
fg
clear
ls
vim
history
git checkout master
vim static/js/jp/mixi/featuredcontents/ui/searchform.js 
ls
pwd
git log
clear
git log
git branch
vim /home/bkapps/.bashrc-git 
cd
fg
vim .bashrc-git 
cd mixi/
ls
gb
sourc ~/.bashrc
source ~/.bashrc
cd
ls
source .bashrc
cd mixi/
gb
ls
cd
ls
cd git/
ls
cd touch-skin/
ls
gb
clear
git log
clear
ls
cd ..
ls
cd banana/
ls
cd banana/
ls
git status
git remote -v
clear
git remote -v
ls
git status
git diff
git diff --color
vim /home/bkapps/.bashrc
vim /home/bkapps/.bashrc-git 
vim /home/bkapps/.bashrc
source ~/.bashrc-git 
gd
clear
gd
ls
git status
gm
ga .
gm
git status
git pull
git pull origin master
git log
clear
ls
cd views/
ls
百度文库首页|下载客户端|百度首页|登录注册
新闻网页贴吧知道音乐图片视频地图百科文库
 帮助
全部DOCPPTTXTPDFXLS
百度文库专业资料IT/计算机互联网
限时！免财富值下载
由下自上不断上升冒气泡的js特效代码19人阅读
©2013 Baidu 使用百度前必读 | 文库协议
用手机扫此二维码：쎗
以下结果由提供：쎗
百度翻译
百科词条：쎗
百度百科
复制 | 搜索 | 翻译 | 百科 | 分享 | 二维码
文字已复制
分享至：×
 
2 财富值限时！免财富值下载到手机
/3
百度文库客户端
免财富值下载文档点击或扫描下载
由下自上不断上升冒气泡的js 特效代码  <html> <head>  <title>JS实现气泡从水中急速上升效果</title> <style type="text/css"> body {cursor:crosshair;margin:0; padding:0; position:absolute; overflow:hidden;  background:#FFF;left:0; top:0; width:100%; height:100%;} </style>  <script type="text/javascript"> var object = new Array(); nbfm   = 60; var xm = 0; var ym = 9999; var nx = 0; var ny = 0;  function movbulb(){ with (this) { if(ec < 20){  if(Math.abs(x0‐xm) < 100 &&Math.abs(y0‐ym) < 100){ xx = (xm‐x0) / 8; yy = (ym‐y0) / 8; ec++; } } xx *= 0.99; yy *= 0.99;  x0 = Math.round(x0 + Math.cos(y0 / 15) * p) + xx; y0+= yy‐v;  if(y0 <‐h * 2 || x0 <‐w * 2 || x0 > nx + w * 2){ y0 = ny + N + h * 2;  x0 = nx/2‐100 + Math.random() * 100; ec = 0; }  obj.style.top  = y0‐h; obj.style.left = x0‐w; } }
function CObj(N,img,w,h){  this.obj = document.createElement("img"); this.obj.src = img.src;  this.obj.style.position = "absolute"; this.obj.style.left =‐1000;  document.body.appendChild(this.obj); this.N  = N; this.x0 = 0; this.y0 =‐1000;  this.v  = 1 + Math.round((80 / h) * Math.random()); this.p  = 1 + Math.round((w / 8) * Math.random()); this.xx = 0; this.yy = 0; this.ec = 0; this.w  = w; this.h  = h;  this.movbulb = movbulb; }  function resize(){  nx = document.body.offsetWidth; ny = document.body.offsetHeight; }  onresize = resize;  document.onmousemove = function(e){ if (window.event) e = window.event;  xm = document.body.scrollLeft+(e.x || e.clientX); ym = document.body.scrollTop+(e.y || e.clientY); }  function run(){  for(i in object)object[i].movbulb(); setTimeout(run, 16); }  onload = function() {  PIC = document.getElementById("bubbles").getElementsByTagName("img"); resize();  for(nbf=0;nbf<nbfm;nbf++){ sf = PIC[nbf%PIC.length];  object[nbf] = new CObj(nbf,sf,sf.width/2,sf.height/2); } run(); }
</script> </head> <body>  <div id="bubbles" style="visibility:hidden">  <img src="http://bbs.blueidea.com/static/image/smiley/blueidea/smile.gif"> <img src="http://bbs.blueidea.com/static/image/smiley/blueidea/biggrin.gif"> <img src="http://bbs.blueidea.com/static/image/smiley/blueidea/eek.gif"> <img src="http://bbs.blueidea.com/static/image/smiley/blueidea/rolleyes.gif"> </div> </body> </html>
clear
ls
vim bubble.ejs
vim bubble.ejs 
vim /home/bkapps/.vimrc
vim bubble.ejs 
vim ../app.js 
ls
vim bubble.ejs 
ls
cd ..
ls
vim app.js 
ls
cd routes/
ls
cp report.js bubble.js
vim bubble.js 
ls
vim bubble.js 
cd ..
vim views/bubble.ejs 
vim app.js 
vim routes/report.js 
vim views/report.ejs 
clear
ls
vim views/bubble.ejs 
vim routes/bubble.js 
cd views/
ls
mv bubble.ejs bubble.ejs.bak
cp index.ejs bubble.ejs
vim index.ejs 
vim ../app.js 
grep report
grep report . -r
cd ..
grep report . -r
vim views/report.ejs 
clear
ls
vim routes/bubble.js 
cd routes/
ls
vim detail_menu.js 
cd ..
vim app.js 
cd views/
ls
mv bubble.ejs.bak bubble.ejs
vim bubble.ejs 
cat bubble.ejs 
<html>
<head>
<title>JS实现气泡从水中急速上升效果</title> <style type="text/css"> body {cursor:crosshair;margin:1; padding:0; position:absolute; overflow:hidden;  background:#FFF;left:0; top:0; width:100%; height:100%;} </style>  <script type="text/javascript"> var object = new Array(); nbfm   = 60; var xm = 0; var ym = 9999; var nx = 0; var ny = 0;  function movbulb(){ with (this) { if(ec < 20){  if(Math.abs(x0‐xm) < 100 &&Math.abs(y0‐ym) < 100){ xx = (xm‐x0) / 8; yy = (ym‐y0) / 8; ec++; } } xx *= 0.99; yy *= 0.99;  x0 = Math.round(x0 + Math.cos(y0 / 15) * p) + xx; y0+= yy‐v;  if(y0 <‐h * 2 || x0 <‐w * 2 || x0 > nx + w * 2){ y0 = ny + N + h * 2;  x0 = nx/2‐100 + Math.random() * 100; ec = 0; }  obj.style.top  = y0‐h; obj.style.left = x0‐w; } }
function CObj(N,img,w,h){  this.obj = document.createElement("img"); this.obj.src = img.src;  this.obj.style.position = "absolute"; this.obj.style.left =‐1000;  document.body.appendChild(this.obj); this.N  = N; this.x0 = 0; this.y0 =‐1000;  this.v  = 1 + Math.round((80 / h) * Math.random()); this.p  = 1 + Math.round((w / 8) * Math.random()); this.xx = 0; this.yy = 0; this.ec = 0; this.w  = w; this.h  = h;  this.movbulb = movbulb; }  function resize(){  nx = document.body.offsetWidth; ny = document.body.offsetHeight; }  onresize = resize;  document.onmousemove = function(e){ if (window.event) e = window.event;  xm = document.body.scrollLeft+(e.x || e.clientX); ym = document.body.scrollTop+(e.y || e.clientY); }  function run(){  for(i in object)object[i].movbulb(); setTimeout(run, 16); }  onload = function() {  PIC = document.getElementById("bubbles").getElementsByTagName("img"); resize();  for(nbf=0;nbf<nbfm;nbf++){ sf = PIC[nbf%PIC.length];  object[nbf] = new CObj(nbf,sf,sf.width/2,sf.height/2); } run(); }
</script> </head> <body>  <div id="bubbles" style="visibility:hidden">  <img src="http://bbs.blueidea.com/static/image/smiley/blueidea/smile.gif"> <img src="http://bbs.blueidea.com/static/image/smiley/blueidea/biggrin.gif"> <img src="http://bbs.blueidea.com/static/image/smiley/blueidea/eek.gif"> <img src="http://bbs.blueidea.com/static/image/smiley/blueidea/rolleyes.gif"> </div> </body> </html>
clear
fg
vim bubble.ejs 
vim ../app.js 
vim ../routes/iyada.js 
vim iyadamain.ejs 
ls
cd ..
ls
git status
vim lib/db.js 
git diff
git diff --color
git status
ga 
ga .
gm 
ls
git log
clear
ls
git status
cd ..
ls
cd
ls
git status
git add .bashrc-git .vim*
gm
git push
clear
ls
vim README.md 
cd
ls
cd git/sicp/
ls
cd chapter1/
ls
cd part3/
ls
vim sin.scm 
ls
vim power.scm 
vim multiple.scm 
ls
cd ../part4/
ls
s
ls
cd 
ls
cd git/banana/banana/
ls
vim /home/bkapps/.bashrc-git 
source ~/.bashrc-git 
ls
cd
ls
git status
git add .bash* 
gm
git push
cd -
ls
vim app.js 
cd lib/
ls
vim db.js 
fg
vim db.js 
git status
git diff
fg
clear
vim /home/bkapps/.bashrc-git 
gd
git checkout db.js
ls
gst
git log
man git diff
gd c2a221d6
gd  c2a221d601264732df91843494a57876ce077b01
git diff  c2a221d601264732df91843494a57876ce077b01
git diff 0680b2b9bcbdc64803985300cc38be13315ed650
gd 0680b2b9bcbdc64803985300cc38be13315ed650
fg
vim db.js 
ls
cd ..
ls
vim views/iyada/list.ejs 
vim public/javascripts/hot-query.js 
vim public/javascripts/banana.iyada.list.js 
ag db.js
vim lib/db.js 
ag  insertDecidedOrder
ag db 
clear
vim public/javascripts/banana.iyada.list.js 
ag  insertDecidedOrder
vim routes/iyada/list.js 
fg
cd routes/
ls
cd iyada/
ls
cd ../..
fg
vim views/iyada/list.ejs 
fg
av find
ag find
fg
ag  findRestaurant
vim routes/iyada/detail.js 
fg
vim views/iyada/list.ejs 
fg
ls
vim routes/iyada/list.js 
ls
cd public/javascripts/
ls
vim jquery.googleSuggest.js 
cd ..
ls
cd ../routes/
ls
cd iyada/
ls
vim detail.js 
vim list.js 
cd ..
ls
vim report.js 
fg
vim report.js 
fg
rm -rf iyada/bubble.js 
ls
cd ..
vim views/iyada/list.ejs 
cat public/javascripts/show_hot_queries.js 
rm -rf public/javascripts/show_hot_queries.js 
ls
fg
vim routes/iyada/list.js 
ls
condb.sh 
cd git/banana/banana/
vim views/iyada/list.ejs 
vim routes/iyada/list.js 
fg
ls
r(json);
 92                 console.log('err is: ', err );         |   20         }
fg
ls -alt
vim routes/iyada/list.js 
rm -rf routes/iyada/.list.js.swp 
vim routes/iyada/list.js 
vim app.js 
v routes/report.js 
fg
vim routes/iyada/list.js 
vim app.js 
fg
clear
git diff
clear 
gd
fg
gst
git checkout app.js
gd
fg
vim views/iyada/list.ejs 
gd
gst
gd public/javascripts/hot-query.js 
ga .
gm
git log
gl
vim /home/bkapps/.bashrc-git 
clear
ls
fg
exit
ls
cd git/banana/banana/
ls
ls -lst
cd views/
ls
cd iyada/
ls
cd ..
ls
find . -name image
find . -name image -r
find . -name image -R
locate image
locate image .
clear
ls
find . -name iya
find . -name iya*
find . -name image*
cd public/images/
ls
curl http://www.clker.com/cliparts/A/J/g/V/N/d/bubble-sky-blue-md.png
curl -o http://www.clker.com/cliparts/A/J/g/V/N/d/bubble-sky-blue-md.png
man curl
wget http://www.clker.com/cliparts/A/J/g/V/N/d/bubble-sky-blue-md.png
ls
mv bubble-sky-blue-md.png bubble.png
cd ..
ls
clear
cd ..
vim views/iyada/list.ejs 
ls
cd views/
ls
cd iyada/
ls
cd ..
ls
cd ..
vim views/iyada/list.ejs views/test.ejs
cd views/
cp iyada/list.ejs test.ejs
vim test.ejs 
cd ..
npm install csslint
pwd
ls
cd node_modules/
ls
cd ..
npm uninstall csslint
cd
ls
npm install csslint
ls
cd node_modules/
l
ls
ls .bin
cd ..
cd -
cd ../git/banana/banana/
fg
vim /home/bkapps/.vimrc
fg
vim public/stylesheets/banana.css 
vim /home/bkapps/.vimrc
fg
vim /home/bkapps/.vimrc
vim public/stylesheets/banana.css 
vim /home/bkapps/.vimrc
fg
ls
fg
exit
gpl
cd git/touch-skin/
script/devel/server -p 4242
lsof -i:4242
kill -9 32546
lsof -i:4242
kill -9 32548
kill -9 32549
script/devel/server -p 4242
ls
vim /home/bkapps/.vimrc
gst
ga .bash* .vim*
gm 
git push
clear
vim .bashrc-git 
clear
ls
cd git/touch-skin/
ls
vim /home/bkapps/.bashrc-git 
source ~/.bashrc-git 
gpl
git lg
git log
gl
clear
ls
clear
gl
cd lib/Mixi/Skin/
ls
vim Admin.pm 
cd Touch/
ls
cd ..
vim Touch.pm 
ls
ag get_member_skin
vim Touch.pm 
fg
find . -name mixi_skin.pm
find . -name mixi_skin.pm -r
cd ..
vim
vim lib/Mixi/Skin.pm 
fg
vim lib/Mixi/Skin.pm 
vim /home/bkapps/.vimrc
fg
cd lib/Mixi/Skin/
ag cache
fg
cd ../..
ls
cd ..
ag delete_cached 
ag delete_cached  lib/Mixi/Skin
ag delete_cached  lib/Mixi/Skin.pm
gst
ga .
gm
gps
clear
ls
vim /home/bkapps/bin/condb.sh 
ls
cd lib/Mixi/Skin/
ls
cd ..
ls
cd Skin/n
cd Skin/
ls
vim 
cd -
ls
ag staging
pwd
cd ../..
ls
clear
ag lib/Mixi/Skin
ag staging lib/Mixi/Skin
vim lib/Mixi/Skin/Touch/Admin.pm
vim lib/Mixi/Skin/Admin.pm 
git log
gpl
gst
ls
fg
ls
cd lib/Mixi/Mobile2/
ls
ag money 
cd Carrier/
ls
cd ..
cd ../../..
ls
vim
gpl
clear
ls
gl
ag touch_skin_status_db
ag -i touch_skin_status_db
cd lib/Mixi/Skin/
vim Config.pm 
vim Touch/DB/Skin.pm 
ag -i skin_status_db
clear
ag -i skin_type
vim Touch.pm 
ls
vim DB.pm 
vim DB/Skin.pm 
pwd
vim Touch/DB/Skin.pm 
ls
vim Config.pm 
ag TOUCH_SKIN_STATUS_DB
ag TOUCH_SKIN_STATUS_DB ../../
gst
ga .
gm
gpu
gps
ls
fg
vim
locate edit_skin.tmpl
v /home/bkapps/git/touch-skin/boofy/tmpl/skin/touch/edit_skin.tmpl
cd ../..
cd ..
vim db-schema/DB_TOUCHSKIN__touchskin.sql 
gst
gd
ls
gst
gd boofy/tmpl/skin/touch/skin_form_parts.tmpl
ga boofy/tmpl/skin/touch/skin_form_parts.tmpl
gm
gps
gst
ga .
gm
gps
git log
clear
vim /home/bkapps/.bashrc-git 
cl
source /home/bkapps/.bashrc-git 
cl
cd lib/Mixi/Skin/
ls
vim DB.pm 
cd DB/
ls
vim Skin.pm 
cd ../Touch/DB
ls
vim Skin.pm 
ls
vim ../DB/Skin.pm 
fg
gst
ga 
ga .
gm
gps
ls
fg
vim
ls
gpl
ls
condb.sh 
cd git/touch-skin/
ls
vim db-schema/DB_TOUCHSKIN_touchskin.sql 
ls
ag type2color
ls
gb
gst
gpl
gl
ls
gb
git checkout COREDEVSOCIAL-429_manager__develop 
git fetch
gpl
gl
clear
ag type2color
ag type2
clear
ag -i type2color
vim lib/Mixi/Skin/Touch/Style.pm 
ag -i is_softlaunch
clear
ag touch_re
ag is_touch_re
clear
ag touch_re_after
vim ./lib/Mixi/News/Controller.pm
clear
ag touch_re_after
ag touch_re_after | ag touch
ag -i is_softlaunch_activated
vim lib/Mixi
vim ./lib/Mixi/Template/Role/SoftLaunch.pm
ag touch_re_after
v 
clear
v 
vim
clear
ag touch_re_after
fg
vim 
gst
gd
gst
fg
vim
gd
gst
ga lib/Mixi/Skin/Touch/Style.pm
gm
gst
ga .
gm
gps
gl
gc --amend
gm --amend
gsh
gps
gl
ls
gst
gl
gst
git reset --hard origin/COREDEVSOCIAL-429_manager__develop
gl
gst
ag ピンク
vim 
ag -i touch_skin_color
ag -i skin_color
ag SKIN_COLOR
vim 
gst
ga .
gm
gps
find . -name home*
find . -name home* -r
clear
locate home2011*
find . -name home*
find . -name home.*
find . -name "home"
find . -name "home2011"
find . -name "home.*"
find . -name "home.\*"
find . -name "home*"
find . -name "home2*"
clear
pwd
gpl
vim db-schema/DB_TOUCHSKIN__touchskin.sql 
clear
ls
vim db-schema/DB_TOUCHSKIN__touchskin.sql 
 -name *skin*
gst
gpl
find . -name home20*
vim static/css/smartphone/touch/home2013.css 
vim static/css/smartphone/touch/home2011.css 
fg
lsof -i:4242
kill -9 22048
kill -9 22050
kill -9 22051
cd git/touch-skin/
script/devel/server -p 4242
]
script/devel/server -p 4242
ls
cd git/touch-skin/
ls
gpl
gl
clear
ls
vim db-schema/DB_TOUCHSKIN__touchskin.sql 
cd 
ls
vim /home/bkapps/.vimrc
fg
ls
cd git/
ls
cd touch-skin/
ls
cd lib/Mixi/Skin/
ls
vim Test.pm 
cd -
ag _get_editing_skin_version
fg
ag "::Test"
cd -
ag "::Test"
vim Touch.pm 
vim Test.pm 
fg
vim Touch.pm 
pwd
fg
vim Test.pm 
vim
ls
cd Touch/
ls
vim Admin.pm 
ls
cd ..
ls
cd Touch/
ls
vim Admin.pm 
ls
cd ..
vim Touch
ls
vim Touch.pm 
ag _get_skin
vim Touch/Admin.pm 
ag get_skin
fg
gl
gf
gd
gst
gd
ls
go Test.pm 
cd -
gst
ga .
gm
cat ~/.bashrc-git 
gm
cd ../..
ls
cd ..
ls
cd ..
gst
ga .
gm
gps
fg
gpl
gl

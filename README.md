## 解决 Troubolinks 带来的麻烦

### 解法 A

将原先全部的

```
$(document).ready(function(){
...
})
```

或

```
$(function(){
...
})
```

全部都要改

```
$(document).on("turbolinks:load", function(){
...
})
```


### 解法 B

```
<meta name="turbolinks-cache-control" content="no-cache">
```

放到 layout 的 head 里面。

### 解法 C
把layout 的 `<body>` 改成

`<body id="<%= "#{controller_name}-#{action_name}"%>">`

这样就可以在全局载入的application.js 中指定只有这一页才执行的js code，例如：

```
$(document).on("turbolinks:load", function() {
  if ( $("#products-show").length > 0 ) {
    console.log("product-show");
  }
})
```


## Asset Pipeline 好处

1. 方便装 gem (Ruby的库) 进行管理，不需要将 gem 里面的静态档案也搬进 public 目录下搅在一起。
2. 上 production 部署时，会打包压缩成为一个档案，加速浏览器下载
3. 档名会有 fingerprint，一但内容有修改就会变动，避免浏览器缓存，让用户总是访问到最新的档案
4. pre-processing 功能: Sass 和 CoffeeScript，可以用其他语言写 CSS 和 JavaScript。

## 三个Jquery小插件
1.   [Autosize (将输入框依照行数改变高度)](http://www.jacklmoore.com/autosize/)
2.   [Countdown (倒数计时)](http://hilios.github.io/jQuery.countdown/)
3. [WoW(淡入淡出动画特效)](https://github.com/matthieua/WOW)

## 5/29 Nic-live

## 可参考网站:
* [Rails Cast](http://railscasts.com/): Gem的使用方法。[比较新的更新放在Youtube](https://www.youtube.com/user/RailscastsReloaded)


* [RubyFlow](http://www.rubyflow.com/): Rails的社群，可以看一下这边的讨论


* [GoRails](https://gorails.com/): 知识点的视频解说

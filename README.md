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


## Asset Pipeline 好处

1. 方便装 gem (Ruby的库) 进行管理，不需要将 gem 里面的静态档案也搬进 public 目录下搅在一起。
2. 上 production 部署时，会打包压缩成为一个档案，加速浏览器下载
3. 档名会有 fingerprint，一但内容有修改就会变动，避免浏览器缓存，让用户总是访问到最新的档案
4. pre-processing 功能: Sass 和 CoffeeScript，可以用其他语言写 CSS 和 JavaScript。

## 三个Jquery小插件
1.  Autosize (将输入框依照行数改变高度)
2.  Countdown (倒数计时)
3. WoW(淡入淡出动画特效)


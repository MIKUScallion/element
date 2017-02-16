<style>
  .demo-typo-box {
    height: 200px;
    width: 200px;
    position: relative;
    border: 1px solid #eaeefb;
    font-size: 40px;
    color: #1f2d3d;
    text-align: center;
    line-height: 162px;
    padding-bottom: 36px;
    box-sizing: border-box;
    display: inline-block;
    margin-right: 17px;
    border-radius: 4px;

    .name {
      position: absolute;
      bottom: 0;
      width: 100%;
      height: 35px;
      border-top: 1px solid #eaeefb;
      font-size: 14px;
      color: #8492a6;
      line-height: 35px;
      text-align: left;
      text-indent: 10px;
      font-family: 'Helvetica Neue';
    }
  }
  .demo-typo-size {
    .h1 {
      font-size: 20px;
    }
    .h2 {
      font-size: 16px;
    }
    .h3 {
      font-size: 14px;
    }
    .h4 {
      font-size: 12px;
    }
    .color-dark-light {
      color: #99a9bf;
    }
  }
  .typo-PingFang {
    font-family: 'PingFang SC';
  }
  .typo-Hiragino {
    font-family: 'Hiragino Sans GB';
  }
  .typo-Microsoft {
    font-family: 'Microsoft YaHei';
  }
  /* 英文 */
  .typo-Helvetica-Neue {
    font-family: 'Helvetica Neue';
  }
  .typo-Helvetica {
    font-family: 'Helvetica';
  }
  .typo-Arial {
    font-family: 'Arial';
  }
</style>

## Typography 字体

我们对字体进行统一规范，力求在各个操作系统下都有最佳展示效果。

### 中文字体

<div class="demo-typo-box typo-Microsoft">
  和畅惠风
  <div class="name">Microsoft YaHei</div>
</div>
<div class="demo-typo-box typo-PingFang">
  和畅惠风
  <div class="name">PingFang SC</div>
</div>
<div class="demo-typo-box typo-Hiragino">
  和畅惠风
  <div class="name">Hiragino Sans GB</div>
</div>

### 英文／数字字体

<div class="demo-typo-box typo-Helvetica-neue">
  RGag
  <div class="name">Helvetica Neue</div>
</div>
<div class="demo-typo-box typo-Helvetica">
  RGag
  <div class="name">Helvetica</div>
</div>
<div class="demo-typo-box typo-Arial">
  RGag
  <div class="name">Arial</div>
</div>

### Font-family 代码

```css
font-family: "Helvetica Neue",Helvetica,Arial,"Microsoft YaHei","微软雅黑","PingFang SC","Hiragino Sans GB",sans-serif;
```

### 字体使用规范

<table class="demo-typo-size">
  <tbody>
    <tr>
      <td class="h1">Extra Large</td>
      <td class="h1">我是超级大号字体</td>
      <td class="color-dark-light">20px Extra large</td>
    </tr>
    <tr>
      <td class="h2">Large</td>
      <td class="h2">我是大号字体</td>
      <td class="color-dark-light">16px Large</td>
    </tr>
    <tr>
      <td class="h3">Normal</td>
      <td class="h3">我是普通字体</td>
      <td class="color-dark-light">14px Normal</td>
    </tr>
    <tr>
      <td class="h4">Small</td>
      <td class="h4">我是小号字体</td>
      <td class="color-dark-light">12px Small</td>
    </tr>
  </tbody>
</table>

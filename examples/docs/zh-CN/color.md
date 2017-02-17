<style>
  .demo-color-box {
    border-radius: 4px;
    padding: 20px;
    height: 74px;
    box-sizing: border-box;
    color: #fff;
    font-size: 14px;

    & .value {
      font-size: 12px;
      opacity: 0.69;
      line-height: 24px;
    }
  }
  .demo-color-box-group {
    .demo-color-box {
      border-radius: 0;
    }
    .demo-color-box:first-child {
      border-radius: 4px 4px 0 0;
    }
    .demo-color-box:last-child {
      border-radius: 0 0 4px 4px;
    }
  }

  .bg-primary-light {
    background-color: #4ba5d7;
  }
  .bg-primary {
    background-color: #2a92f4;
  }
  .bg-primary-dark {
    background-color: #2981d4;
  }

  .bg-success {
    background-color: #2a92f4;
  }
  .bg-warning {
    background-color: #ffb451;
  }
  .bg-danger {
    background-color: #fa0223;
  }
  .bg-info {
    background-color: #2a92f4;
  }
  .bg-up {
    background-color: #df2424;
  }
  .bg-down {
    background-color: #1bce5d;
  }
  .bg-average {
    background-color: #ff8600;
  }

  .bg-base-black {
    background-color: #000000;
  }
  .bg-base-white {
    background-color: #ffffff;
  }

  .bg-black {
    background-color: #1f2b3d;
  }
  .bg-black-light {
    background-color: #323e57;
  }
  .bg-black-lighter {
    background-color: #48556a;
  }

  .bg-silver {
    background-color: #8393a5;
  }
  .bg-silver-light {
    background-color: #b6bbc3;
  }
  .bg-silver-lighter {
    background-color: #d1d6e0;
  }

  .bg-gray {
    background-color: #e4e7f1;
  }
  .bg-gray-light {
    background-color: #e6eff8;
  }
  .bg-gray-lighter {
    background-color: #eef1f6;
  }

  .bg-white-dark {
    background-color: #f5f6f8;
  }

  .bg-local-disabled-primary {
    background-color: #c9dcf4;
  }

  .color-gray {
    color: #5e6d82;
  }
</style>

## Color 色彩

Element 为了避免视觉传达差异，使用一套特定的调色板来规定颜色，为你所搭建的产品提供一致的外观视觉感受。

### 主色

Element 主要品牌颜色是鲜艳、友好的蓝色。

<el-row :gutter="12">
  <el-col :span="8">
    <div class="demo-color-box bg-primary-light">Light Primary<div class="value">#4ba5d7</div></div>
  </el-col>
  <el-col :span="8">
    <div class="demo-color-box bg-primary">Primary<div class="value">#2a92f4</div></div>
  </el-col>
  <el-col :span="8">
    <div class="demo-color-box bg-primary-dark">Dark Primary<div class="value">#2981d4</div></div>
  </el-col>
</el-row>

### 辅助色

除了主色外的场景色，需要在不同的场景中使用（例如危险色表示危险的操作）。

<el-row :gutter="12" style="margin-bottom: 5px;">
  <el-col :span="6">
    <div class="demo-color-box bg-success">Success<div class="value">#2a92f4</div></div>
  </el-col>
  <el-col :span="6">
    <div class="demo-color-box bg-warning">Warning<div class="value">#ffb451</div></div>
  </el-col>
  <el-col :span="6">
    <div class="demo-color-box bg-danger">Danger<div class="value">#fa0223</div></div>
  </el-col>
</el-row>
<el-row :gutter="12">
  <el-col :span="6">
    <div class="demo-color-box bg-info">Info<div class="value">#2a92f4</div></div>
  </el-col>
  <el-col :span="6">
    <div class="demo-color-box bg-up">Up<div class="value">#df2424</div></div>
  </el-col>
  <el-col :span="6">
    <div class="demo-color-box bg-down">Down<div class="value">#1bce5d</div></div>
  </el-col>
  <el-col :span="6">
    <div class="demo-color-box bg-average">Average<div class="value">#ff8600</div></div>
  </el-col>
</el-row>

### 中性色

中性色用于文本、背景和边框颜色。通过运用不同的中性色，来表现层次结构。

<el-row :gutter="12" style="margin-bottom: 5px;">
  <el-col :span="6">
    <div class="demo-color-box bg-base-black">Base Black<div class="value">#000000</div></div>
  </el-col>
  <el-col :span="6">
    <div class="demo-color-box color-gray bg-base-white" style="border: 1px solid rgb(224, 230, 237);">Base White<div class="value">#ffffff</div></div>
  </el-col>
</el-row>
<el-row :gutter="12" style="margin-bottom: 5px;">
  <el-col :span="6">
    <div class="demo-color-box-group">
      <div class="demo-color-box bg-black">Black<div class="value">#1f2b3d</div></div>
      <div class="demo-color-box bg-black-light">Light Black<div class="value">#323e57</div></div>
      <div class="demo-color-box bg-black-lighter">Extra Light Black<div class="value">#48556a</div></div>
    </div>
  </el-col>
  <el-col :span="6">
    <div class="demo-color-box-group">
      <div class="demo-color-box bg-silver">Silver<div class="value">#8393a5</div></div>
      <div class="demo-color-box bg-silver-light">Light Silver<div class="value">#b6bbc3</div></div>
      <div class="demo-color-box bg-silver-lighter">Extra Light Silver<div class="value">#d1d6e0</div></div>
    </div>
  </el-col>
  <el-col :span="6">
    <div class="demo-color-box-group">
      <div class="demo-color-box color-gray bg-gray">Gray<div class="value">#e4e7f1</div></div>
      <div class="demo-color-box color-gray bg-gray-light">Light Gray<div class="value">#e6eff8</div></div>
      <div class="demo-color-box color-gray bg-gray-lighter">Extra Light Gray<div class="value">#eef1f6</div></div>
    </div>
  </el-col>
</el-row>
<el-row :gutter="12">
  <el-col :span="6">
    <div class="demo-color-box color-gray bg-dark-white" style="border: 1px solid rgb(224, 230, 237);">Dark White<div class="value">#f5f6f8</div></div>
  </el-col>
</el-row>

### 特殊颜色

为了满足特殊需求的颜色

<el-row :gutter="12">
  <el-col :span="6">
    <div class="demo-color-box color-gray bg-local-disabled-primary">Local Disabled Primary<div class="value">#c9dcf4</div></div>
  </el-col>
</el-row>

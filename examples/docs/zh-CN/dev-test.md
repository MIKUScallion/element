<script>
  export default {
    data() {
      return {
        d1Select: '',
        d1Input: '',

        d2Options: [{
          value: '选项1',
          label: '黄金糕'
        }, {
          value: '选项2',
          label: '双皮奶'
        }, {
          value: '选项3',
          label: '蚵仔煎'
        }, {
          value: '选项4',
          label: '龙须面'
        }, {
          value: '选项5',
          label: '北京烤鸭'
        }],
        d2Value: ''
      };
    }
  };
</script>
## 开发测试

## Input 输入框

### 复合型输入框

发光效果需要优化

::: demo 可通过 slot 来指定在 input 中前置或者后置内容。
```html
<div>
  <el-input placeholder="请输入内容" v-model="d1Input">
    <el-select style="width: 110px;" v-model="d1Select" slot="prepend" placeholder="请选择">
      <el-option label="餐厅名" value="1"></el-option>
      <el-option label="订单号" value="2"></el-option>
      <el-option label="用户电话" value="3"></el-option>
    </el-select>
    <el-button slot="append" icon="search"></el-button>
  </el-input>
</div>
<script>
  export default {
    data() {
      return {
        d1Select: '',
        d1Input: ''
      };
    }
  };
</script>
```
:::

## Select 选择器

### 基础用法

点击图标的交互需要优化

:::demo `v-model`的值为当前被选中的`el-option`的 value 属性值
```html
<template>
  <el-select v-model="d2Value" placeholder="请选择">
    <el-option
      v-for="item in d2Options"
      :label="item.label"
      :value="item.value">
    </el-option>
  </el-select>
</template>

<script>
  export default {
    data() {
      return {
        d2Options: [{
          value: '选项1',
          label: '黄金糕'
        }, {
          value: '选项2',
          label: '双皮奶'
        }, {
          value: '选项3',
          label: '蚵仔煎'
        }, {
          value: '选项4',
          label: '龙须面'
        }, {
          value: '选项5',
          label: '北京烤鸭'
        }],
        d2Value: ''
      }
    }
  }
</script>
```
:::

## 其他

[贡献文档](https://github.com/ElemeFE/element/blob/dev/.github/CONTRIBUTING.zh-CN.md)

### 代码中依赖的项目

[gemini-scrollbar](https://github.com/noeldelgado/gemini-scrollbar)

[javascript-detect-element-resize](https://github.com/sdecima/javascript-detect-element-resize)

### 衍生工具

[element-color](https://mikuscallion.github.io/element-color/)

### 改造完成

#### Base

* Color 色彩
* Typography 字体
* Icon 图标
* Button 按钮


#### Form

* Radio 单选框
* Checkbox 多选框
* Input 输入框
* InputNumber 计数器
* Select 选择器
* Switch 开关
* Slider 滑块

#### Data

* Table 表格

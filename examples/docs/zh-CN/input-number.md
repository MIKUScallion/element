<script>
  export default {
    data() {
      return {
        num1: 1,
        num2: 1,
        num3: 5,
        num4: 1,
        num5: 1,
        num6: 1,
        customNum: null
      }
    },
    methods: {
      handleChange(value) {
        console.log(value);
      },
      increase () {
        this.customNum++
      },
      decrease () {
        this.customNum--
      }
    }
  };
</script>
<style>
  .demo-box.demo-input-number {
    .el-input-number + .el-input-number {
      margin-left: 10px;
    }
  }
</style>

## InputNumber 计数器

仅允许输入标准的数字值，可定义范围

### 基础用法

:::demo 要使用它，只需要在`el-input-number`元素中使用`v-model`绑定变量即可，变量的初始值即为默认值。
```html
<template>
  <div style="margin-bottom: 10px;">
    <el-input-number v-model="num1" @change="handleChange" :min="1" :max="10"></el-input-number>
  </div>

  <el-input-number align="center" :both-side="true" v-model="num1" @change="handleChange" :min="1" :max="10"></el-input-number>
</template>
<script>
  export default {
    data() {
      return {
        num1: 1
      };
    },
    methods: {
      handleChange(value) {
        console.log(value);
      }
    }
  };
</script>
```
:::

### 禁用状态

:::demo `disabled`属性接受一个`Boolean`，设置为`true`即可禁用整个组件，如果你只需要控制数值在某一范围内，可以设置`min`属性和`max`属性，不设置`min`和`max`时，最小值为 0。

```html
<template>
  <el-input-number v-model="num2" :disabled="true"></el-input-number>
</template>
<script>
  export default {
    data() {
      return {
        num2: 1
      }
    }
  };
</script>
```
:::

### 步数

允许定义递增递减的步数控制

:::demo 设置`step`属性可以控制步长，接受一个`Number`。

```html
<template>
  <el-input-number v-model="num3" :step="2"></el-input-number>
</template>
<script>
  export default {
    data() {
      return {
        num3: 5
      }
    }
  };
</script>
```
:::

### 完全自定义控制

:::demo

```html
<template>
  <el-input-number placeholder="完全自定义控制" custom-control @increase="increase" @decrease="decrease" v-model="customNum === 0 ? null : customNum"></el-input-number>
</template>
<script>
  export default {
    data() {
      return {
        customNum: 0
      }
    }
  };
</script>
```
:::

### 尺寸

额外提供了 `extra large`、`large` 两种尺寸的数字输入框

:::demo

```html
<template>
  <el-input-number size="extraLarge" v-model="num4"></el-input-number>
  <el-input-number size="large" v-model="num5"></el-input-number>
  <el-input-number   v-model="num6"></el-input-number>
</template>
<script>
  export default {
    data() {
      return {
        num4: 1,
        num5: 1,
        num6: 1
      }
    }
  };
</script>
```
:::

### Attributes
| 参数      | 说明          | 类型      | 可选值                           | 默认值  |
|----------|-------------- |----------|--------------------------------  |-------- |
| value    | 绑定值         | number | — | — |
| min      | 设置计数器允许的最小值 | number | — | 0 |
| max      | 设置计数器允许的最大值 | number | — | Infinity |
| step     | 计数器步长           | number   | — | 1 |
| size     | 计数器尺寸           | string   | large, small | — |
| disabled | 是否禁用计数器        | boolean | — | false |
| controls | 是否使用控制按钮        | boolean | — | true |
| both-side | 是否把控制按钮放置在两边        | boolean | — | false |
| algin | 内容对齐方式        | string | — | left, center, right |
| custom-control | 完全自定义控制        | boolean | — | false |
| custom-min-disabled | 自定义控制添加按钮禁用        | boolean | — | false |
| custom-max-disabled | 自定义控制减少按钮禁用       | boolean | — | false |
| placeholder   | 输入框占位文本   | string          | — | — |
| show-placeholder | 强制显示 placeholder        | boolean | — | false |

### Events
| 事件名称 | 说明 | 回调参数 |
|---------|--------|---------|
| change | 绑定值被改变时触发 | 最后变更的值 |
| increase | 添加时触发 | 事件句柄 |
| decrease | 减少时触发 | 事件句柄 |

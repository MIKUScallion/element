<script>
  export default {
    data() {
      return {
        tableData: [{
          date: '2016-05-03',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333,
          tag: '家'
        }, {
          date: '2016-05-02',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333,
          tag: '公司'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333,
          tag: '家'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333,
          tag: '公司'
        }],
        tableData2: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄',
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄',
          $info: true
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄',
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄',
          $positive: true
        }],
        tableData3: [{
          date: '2016-05-03',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-02',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-04',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-01',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-08',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-06',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-07',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }],
        tableData4: [{
          date: '2016-05-03',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-02',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-04',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-01',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-08',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-06',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-07',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }],
        currentRow: null,
        multipleSelection: []
      };
    },

    methods: {
      handleClick() {
        console.log('click');
      },

      handleEdit(index, row) {
        console.log(index, row);
      },

      handleDelete(index, row) {
        console.log(index, row);
      },

      handleSelectionChange(val) {
        this.multipleSelection = val;
      },

      handleCurrentChange(val) {
        this.currentRow = val;
      },

      formatter(row, column) {
        return row.address;
      },

      filterTag(value, row) {
        return row.tag === value;
      },

      tableRowClassName(row, index) {
        if (index === 1) {
          return 'info-row';
        }
        return '';
      },

      deleteRow(index, rows) {
        rows.splice(index, 1);
      },

      onSortChange (ev) {
        console.log(ev)
      }
    },

    watch: {
      multipleSelection(val) {
        console.log('selection: ', val);
      }
    }
  };
</script>

<style>
  .el-table .info-row, .el-table .info-row:hover > td {
    background: #2a92f4;
    color: white;
  }

  .demo-table .name-wrapper {
    display: inline-block;
  }

  .el-table .sort-icon {
    font-size: 12px;
    position: absolute;
    color: #b6bbc3;
  }
  .el-table .sort-icon.ascending {
    top: 7px;
  }
  .el-table .sort-icon.descending {
    bottom: 5px;
  }
  .el-table .ascending .sort-icon.ascending {
    color: #48556a;
  }
  .el-table .descending .sort-icon.descending {
    color: #48556a;
  }
</style>

## Table 表格

用于展示多条结构类似的数据，可对数据进行排序、筛选、对比或其他自定义操作。

### 基础表格

基础的表格展示用法。

:::demo 当`el-table`元素中注入`data`对象数组后，在`el-table-column`中用`prop`属性来对应对象中的键名即可填入数据，用`label`属性来定义表格的列名。可以使用`width`属性来定义列宽。
```html
  <template>
    <el-table
      :data="tableData"
      style="width: 100%">
      <el-table-column
        prop="date"
        label="日期"
        width="180">
      </el-table-column>
      <el-table-column
        prop="name"
        label="姓名"
        width="180">
      </el-table-column>
      <el-table-column
        prop="address"
        label="地址">
      </el-table-column>
    </el-table>
  </template>

  <script>
    export default {
      data() {
        return {
          tableData: [{
            date: '2016-05-02',
            name: '王小虎',
            address: '上海市普陀区金沙江路 1518 弄'
          }, {
            date: '2016-05-04',
            name: '王小虎',
            address: '上海市普陀区金沙江路 1517 弄'
          }, {
            date: '2016-05-01',
            name: '王小虎',
            address: '上海市普陀区金沙江路 1519 弄'
          }, {
            date: '2016-05-03',
            name: '王小虎',
            address: '上海市普陀区金沙江路 1516 弄'
          }]
        }
      }
    }
  </script>
```
:::

### 带斑马纹表格

使用带斑马纹的表格，可以更容易区分出不同行的数据。

:::demo `stripe`属性可以创建带斑马纹的表格。它接受一个`Boolean`，默认为`false`，设置为`true`即为启用。
```html
<template>
  <el-table
    :data="tableData"
    stripe
    style="width: 100%">
    <el-table-column
      prop="date"
      label="日期"
      width="180">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="180">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址">
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1517 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1519 弄'
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1516 弄'
        }]
      }
    }
  }
</script>
```
:::

### 带边框表格

#### 竖向边框

:::demo 默认情况下，Table 组件是不具有竖直方向的边框的，如果需要，可以使用`col-border`属性，它接受一个`Boolean`，设置为`true`即可启用。
```html
<template>
  <el-table
    :data="tableData"
    col-border
    style="width: 100%">
    <el-table-column
      prop="date"
      label="日期"
      width="180">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="180">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址">
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1517 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1519 弄'
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1516 弄'
        }]
      }
    }
  }
</script>
```
:::

#### 去除横向边框和外围边框

:::demo 默认情况下，Table 组件是具有横向边框和外围边框的，可以指定`row-border`和`border`属性为`false`去除。
```html
<template>
  <el-table
    :data="tableData"
    :border="false"
    :row-border="false"
    style="width: 100%">
    <el-table-column
      prop="date"
      label="日期"
      width="180">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="180">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址">
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1517 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1519 弄'
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1516 弄'
        }]
      }
    }
  }
</script>
```
:::

### 带状态表格（ 为某些行添加特定的类 ）

:::demo 可以通过指定 Table 组件的 `row-class-name` 属性来为 Table 中的某一行添加 class，常常用来表明该行处于某种状态。
```html
<template>
  <el-table
    :data="tableData2"
    style="width: 100%"
    :row-class-name="tableRowClassName">
    <el-table-column
      prop="date"
      label="日期"
      width="180">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="180">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址">
    </el-table-column>
  </el-table>
</template>

<style>
  .el-table .info-row, .el-table .info-row:hover > td {
    background: #2a92f4;
    color: white;
  }
</style>

<script>
  export default {
    methods: {
      tableRowClassName(row, index) {
        if (index === 1) {
          return 'info-row';
        }
        return '';
      }
    },
    data() {
      return {
        tableData2: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄',
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄',
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }]
      }
    }
  }
</script>
```
:::

### 固定表头

纵向内容过多时，可选择固定表头。

:::demo 只要在`el-table`元素中定义了`height`属性，即可实现固定表头的表格，而不需要额外的代码。
```html
<template>
  <el-table
    :data="tableData3"
    height="250"
    col-border
    style="width: 100%">
    <el-table-column
      prop="date"
      label="日期"
      width="180">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="180">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址">
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData3: [{
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-08',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-06',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-07',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }]
      }
    }
  }
</script>
```
:::

### 固定列

横向内容过多时，可选择固定列。

:::demo 固定列需要使用`fixed`属性，它接受 Boolean 值或者`left` `right`，表示左边固定还是右边固定。
```html
<template>
  <el-table
    :data="tableData"
    col-border
    style="width: 100%">
    <el-table-column
      fixed
      prop="date"
      label="日期"
      width="150">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="120">
    </el-table-column>
    <el-table-column
      prop="province"
      label="省份"
      width="120">
    </el-table-column>
    <el-table-column
      prop="city"
      label="市区"
      width="120">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址"
      width="300">
    </el-table-column>
    <el-table-column
      prop="zip"
      label="邮编"
      width="120">
    </el-table-column>
    <el-table-column
      fixed="right"
      label="操作"
      width="100">
      <template scope="scope">
        <el-button @click="handleClick" type="text" size="small">查看</el-button>
        <el-button type="text" size="small">编辑</el-button>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    methods: {
      handleClick() {
        console.log(1);
      }
    },

    data() {
      return {
        tableData: [{
          date: '2016-05-03',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-02',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-04',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-01',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }]
      }
    }
  }
</script>
```
:::

### 固定列和表头

横纵内容过多时，可选择固定列和表头。

:::demo 固定列和表头可以同时使用，只需要将上述两个属性分别设置好即可。
```html
<template>
  <el-table
    :data="tableData3"
    col-border
    style="width: 100%"
    height="250">
    <el-table-column
      fixed
      prop="date"
      label="日期"
      width="150">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="120">
    </el-table-column>
    <el-table-column
      prop="province"
      label="省份"
      width="120">
    </el-table-column>
    <el-table-column
      prop="city"
      label="市区"
      width="120">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址"
      width="300">
    </el-table-column>
    <el-table-column
      prop="zip"
      label="邮编"
      width="120">
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData3: [{
          date: '2016-05-03',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-02',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-04',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-01',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-08',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-06',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-07',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }]
      }
    }
  }
</script>
```
:::

### 流体高度

当数据量动态变化时，可以为 Table 设置一个最大高度。

:::demo 通过设置`max-height`属性为 Table 指定最大高度。此时若表格所需的高度大于最大高度，则会显示一个滚动条。
```html
<template>
  <el-table
    :data="tableData4"
    col-border
    style="width: 100%"
    max-height="250">
    <el-table-column
      fixed
      prop="date"
      label="日期"
      width="150">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="120">
    </el-table-column>
    <el-table-column
      prop="province"
      label="省份"
      width="120">
    </el-table-column>
    <el-table-column
      prop="city"
      label="市区"
      width="120">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址"
      width="300">
    </el-table-column>
    <el-table-column
      prop="zip"
      label="邮编"
      width="120">
    </el-table-column>
    <el-table-column
      fixed="right"
      label="操作"
      width="120">
      <template scope="scope">
        <el-button
          @click.native.prevent="deleteRow(scope.$index, tableData4)"
          type="text"
          size="small">
          移除
        </el-button>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    methods: {
      deleteRow(index, rows) {
        rows.splice(index, 1);
      }
    },
    data() {
      return {
        tableData4: [{
          date: '2016-05-03',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-02',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-04',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-01',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-08',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-06',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-07',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }]
      }
    }
  }
</script>
```
:::

### 多级表头

数据结构比较复杂的时候，可使用多级表头来展现数据的层次关系。

:::demo 只需要在 el-table-column 里面嵌套 el-table-column，就可以实现多级表头。
```html
<template>
  <el-table
    :data="tableData3"
    col-border
    style="width: 100%">
    <el-table-column
      prop="date"
      label="日期"
      width="150">
    </el-table-column>
    <el-table-column label="配送信息">
      <el-table-column
        prop="name"
        label="姓名"
        width="120">
      </el-table-column>
      <el-table-column label="地址">
        <el-table-column
          prop="province"
          label="省份"
          width="120">
        </el-table-column>
        <el-table-column
          prop="city"
          label="市区"
          width="120">
        </el-table-column>
        <el-table-column
          prop="address"
          label="地址"
          width="300">
        </el-table-column>
        <el-table-column
          prop="zip"
          label="邮编"
          width="120">
        </el-table-column>
      </el-table-column>
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData3: [{
          date: '2016-05-03',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-02',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-04',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-01',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-08',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-06',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-07',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          zip: 200333
        }]
      }
    }
  }
</script>
```
:::

### 单选

选择单行数据时使用色块表示。

:::demo Table 组件提供了单选的支持，只需要配置`highlight-current-row`属性即可实现单选。之后由`current-change`事件来管理选中时触发的事件，它会传入`currentRow`，`oldCurrentRow`。如果需要显示索引，可以增加一列`el-table-column`，设置`type`属性为`index`即可显示从 1 开始的索引号。
```html
<template>
  <el-table
    :data="tableData"
    highlight-current-row
    @current-change="handleCurrentChange"
    style="width: 100%">
    <el-table-column
      type="index"
      width="50">
    </el-table-column>
    <el-table-column
      property="date"
      label="日期"
      width="120">
    </el-table-column>
    <el-table-column
      property="name"
      label="姓名"
      width="120">
    </el-table-column>
    <el-table-column
      property="address"
      label="地址">
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1517 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1519 弄'
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1516 弄'
        }],
        currentRow: null
      }
    },

    methods: {
      handleCurrentChange(val) {
        this.currentRow = val;
      }
    }
  }
</script>
```
:::

### 多选

选择多行数据时使用 Checkbox。

:::demo 实现多选非常简单: 手动添加一个`el-table-column`，设`type`属性为`selection`即可；默认情况下若内容过多会折行显示，若需要单行显示可以使用`show-overflow-tooltip`属性，它接受一个`Boolean`，为`true`时多余的内容会在 hover 时以 tooltip 的形式显示出来。
```html
<template>
  <el-table
    :data="tableData3"
    border
    style="width: 100%"
    @selection-change="handleSelectionChange">
    <el-table-column
      type="selection"
      width="55">
    </el-table-column>
    <el-table-column
      label="日期"
      width="120">
      <template scope="scope">{{ scope.row.date }}</template>
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="120">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址"
      show-overflow-tooltip>
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData3: [{
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-08',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-06',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-07',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }],
        multipleSelection: []
      }
    },

    methods: {
      handleSelectionChange(val) {
        this.multipleSelection = val;
      }
    }
  }
</script>
```
:::

### 排序

对表格进行排序，可快速查找或对比数据。

:::demo 可以通过表的`default-sort`属性设置默认的排序列和排序顺序。在列中设置`sortable`属性即可实现以该列为基准的排序，接受一个`Boolean`，默认为`false`。在本例中，我们还使用了`formatter`属性，它用于格式化指定列的值，接受一个`Function`，会传入两个参数：`row`和`column`，可以根据自己的需求进行处理。`abled-sort-orders`属性指定可用的排序状态`['normal', 'ascending', 'descending']`。还可使用`el-table`的`slot="caret"`这个插槽来自定义排序的图标。
```html
<template>
  <el-table
    :data="tableData"
    border
    style="width: 100%"
    :default-sort = "{prop: 'date', order: 'descending'}"
    :abled-sort-orders = "['ascending', 'descending']"
    @sort-change = "onSortChange"
    >
    <template slot="caret">
      <i class="sort-icon ascending el-icon-arrow-up"></i>
      <i class="sort-icon descending el-icon-arrow-down"></i>
    </template>
    <el-table-column
      prop="date"
      label="日期"
      sortable
      width="180">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      sortable
      width="180">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址"
      :formatter="formatter">
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1517 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1519 弄'
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1516 弄'
        }]
      }
    },
    methods: {
      formatter(row, column) {
        return row.address;
      }
    }
  }
</script>

<style>
  .el-table .sort-icon {
    font-size: 12px;
    position: absolute;
    color: #b6bbc3;
  }
  .el-table .sort-icon.ascending {
    top: 7px;
  }
  .el-table .sort-icon.descending {
    bottom: 5px;
  }
  .el-table .ascending .sort-icon.ascending {
    color: #48556a;
  }
  .el-table .descending .sort-icon.descending {
    color: #48556a;
  }
</style>
```
:::

### 筛选

对表格进行筛选，可快速查找到自己想看的数据。

:::demo 在列中设置`filters` `filter-method`属性即可开启该列的筛选，filters 是一个数组，`filter-method`是一个方法，它用于决定某些数据是否显示，会传入两个参数：`value`和`row`。
```html
<template>
  <el-table
    :data="tableData"
    border
    style="width: 100%">
    <el-table-column
      prop="date"
      label="日期"
      sortable
      width="180">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="180">
    </el-table-column>
    <el-table-column
      prop="address"
      label="地址"
      :formatter="formatter">
    </el-table-column>
    <el-table-column
      prop="tag"
      label="标签"
      width="100"
      :filters="[{ text: '家', value: '家' }, { text: '公司', value: '公司' }]"
      :filter-method="filterTag">
      <template scope="scope">
        <el-tag
          :type="scope.row.tag === '家' ? 'primary' : 'success'"
          close-transition>{{scope.row.tag}}</el-tag>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄',
          tag: '家'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1517 弄',
          tag: '公司'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1519 弄',
          tag: '家'
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1516 弄',
          tag: '公司'
        }]
      }
    },
    methods: {
      formatter(row, column) {
        return row.address;
      },
      filterTag(value, row) {
        return row.tag === value;
      }
    }
  }
</script>
```
:::

### 自定义列模板

自定义列的显示内容，可组合其他组件使用。
:::demo 通过 `Scoped slot` 可以获取到 row, column, $index 和 store（table 内部的状态管理）的数据，用法参考 demo。(`1.1` 后支持通过 [Scoped slot](https://vuejs.org/v2/guide/components.html#Scoped-Slots) 自定义模板。之前的 `inline-template` 同样适用，但不推荐。)
```html
<template>
  <el-table
    :data="tableData"
    border
    style="width: 100%">
    <el-table-column
      label="日期"
      width="180">
      <template scope="scope">
        <el-icon name="time"></el-icon>
        <span style="margin-left: 10px">{{ scope.row.date }}</span>
      </template>
    </el-table-column>
    <el-table-column
      label="姓名"
      width="180">
      <template scope="scope">
        <el-popover trigger="hover" placement="top">
          <p>姓名: {{ scope.row.name }}</p>
          <p>住址: {{ scope.row.address }}</p>
          <div slot="reference" class="name-wrapper">
            <el-tag>{{ scope.row.name }}</el-tag>
          </div>
        </el-popover>
      </template>
    </el-table-column>
    <el-table-column label="操作">
      <template scope="scope">
        <el-button
          size="small"
          @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
        <el-button
          size="small"
          type="danger"
          @click="handleDelete(scope.$index, scope.row)">删除</el-button>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1517 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1519 弄'
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1516 弄'
        }]
      }
    },
    methods: {
      handleEdit(index, row) {
        console.log(index, row);
      },
      handleDelete(index, row) {
        console.log(index, row);
      }
    }
  }
</script>
```
:::

### 展开行

当行内容过多并且不想显示横向滚动条时，可以使用 Table 展开行功能。
:::demo 通过设置 type="expand" 和 `Scoped slot` 可以开启展开行功能，`el-table-column` 的模板会被渲染成为展开行的内容，展开行可访问的属性与使用自定义列模板时的 `Scoped slot` 相同。
```html
<template>
  <el-table
    :data="tableData3"
    style="width: 100%">
    <el-table-column type="expand">
      <template scope="props">
        <p>省: {{ props.row.province }}</p>
        <p>市: {{ props.row.city }}</p>
        <p>住址: {{ props.row.detailAddress }}</p>
        <p>邮编: {{ props.row.zip }}</p>
      </template>
    </el-table-column>
    <el-table-column
      label="日期"
      prop="date">
    </el-table-column>
    <el-table-column
      label="姓名"
      prop="name">
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData3: [{
          date: '2016-05-03',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-02',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-04',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-01',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-08',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-06',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }, {
          date: '2016-05-07',
          name: '王小虎',
          province: '上海',
          city: '普陀区',
          address: '上海市普陀区金沙江路 1518 弄',
          detailAddress: '金沙江路 1518 弄',
          zip: 200333
        }]
      }
    }
  }
</script>
```
:::

### Table Attributes
| 参数      | 说明          | 类型      | 可选值                           | 默认值  |
|---------- |-------------- |---------- |--------------------------------  |-------- |
| data | 显示的数据 | array | — | — |
| height | Table 的高度，默认为自动高度。如果 height 为 number 类型，单位 px；如果 height 为 string 类型，则 Table 的高度受控于外部样式。  | string/number | — | — |
| stripe | 是否为斑马纹 table | boolean | — | false |
| border | 是否带有外围边框 | boolean | — | true |
| row-border | 是否带有行分割线 | boolean | — | true |
| col-border | 是否带有列分割线 | boolean | — | false |
| fit | 列的宽度是否自撑开 | boolean | — | true |
| show-header | 是否显示表头 | boolean | — | true |
| highlight-current-row | 是否要高亮当前行 | boolean | — | false |
| current-row-key | 当前行的 key，只写属性 | String,Number | — | — |
| row-class-name | 行的 className 的回调方法，也可以使用字符串为所有行设置一个固定的 className。 | Function(row, index)/String | — | — |
| row-style | 行的 style 的回调方法，也可以使用一个固定的 Object 为所有行设置一样的 Style。 | Function(row, index)/Object | — | — |
| row-key | 行数据的 Key，用来优化 Table 的渲染；在使用 reserve-selection 功能的情况下，该属性是必填的 | Function(row)/String | — | — |
| context | 设置上下文环境，例如设置当前上下文就是 `_self`，父级就是 `$parent`，根组件 `$root`。优先读取 column 的 context 属性。 | Object | — | Table 所处上下文 |
| empty-text | 空数据时显示的文本内容，也可以通过 `slot="empty"` 设置 | String | — | 暂无数据 |
| default-expand-all | 是否默认展开所有行，当 Table 中存在 type="expand" 的 Column 的时候有效 | Boolean | — | false |
| expand-row-keys | 可以通过该属性设置 Table 目前的展开行，需要设置 row-key 属性才能使用，该属性为展开行的 keys 数组。| Array | — | |
| default-sort | 默认的排序列的prop和顺序。它的`prop`属性指定默认的排序的列，`order`指定默认排序的顺序| Object | `order`: ascending, descending | 如果只指定了`prop`, 没有指定`order`, 则默认顺序是ascending |
| abled-sort-orders |可用的排序状态| Array | \['normal', 'ascending', 'descending'\]|注意不要与 default-sort 冲突，default-sort 未指定时 'normal' 排序状态必须可用|

### Table Events
| 事件名 | 说明 | 参数 |
| ---- | ---- | ---- |
| select | 当用户手动勾选数据行的 Checkbox 时触发的事件 | selection, row |
| select-all | 当用户手动勾选全选 Checkbox 时触发的事件 | selection |
| selection-change | 当选择项发生变化时会触发该事件 | selection |
| cell-mouse-enter | 当单元格 hover 进入时会触发该事件 | row, column, cell, event |
| cell-mouse-leave | 当单元格 hover 退出时会触发该事件 | row, column, cell, event |
| cell-click | 当某个单元格被点击时会触发该事件 | row, column, cell, event |
| row-click | 当某一行被点击时会触发该事件 | row, event, column |
| row-contextmenu | 当某一行被鼠标右键点击时会触发该事件 | row, event |
| row-dblclick | 当某一行被双击时会触发该事件 | row, event |
| header-click | 当某一列的表头被点击时会触发该事件 | column, event |
| sort-change | 当表格的排序条件发生变化的时候会触发该事件 | { column, prop, order } |
| filter-change | 当表格的筛选条件发生变化的时候会触发该事件，参数的值是一个对象，对象的 key 是 column 的 columnKey，对应的 value 为用户选择的筛选条件的数组。 | filters |
| current-change | 当表格的当前行发生变化的时候会触发该事件，如果要高亮当前行，请打开表格的 highlight-current-row 属性 | currentRow, oldCurrentRow |
| expand | 当用户对某一行展开或者关闭的上会触发该事件 | row, expanded |

### Table Methods
| 方法名 | 说明 | 参数 |
| ---- | ---- | ---- |
| clearSelection | 清空用户的选择，当使用 reserve-selection 功能的时候，可能会需要使用此方法 | selection |
| toggleRowSelection | 切换某一行的选中状态，如果使用了第二个参数，则是设置这一行选中与否（selected 为 true 则选中） | row, selected |

### Table-column Attributes
| 参数      | 说明          | 类型      | 可选值                           | 默认值  |
|---------- |-------------- |---------- |--------------------------------  |-------- |
| type | 对应列的类型。如果设置了 `selection` 则显示多选框；如果设置了 `index` 则显示该行的索引（从 1 开始计算）；如果设置了 expand 则显示为一个可展开的按钮 | string | selection/index/expand | — |
| column-key | column 的 key，如果需要使用 filter-change 事件，则需要此属性标识是哪个 column 的筛选条件 | string | — | — |
| label | 显示的标题 | string | — | — |
| prop | 对应列内容的字段名，也可以使用 property 属性 | string | — | — |
| width | 对应列的宽度 | string | — | — |
| min-width | 对应列的最小宽度，与 width 的区别是 width 是固定的，min-width 会把剩余宽度按比例分配给设置了 min-width 的列 | string | — | — |
| fixed | 列是否固定在左侧或者右侧，true 表示固定在左侧 | string, boolean | true, left, right | — |
| render-header | 列标题 Label 区域渲染使用的 Function | Function(h, { column, $index }) | — | — |
| sortable | 对应列是否可以排序，如果设置为 'custom'，则代表用户希望远程排序，需要监听 Table 的 sort-change 事件 | boolean, string | true, false, 'custom' | false |
| sort-method | 对数据进行排序的时候使用的方法，仅当 sortable 设置为 true 的时候有效 | Function(a, b) | — | — |
| resizable | 对应列是否可以通过拖动改变宽度（需要在 el-table 上设置 col-border 属性为真） | boolean | — | true |
| formatter | 用来格式化内容 | Function(row, column) | — | — |
| show-overflow-tooltip | 当内容过长被隐藏时显示 tooltip | Boolean | — | false |
| align | 对齐方式 | String | left/center/right | left |
| header-align | 表头对齐方式，若不设置该项，则使用表格的对齐方式 | String | left/center/right | — |
| class-name | 列的 className | string | — | — |
| selectable | 仅对 type=selection 的列有效，类型为 Function，Function 的返回值用来决定这一行的 CheckBox 是否可以勾选 | Function(row, index) | — | — |
| reserve-selection | 仅对 type=selection 的列有效，类型为 Boolean，为 true 则代表会保留之前数据的选项，需要配合 Table 的 clearSelection 方法使用。 | Boolean | — | false |
| filters | 数据过滤的选项，数组格式，数组中的元素需要有 text 和 value 属性。 | Array[{ text, value }] | — | — |
| filter-multiple | 数据过滤的选项是否多选 | Boolean | — | true |
| filter-method | 数据过滤使用的方法，如果是多选的筛选项，对每一条数据会执行多次，任意一次返回 true 就会显示。 | Function(value, row) | — | — |
| filtered-value | 选中的数据过滤项，如果需要自定义表头过滤的渲染方式，可能会需要此属性。 | Array | — | — |
| enable-row-hover | 表格数据行可 hover | Boolean | — | true |

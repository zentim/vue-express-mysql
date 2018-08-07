# vue-express-mysql

> A full stack project practice

## Step 1: Get Project & Run Front-end
```
git clone https://github.com/zentim/vue-express-mysql.git
cd vue-express-mysql
npm install
npm start
```

## Step 2: Setup MariaDB(MySQL) 
1. edit `server/db.js`:
``` javascript
// server/db.js
module.exports = {
  mysql: {
    host: '192.168.99.100',  // change to your access url
    user: 'root',  // change to your mysql user
    password: 'root',  // change to your mysql password
    database: 'vue_express_mysql',
    port: '3306'  // change to your mysql port
  }
}
```
2. mysql import `project-datamodel/user.sql`:
``` sql
create database `vue_express_mysql`;
use `vue_express_mysql`;

CREATE TABLE `vue_express_mysql`.`user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `age` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
)
DEFAULT CHARACTER SET = utf8mb4;
```

## Step 3: Run Back-end
Open another bash:
``` bash
cd vue-express-mysql
cd server
npm install
npm start
```

## Step 4: Test
serve with hot reload at `localhost:8080`

## 參考
* 做 vue + express + mysql 的全端練習，[Vue+MySQL+Express小试牛刀](https://segmentfault.com/a/1190000008176208)
* 改用 axios，[Vue.js 2.0 如何使用axios](https://www.jianshu.com/p/4dd17f0ae442)
* 解決跨域請求問題 [Vue-cli proxyTable 解决开发环境的跨域问题](https://www.jianshu.com/p/95b2caf7e0da)

-----

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report

# run unit tests
npm run unit

# run e2e tests
npm run e2e

# run all tests
npm test
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).

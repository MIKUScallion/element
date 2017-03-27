.PHONY: dist test
default: help

# build all theme
build-theme:
	npm run build:theme

install:
	npm install

install-cn:
	npm install --registry=http://registry.npm.taobao.org

dev:
	npm run dev

play:
	npm run dev:play

new:
	node build/bin/new.js $(filter-out $@,$(MAKECMDGOALS))

new-lang:
	node build/bin/new-lang.js $(filter-out $@,$(MAKECMDGOALS))

sync-theme-sunfish-form-bonyfish:
	cp -r ./packages/theme-bonyfish/* ./packages/theme-sunfish/ && cp ./packages/theme-sunfish/var.css ./packages/theme-sunfish/src/common/

dist: install
	npm run dist

dist-all:
	npm run dist:all

deploy:
	@npm run deploy

deploy-bonyfish-212:
	cross-env THEME=bonyfish npm run deploy:build && mv ./examples/element-ui ./examples/bonyfish && scp -r ./examples/bonyfish dev@10.9.19.212:/home/dev/nginx_html/element/ && rm -rf ./examples/bonyfish

deploy-sunfish-212:
	cross-env THEME=sunfish npm run deploy:build && mv ./examples/element-ui ./examples/sunfish && scp -r ./examples/sunfish dev@10.9.19.212:/home/dev/nginx_html/element/ && rm -rf ./examples/sunfish

deploy-bonyfish-common-module:
	cp ./lib/index.js ../common-module/element && cp -r ./lib/theme-bonyfish/fonts ../common-module/element/themes/bonyfish/ && cp ./lib/theme-bonyfish/index.css ../common-module/element/themes/bonyfish/

deploy-bonyfish-brokerage-web-common-module:
	cp ./lib/index.js ../brokerage-web/common-module/element && cp -r ./lib/theme-bonyfish/fonts ../brokerage-web/common-module/element/themes/bonyfish/ && cp ./lib/theme-bonyfish/index.css ../brokerage-web/common-module/element/themes/bonyfish/

deploy-sunfish-common-module:
	cp ./lib/index.js ../common-module/element && cp -r ./lib/theme-sunfish/fonts ../common-module/element/themes/sunfish/ && cp ./lib/theme-sunfish/index.css ../common-module/element/themes/sunfish/

pub:
	npm run pub

pub-all:
	npm run pub:all

test:
	npm run test:watch

help:
	@echo "   \033[35mmake\033[0m \033[1m命令使用说明\033[0m"
	@echo "   \033[35mmake install\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  安装依赖"
	@echo "   \033[35mmake new <component-name> [中文名]\033[0m\t---  创建新组件 package. 例如 'make new button 按钮'"
	@echo "   \033[35mmake sync-theme-sunfish-form-bonyfish\033[0m\t---  以 bonyfish 为基础同步 sunfish"
	@echo "   \033[35mmake dev\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  开发模式"
	@echo "   \033[35mmake dist\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  编译项目，生成目标文件"
	@echo "   \033[35mmake dist-all\033[0m\t\033[0m\t\033[0m\t---  分别编译每个组件项目"
	@echo "   \033[35mmake deploy\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  部署 demo"
	@echo "   \033[35mmake deploy-bonyfish-212\033[0m\t\033[0m\t---  部署 bonyfish 到内网 212"
	@echo "   \033[35mmake deploy-sunfish-212\033[0m\t\033[0m\t---  部署 sunfish 到内网 212"
	@echo "   \033[35mmake deploy-bonyfish-common-module\033[0m\t---  部署 bonyfish 到上级目录 common-module 中"
	@echo "   \033[35mmake deploy-sunfish-common-module\033[0m\t---  部署 sunfish 到上级目录 common-module 中"
	@echo "   \033[35mmake pub\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  发布到 npm 上"
	@echo "   \033[35mmake pub-all\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  发布各组件到 npm 上"
	@echo "   \033[35mmake new-lang <lang>\033[0m\t\033[0m\t\033[0m\t---  为网站添加新语言. 例如 'make new-lang fr'"

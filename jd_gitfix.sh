#!/usr/bin/env bash
#依赖安装，运行一次就好
#0 8 5 5 * jd_indeps.sh
#new Env('拉库修复')
#

# 设置 http.postBuffer
echo "设置 github缓存配置"
git config --global http.postBuffer 524288000

# 查看 http.postBuffer 配置
echo "查看缓存配置 配置为:524288000 则成功"
POST_BUFFER_VALUE=$(git config --global http.postBuffer)
echo "http.postBuffer 的值是: $POST_BUFFER_VALUE"

# 设置 http.sslVerify
echo "设置 github拉库SSL检验配置"
git config --global http.sslVerify "false"

# 查看 http.sslVerify 配置
echo "查看 github拉库SSL检验配置 配置为false则成功"
SSL_VERIFY_VALUE=$(git config --global http.sslVerify)
echo "http.sslVerify 的值是: $SSL_VERIFY_VALUE"
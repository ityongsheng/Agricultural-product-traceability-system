const path = require('path')

function resolve(dir) {
    return path.join(__dirname, dir)
}

function publicPath(){
    if (process.env.NODE_ENV == 'production') {
        return "././";
    } else {
        return "/";
    }
}

module.exports = {
    publicPath: publicPath(),
    lintOnSave: false,
    configureWebpack: {
        resolve: {
            alias: {
                '@': resolve('src')
            }
        }
    },
    devServer: {
        host: "0.0.0.0",
        port: 8081,      // 确保这里是你现在的端口 8081
        hot: true,
        https: false,
        proxy: {
            '/springbootu4nad998': {
                // 【核心修改】不要写 localhost，必须写 127.0.0.1
                // 这能完美解决 Mac 上 500 Internal Server Error 的问题
                target: 'http://127.0.0.1:8083',

                changeOrigin: true,
                secure: false
                // 再次强调：这里绝对不要加 pathRewrite
            }
        }
    },
    chainWebpack(config) {
        config.module.rule('svg').exclude.add(resolve('src/icons')).end()
        config.module.rule('icons').test(/\.svg$/).include.add(resolve('src/icons')).end()
            .use('svg-sprite-loader').loader('svg-sprite-loader').options({ symbolId: 'icon-[name]' }).end()
    }
}
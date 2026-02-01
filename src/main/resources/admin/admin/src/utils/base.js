// 基础配置
const base = {
    // 后端 API 基础路径
    url: '/springbootu4nad998/',

    // 获取基础 URL
    get() {
        return this.url
    },

    // 获取完整的图片 URL
    getImageUrl(path) {
        if (!path) return ''
        if (path.startsWith('http://') || path.startsWith('https://')) {
            return path
        }
        return this.url + path.replace(/^\//, '')
    },

    // 项目名称
    getProjectName() {
        return '基于SpringBoot的农产品溯源系统'
    },

    // 版本
    getVersion() {
        return '1.0.0'
    }
}

export default base

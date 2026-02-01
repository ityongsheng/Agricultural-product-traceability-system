import storage from '@/utils/storage'

/**
 * 判断是否有权限
 * @param {string} tableName 表名/模块名
 * @param {string} action 操作名，如 '新增', '删除', '修改', '查看'
 * @returns {boolean}
 */
export function isAuth(tableName, action) {
    let role = storage.get('role')
    if (!role) return false

    // 管理员拥有所有权限
    if (role === '管理员') return true

    // 其他角色根据具体需求控制权限
    // 目前简化处理：只要登录就有权限
    return true
}

/**
 * 获取当前日期 yyyy-MM-dd
 */
export function getCurDate() {
    let now = new Date()
    let year = now.getFullYear()
    let month = (now.getMonth() + 1).toString().padStart(2, '0')
    let day = now.getDate().toString().padStart(2, '0')
    return `${year}-${month}-${day}`
}

/**
 * 获取当前日期时间 yyyy-MM-dd HH:mm:ss
 */
export function getCurDateTime() {
    let now = new Date()
    let year = now.getFullYear()
    let month = (now.getMonth() + 1).toString().padStart(2, '0')
    let day = now.getDate().toString().padStart(2, '0')
    let hours = now.getHours().toString().padStart(2, '0')
    let minutes = now.getMinutes().toString().padStart(2, '0')
    let seconds = now.getSeconds().toString().padStart(2, '0')
    return `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`
}

export default {
    isAuth,
    getCurDate,
    getCurDateTime
}

import http from '@/utils/http'

const api = {
    // 登录
    login(data) {
        return http.post('/login', data)
    },
    // 注册
    register(tableName, data) {
        return http.post(`/${tableName}/register`, data)
    },
    // 退出登录
    logout() {
        return http.post('/logout')
    },
    // 获取session信息
    session() {
        return http.get('/session')
    },
    // 分页查询
    page(tableName, params) {
        return http.get(`/${tableName}/page`, { params })
    },
    // 查询列表
    list(tableName, params) {
        return http.get(`/${tableName}/list`, { params })
    },
    // 获取详情
    info(tableName, id) {
        return http.get(`/${tableName}/info/${id}`)
    },
    // 保存
    save(tableName, data) {
        return http.post(`/${tableName}/save`, data)
    },
    // 更新
    update(tableName, data) {
        return http.post(`/${tableName}/update`, data)
    },
    // 删除
    delete(tableName, ids) {
        return http.post(`/${tableName}/delete`, ids)
    }
}

export default api

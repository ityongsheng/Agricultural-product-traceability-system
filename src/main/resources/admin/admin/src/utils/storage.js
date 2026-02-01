// 检查 localStorage 是否可用
function isLocalStorageAvailable() {
    try {
        const testKey = '__storage_test__'
        localStorage.setItem(testKey, testKey)
        localStorage.removeItem(testKey)
        return true
    } catch (e) {
        return false
    }
}

// 内存存储作为备用
const memoryStorage = {}

const storage = {
    set(key, value) {
        try {
            if (isLocalStorageAvailable()) {
                if (typeof value === 'object') {
                    localStorage.setItem(key, JSON.stringify(value))
                } else {
                    localStorage.setItem(key, value)
                }
            } else {
                memoryStorage[key] = value
            }
        } catch (e) {
            console.warn('Storage set error:', e)
            memoryStorage[key] = value
        }
    },
    get(key) {
        try {
            if (isLocalStorageAvailable()) {
                let value = localStorage.getItem(key)
                if (value === null || value === undefined) {
                    return memoryStorage[key] || null
                }
                try {
                    return JSON.parse(value)
                } catch (e) {
                    return value
                }
            } else {
                return memoryStorage[key] || null
            }
        } catch (e) {
            console.warn('Storage get error:', e)
            return memoryStorage[key] || null
        }
    },
    // getObj 与 get 相同，为了兼容旧代码
    getObj(key) {
        return this.get(key)
    },
    // setObj 与 set 相同，为了兼容旧代码
    setObj(key, value) {
        this.set(key, value)
    },
    remove(key) {
        try {
            if (isLocalStorageAvailable()) {
                localStorage.removeItem(key)
            }
            delete memoryStorage[key]
        } catch (e) {
            console.warn('Storage remove error:', e)
            delete memoryStorage[key]
        }
    },
    clear() {
        try {
            if (isLocalStorageAvailable()) {
                localStorage.clear()
            }
            Object.keys(memoryStorage).forEach(key => delete memoryStorage[key])
        } catch (e) {
            console.warn('Storage clear error:', e)
            Object.keys(memoryStorage).forEach(key => delete memoryStorage[key])
        }
    }
}

export default storage

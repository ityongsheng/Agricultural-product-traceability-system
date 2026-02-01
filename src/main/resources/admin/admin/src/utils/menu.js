import storage from '@/utils/storage'

// 完整的菜单配置，按照侧边栏组件期望的格式
const menuData = [
    {
        // 管理员
        tableName: 'users',
        roleName: '管理员',
        hasBackLogin: '是',
        backMenu: [
            {
                menu: '生产者',
                child: [
                    { tableName: 'shengchanzhe', menu: '生产者列表' }
                ]
            },
            {
                menu: '经销商',
                child: [
                    { tableName: 'jingxiaoshang', menu: '经销商列表' }
                ]
            },
            {
                menu: '监管者',
                child: [
                    { tableName: 'jianguanzhe', menu: '监管者列表' }
                ]
            },
            {
                menu: '消费者',
                child: [
                    { tableName: 'xiaofeizhe', menu: '消费者列表' }
                ]
            },
            {
                menu: '产品管理',
                child: [
                    { tableName: 'nongchanpin', menu: '农产品' },
                    { tableName: 'nongchanpinjichuxinxi', menu: '农产品基础信息' }
                ]
            },
            {
                menu: '溯源追踪',
                child: [
                    { tableName: 'shengchanguochengzhuizong', menu: '生产过程追踪' },
                    { tableName: 'jiagonghuanjie', menu: '加工环节' },
                    { tableName: 'wuliuyunshu', menu: '物流运输' }
                ]
            },
            {
                menu: '质量检测',
                child: [
                    { tableName: 'zhiliangjiance', menu: '质量检测' }
                ]
            },
            {
                menu: '订单管理',
                child: [
                    { tableName: 'dingdanxinxi', menu: '订单信息' },
                    { tableName: 'shouhuoxinxi', menu: '收货信息' }
                ]
            }
        ]
    },
    {
        // 生产者
        tableName: 'shengchanzhe',
        roleName: '生产者',
        hasBackLogin: '是',
        backMenu: [
            {
                menu: '产品管理',
                child: [
                    { tableName: 'nongchanpinjichuxinxi', menu: '农产品基础信息' }
                ]
            },
            {
                menu: '生产追踪',
                child: [
                    { tableName: 'shengchanguochengzhuizong', menu: '生产过程追踪' }
                ]
            }
        ]
    },
    {
        // 经销商
        tableName: 'jingxiaoshang',
        roleName: '经销商',
        hasBackLogin: '是',
        backMenu: [
            {
                menu: '加工环节',
                child: [
                    { tableName: 'jiagonghuanjie', menu: '加工环节' }
                ]
            },
            {
                menu: '物流管理',
                child: [
                    { tableName: 'wuliuyunshu', menu: '物流运输' }
                ]
            },
            {
                menu: '订单管理',
                child: [
                    { tableName: 'dingdanxinxi', menu: '订单信息' }
                ]
            }
        ]
    },
    {
        // 监管者
        tableName: 'jianguanzhe',
        roleName: '监管者',
        hasBackLogin: '是',
        backMenu: [
            {
                menu: '质量检测',
                child: [
                    { tableName: 'zhiliangjiance', menu: '质量检测' }
                ]
            },
            {
                menu: '溯源查看',
                child: [
                    { tableName: 'nongchanpin', menu: '农产品' },
                    { tableName: 'shengchanguochengzhuizong', menu: '生产过程追踪' }
                ]
            }
        ]
    },
    {
        // 消费者
        tableName: 'xiaofeizhe',
        roleName: '消费者',
        hasBackLogin: '是',
        backMenu: [
            {
                menu: '商品浏览',
                child: [
                    { tableName: 'nongchanpin', menu: '农产品' }
                ]
            },
            {
                menu: '订单管理',
                child: [
                    { tableName: 'dingdanxinxi', menu: '订单信息' },
                    { tableName: 'shouhuoxinxi', menu: '收货信息' }
                ]
            }
        ]
    }
]

const menu = {
    // 获取完整的菜单列表（包含所有角色）
    list() {
        return storage.get('menus') || menuData
    },
    // 获取当前用户的菜单
    getMenuList() {
        const sessionTable = storage.get('sessionTable') || 'users'
        const menus = this.list()
        for (let i = 0; i < menus.length; i++) {
            if (menus[i].tableName === sessionTable) {
                return menus[i].backMenu || []
            }
        }
        return []
    },
    setMenuList(menuList) {
        storage.set('menuList', menuList)
    },
    clearMenuList() {
        storage.remove('menuList')
    }
}

export function getMenuList() {
    return menu.getMenuList()
}

export function setMenuList(menuList) {
    menu.setMenuList(menuList)
}

export function clearMenuList() {
    menu.clearMenuList()
}

export default menu

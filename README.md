# 基于 Spring Boot 的农产品溯源系统

## 📖 项目简介

本项目是一个基于 Spring Boot+Vue+Zxing 的农产品全流程溯源系统。系统通过对农产品从生产、加工、物流到销售的全生命周期进行数据记录与追踪，实现了“来源可查、去向可追、责任可究”，保障了农产品的质量安全，增强了消费者的信任度。

系统支持多种角色登录，包括管理员、生产者、加工企业、经销商、监管者和消费者，为不同角色的用户提供了定制化的功能模块。
<img width="1501" height="1049" alt="Screenshot 2026-02-01 at 11 24 07 AM" src="https://github.com/user-attachments/assets/dc8147b6-2ec6-4922-9515-c2fadd6ecf11" />

## ✨ 核心功能

1.  **多角色管理**：支持管理员、生产者、经销商、监管者、消费者等多种角色的权限控制和业务流程。
2.  **全流程溯源**：
    *   **生产环节**：记录农产品的基础信息、种植/养殖过程（施肥、施药、灌溉等）。
    *   **加工环节**：记录加工企业、加工工艺、添加剂使用情况等。
    *   **物流环节**：记录发货时间、物流节点信息及状态。
    *   **销售环节**：记录订单信息、经销商信息及销售去向。
3.  **二维码溯源**：消费者扫描产品二维码即可查看产品的完整溯源档案。
4.  **数据可视化**：首页提供数据大屏，直观展示农产品各类统计数据。
5.  **基础信息管理**：包含农产品分类、规格、质量检测报告管理等。

## 🛠 技术选型

### 后端 (Backend)
*   **开发语言**：Java 8
*   **框架**：Spring Boot 
*   **持久层**：MyBatis-Plus 2.3
*   **数据库**：MySQL 5.7 / 8.0
*   **工具库**：Hutool, FastJson, Apache Commons
*   **其他**：Apache Shiro (权限控制), Baidu AI SDK (人工智能支持)

### 前端 (Frontend)
*   **框架**：Vue.js 2.x
*   **UI 组件库**：Element-UI
*   **图表库**：ECharts
*   **HTTP 客户端**：Axios
*   **构建工具**：Webpack / Vue CLI

## ⚙️ 环境要求

*   **JDK**: 1.8
*   **Node.js**: v16.20.2 (建议使用 nvm 管理版本)
*   **Maven**: 3.6+
*   **MySQL**: 5.7 或 8.0

## 🚀 快速开始

### 1. 数据库准备
1.  创建 MySQL 数据库 `springbootu4nad998`。
2.  导入项目根目录下的 `db/springbootu4nad998.sql` 文件。
3.  检查数据库字符集是否为 `utf8mb4`。

### 2. 后端启动
1.  进入项目根目录。
2.  修改配置文件 `src/main/resources/application.yml`，更新数据库连接信息（用户名/密码）：
    ```yaml
    spring:
      datasource:
        username: root
        password: your_password
    ```
3.  运行 Maven 命令安装依赖：
    ```bash
    mvn clean install
    ```
4.  启动 Spring Boot 应用：
    ```bash
    mvn spring-boot:run
    ```
    *   服务默认端口：`8083`
    *   API 文档/接口地址：`http://localhost:8083/springbootu4nad998/`

### 3. 前端启动
1.  进入前端代码目录：
    ```bash
    cd src/main/resources/admin/admin
    ```
2.  安装依赖（推荐使用淘宝镜像）：
    ```bash
    npm install --registry=https://registry.npmmirror.com
    ```
3.  启动开发服务器：
    ```bash
    npm run serve
    ```
4.  访问项目：打开浏览器访问 `http://localhost:8080` (端口视具体情况而定)。

## 📂 项目结构

```
TraceAbilitySystem
├── src
│   ├── main
│   │   ├── java          # 后端 Java 源码
│   │   │   └── com
│   │   │       ├── controller  # 控制层
│   │   │       ├── entity      # 实体类
│   │   │       ├── service     # 业务逻辑层
│   │   │       └── dao         # 数据访问层
│   │   └── resources     # 资源文件
│   │       ├── mapper    # MyBatis XML 映射文件
│   │       ├── admin     # 前端 Vue 项目源码
│   │       └── static    # 静态资源 (图片上传目录)
├── db                    # 数据库 SQL 脚本
├── pom.xml               # Maven 依赖配置
└── README.md             # 项目说明文档
```

## ❓ 常见问题

**Q: 登录页面提示“账号或密码错误”？**
A: 请检查后台日志是否有报错，确认数据库连接正常。默认管理员账号：`admin`，密码：`admin`。

**Q: 上传图片失败？**
A: 检查 `src/main/resources/static/upload/` 目录是否存在。项目已配置自动创建该目录，但在某些操作系统权限不足时可能需要手动创建。

**Q: 前端依赖安装报错？**
A: 本项目基于 Vue 2，建议使用 Node.js v14 或 v16 版本。高版本 Node (v18+) 可能会出现 OpenSSL 相关错误。

---
**Developers**: Li Yongsheng & Team
**License**: MIT

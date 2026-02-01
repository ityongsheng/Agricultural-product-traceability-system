<template>
	<div id="app" class="">
		<router-view></router-view>
	</div>
</template>

<script>
	export default {
		name: 'app',
		created() {
			
		}
	}
</script>

<style>
	@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Poppins:wght@300;400;500;600;700&display=swap');

	:root {
		/* 主题色 - 现代渐变色系 */
		--primary-color: #667eea;
		--primary-light: #764ba2;
		--secondary-color: #f093fb;
		--accent-color: #4facfe;
		--success-color: #43e97b;
		--warning-color: #fa709a;
		--danger-color: #ff6b6b;
		
		/* 背景色 */
		--bg-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
		--bg-glass: rgba(255, 255, 255, 0.1);
		--bg-dark: #1a1a2e;
		--bg-darker: #16213e;
		
		/* 文字色 */
		--text-primary: #2d3748;
		--text-secondary: #718096;
		--text-light: #ffffff;
		
		/* 阴影 */
		--shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.1);
		--shadow-md: 0 4px 16px rgba(0, 0, 0, 0.15);
		--shadow-lg: 0 10px 30px rgba(0, 0, 0, 0.2);
		--shadow-glow: 0 0 30px rgba(102, 126, 234, 0.3);
		
		/* 圆角 */
		--radius-sm: 8px;
		--radius-md: 12px;
		--radius-lg: 20px;
		
		/* 过渡 */
		--transition-fast: all 0.2s cubic-bezier(0.4, 0, 0.2, 1);
		--transition-base: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
		--transition-slow: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
	}

	* {
		padding: 0;
		margin: 0;
		box-sizing: border-box;
	}

	html {
		scroll-behavior: smooth;
	}

	html,
	body {
		width: 100%;
		height: 100%;
		font-family: 'Inter', 'Poppins', -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Microsoft YaHei', sans-serif;
		-webkit-font-smoothing: antialiased;
		-moz-osx-font-smoothing: grayscale;
	}

	#app {
		height: 100%;
	}

	body {
		padding: 0;
		margin: 0;
		background: #f5f7fa;
	}

	/* 自定义滚动条 */
	::-webkit-scrollbar {
		width: 8px;
		height: 8px;
	}

	::-webkit-scrollbar-track {
		background: #f1f1f1;
		border-radius: 10px;
	}

	::-webkit-scrollbar-thumb {
		background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
		border-radius: 10px;
		transition: var(--transition-base);
	}

	::-webkit-scrollbar-thumb:hover {
		background: linear-gradient(135deg, var(--primary-light), var(--secondary-color));
	}

	/* 全局动画 */
	@keyframes fadeInUp {
		from {
			opacity: 0;
			transform: translateY(30px);
		}
		to {
			opacity: 1;
			transform: translateY(0);
		}
	}

	@keyframes shimmer {
		0% {
			background-position: -1000px 0;
		}
		100% {
			background-position: 1000px 0;
		}
	}

	@keyframes float {
		0%, 100% {
			transform: translateY(0);
		}
		50% {
			transform: translateY(-10px);
		}
	}

	/* 玻璃态效果通用类 */
	.glass-effect {
		background: rgba(255, 255, 255, 0.1);
		backdrop-filter: blur(10px);
		-webkit-backdrop-filter: blur(10px);
		border: 1px solid rgba(255, 255, 255, 0.2);
	}
</style>
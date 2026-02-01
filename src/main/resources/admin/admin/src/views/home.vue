<template>
	<div class="home-content">
		<!-- 欢迎卡片 -->
		<div id="home-title" class="home-title animate__animated">
			<div class="welcome-card">
				<div class="card-left">
					<div class="greeting">
						<h1 class="greeting-text">欢迎使用</h1>
						<h2 class="system-name">{{this.$project.projectName}}</h2>
					</div>
					<p class="subtitle">现代化农产品追踪与质量管理平台</p>
					<div class="quick-stats">
						<div class="stat-item">
							<div class="stat-icon stat-icon-1">
								<i class="el-icon-s-data"></i>
							</div>
							<div class="stat-content">
								<span class="stat-label">数据安全</span>
								<span class="stat-value">99.9%</span>
							</div>
						</div>
						<div class="stat-item">
							<div class="stat-icon stat-icon-2">
								<i class="el-icon-circle-check"></i>
							</div>
							<div class="stat-content">
								<span class="stat-label">溯源准确</span>
								<span class="stat-value">100%</span>
							</div>
						</div>
						<div class="stat-item">
							<div class="stat-icon stat-icon-3">
								<i class="el-icon-s-promotion"></i>
							</div>
							<div class="stat-content">
								<span class="stat-label">响应速度</span>
								<span class="stat-value">&lt;50ms</span>
							</div>
						</div>
					</div>
				</div>
				<div class="card-right">
					<div class="decorative-circle circle-1"></div>
					<div class="decorative-circle circle-2"></div>
					<div class="decorative-circle circle-3"></div>
				</div>
			</div>
		</div>

		<!-- 功能网格 (如果需要) -->
		<div class="feature-grid">
			<div class="feature-card" v-for="(feature, index) in features" :key="index" :style="{animationDelay: index * 0.1 + 's'}">
				<div class="feature-icon" :class="'feature-icon-' + (index + 1)">
					<i :class="feature.icon"></i>
				</div>
				<h3 class="feature-title">{{feature.title}}</h3>
				<p class="feature-desc">{{feature.desc}}</p>
			</div>
		</div>
	</div>
</template>

<script>
import 'animate.css'
import router from '@/router/router-static'
import * as echarts from 'echarts'
export default {
	data() {
		return {
			features: [
				{
					icon: 'el-icon-s-grid',
					title: '产品管理',
					desc: '全面的农产品信息管理系统'
				},
				{
					icon: 'el-icon-location',
					title: '溯源追踪',
					desc: '实时追踪产品从生产到销售全过程'
				},
				{
					icon: 'el-icon-pie-chart',
					title: '数据分析',
					desc: '智能分析与可视化数据报表'
				},
				{
					icon: 'el-icon-s-check',
					title: '质量检测',
					desc: '严格的质量标准与检测流程'
				}
			]
		};
	},
	mounted(){
		this.init();
		window.addEventListener('scroll', this.handleScroll)
		setTimeout(()=>{
			this.handleScroll()
		},100)
	},
	destroyed() {
		window.removeEventListener('scroll', this.handleScroll)
	},
	methods:{
		handleScroll() {
			const cards = document.querySelectorAll('.feature-card')
			cards.forEach(card => {
				const rect = card.getBoundingClientRect()
				if (rect.top < window.innerHeight - 50) {
					card.classList.add('animate__animated', 'animate__fadeInUp')
				}
			})
			
			const title = document.querySelector('.home-title')
			if(title) {
				title.classList.add('animate__fadeInDown')
			}
		},
		init(){
			if(this.$storage.get('Token')){
				this.$http({
					url: `${this.$storage.get('sessionTable')}/session`,
					method: "get"
				}).then(({ data }) => {
					if (data && data.code != 0) {
						router.push({ name: 'login' })
					}
				});
			}else{
				router.push({ name: 'login' })
			}
		}
	}
};
</script>

<style lang="scss" scoped>
.home-content {
	padding: 20px;
	background: transparent;
	min-height: calc(100vh - 120px);
}

.welcome-card {
	background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
	border-radius: 24px;
	padding: 40px 60px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
	position: relative;
	overflow: hidden;
	margin-bottom: 40px;
	border: 1px solid rgba(255, 255, 255, 0.8);
	
	.card-left {
		position: relative;
		z-index: 2;
		flex: 1;
	}
	
	.greeting {
		margin-bottom: 16px;
		
		.greeting-text {
			font-size: 28px;
			color: #8e9aaf;
			font-weight: 500;
			margin-bottom: 8px;
		}
		
		.system-name {
			font-size: 42px;
			font-weight: 800;
			background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
			-webkit-background-clip: text;
			-webkit-text-fill-color: transparent;
			letter-spacing: 1px;
		}
	}
	
	.subtitle {
		font-size: 18px;
		color: #5a6c7d;
		margin-bottom: 40px;
		font-weight: 400;
	}
	
	.quick-stats {
		display: flex;
		gap: 40px;
		
		.stat-item {
			display: flex;
			align-items: center;
			gap: 16px;
			background: rgba(255, 255, 255, 0.6);
			padding: 12px 20px;
			border-radius: 16px;
			backdrop-filter: blur(10px);
			border: 1px solid rgba(255, 255, 255, 0.5);
			transition: all 0.3s ease;
			
			&:hover {
				transform: translateY(-5px);
				background: #fff;
				box-shadow: 0 8px 20px rgba(102, 126, 234, 0.15);
			}
			
			.stat-icon {
				width: 48px;
				height: 48px;
				border-radius: 12px;
				display: flex;
				align-items: center;
				justify-content: center;
				font-size: 24px;
				
				&.stat-icon-1 { background: rgba(102, 126, 234, 0.1); color: #667eea; }
				&.stat-icon-2 { background: rgba(0, 201, 167, 0.1); color: #00c9a7; }
				&.stat-icon-3 { background: rgba(255, 193, 7, 0.1); color: #ffc107; }
			}
			
			.stat-content {
				display: flex;
				flex-direction: column;
				
				.stat-label {
					font-size: 13px;
					color: #8e9aaf;
				}
				
				.stat-value {
					font-size: 18px;
					font-weight: 700;
					color: #2d3748;
				}
			}
		}
	}
	
	.card-right {
		position: absolute;
		right: 0;
		top: 0;
		width: 50%;
		height: 100%;
		pointer-events: none;
		
		.decorative-circle {
			position: absolute;
			border-radius: 50%;
			opacity: 0.6;
		}
		
		.circle-1 {
			width: 300px;
			height: 300px;
			background: linear-gradient(135deg, rgba(102, 126, 234, 0.1), rgba(118, 75, 162, 0.1));
			top: -50px;
			right: -50px;
			animation: float 6s ease-in-out infinite;
		}
		
		.circle-2 {
			width: 200px;
			height: 200px;
			background: linear-gradient(135deg, rgba(240, 147, 251, 0.1), rgba(245, 87, 108, 0.1));
			bottom: -20px;
			right: 150px;
			animation: float 8s ease-in-out infinite reverse;
		}
		
		.circle-3 {
			width: 100px;
			height: 100px;
			background: linear-gradient(135deg, rgba(67, 233, 123, 0.1), rgba(56, 249, 215, 0.1));
			top: 50px;
			right: 300px;
			animation: float 7s ease-in-out infinite 1s;
		}
	}
}

.feature-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
	gap: 30px;
	margin-top: 40px;
	
	.feature-card {
		background: #fff;
		border-radius: 20px;
		padding: 30px;
		transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
		border: 1px solid rgba(0, 0, 0, 0.02);
		box-shadow: 0 4px 20px rgba(0, 0, 0, 0.02);
		display: flex;
		flex-direction: column;
		align-items: center;
		text-align: center;
		opacity: 0; /* 初始隐藏，等待动画 */
		
		&:hover {
			transform: translateY(-10px);
			box-shadow: 0 20px 40px rgba(102, 126, 234, 0.15);
			border-color: rgba(102, 126, 234, 0.2);
		}
		
		.feature-icon {
			width: 80px;
			height: 80px;
			border-radius: 50%;
			display: flex;
			align-items: center;
			justify-content: center;
			font-size: 32px;
			margin-bottom: 20px;
			transition: all 0.4s ease;
			
			&.feature-icon-1 { background: rgba(102, 126, 234, 0.1); color: #667eea; }
			&.feature-icon-2 { background: rgba(255, 107, 107, 0.1); color: #ff6b6b; }
			&.feature-icon-3 { background: rgba(0, 201, 167, 0.1); color: #00c9a7; }
			&.feature-icon-4 { background: rgba(255, 193, 7, 0.1); color: #ffc107; }
		}
		
		&:hover .feature-icon {
			transform: scale(1.1) rotate(5deg);
		}
		
		.feature-title {
			font-size: 20px;
			font-weight: 700;
			color: #2d3748;
			margin-bottom: 12px;
		}
		
		.feature-desc {
			font-size: 14px;
			color: #8e9aaf;
			line-height: 1.6;
		}
	}
}

@keyframes float {
	0%, 100% { transform: translateY(0); }
	50% { transform: translateY(-20px); }
}
</style>

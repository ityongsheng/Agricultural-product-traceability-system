<template>
	<div>
		<div class="login-container">
			<!-- 动态背景粒子效果 -->
			<div class="particles-background"></div>
			
			<!-- 背景轮播 -->
			<div class="login-swiper3">
				<div class="swiper-container mySwiper3">
					<div class="swiper-wrapper">
						<div class="swiper-slide" v-for="(item,index) in swiperList" :key="item.id">
							<div>
								<el-image :src="item.url" fit="cover"></el-image>
								<div class="overlay-gradient"></div>
							</div>
						</div>
					</div>
					<!-- Add Pagination -->
					<div class="swiper-pagination"></div>
					<!-- Add Arrows -->
					<div class="swiper-button-next">
						<span class="icon iconfont icon-jiantou18"></span>
					</div>
					<div class="swiper-button-prev">
						<span class="icon iconfont icon-jiantou39"></span>
					</div>
				</div>
			</div>

			<!-- 登录框 -->
			<el-form class="login_form animate__animated animate__fadeIn">
				<div class="login_form2">
					<!-- 标题区域 -->
					<div class="title-container">
						<div class="title-icon">🌾</div>
						<h1 class="main-title">农产品溯源系统</h1>
						<p class="sub-title">Agricultural Product Traceability System</p>
						<div class="title-divider"></div>
					</div>

					<!-- 输入字段 -->
					<div v-if="loginType==1" class="list-item">
						<div class="input-wrapper">
							<i class="el-icon-user input-icon"></i>
							<input 
								placeholder="请输入账号" 
								name="username" 
								type="text" 
								v-model="rulesForm.username"
								class="modern-input"
							>
						</div>
					</div>

					<div v-if="loginType==1" class="list-item">
						<div class="input-wrapper">
							<i class="el-icon-lock input-icon"></i>
							<input 
								placeholder="请输入密码" 
								name="password" 
								:type="showPassword?'text':'password'" 
								v-model="rulesForm.password"
								class="modern-input"
							>
							<span 
								class="password-toggle icon iconfont" 
								:class="showPassword?'icon-liulan13':'icon-liulan17'" 
								@click="showPassword=!showPassword"
							></span>
						</div>
					</div>

					<div class="list-item select-item" v-if="roles.length>1">
						<div class="input-wrapper">
							<i class="el-icon-s-custom input-icon"></i>
							<el-select v-model="rulesForm.role" placeholder="请选择角色" class="modern-select">
								<el-option 
									v-if="loginType==1||(loginType==2&&item.roleName!='管理员')" 
									v-for="item in roles" 
									:key="item.roleName" 
									:label="item.roleName" 
									:value="item.roleName" 
								/>
							</el-select>
						</div>
					</div>

					<!-- 按钮区域 -->
					<div class="login-btn">
						<div class="login-btn1">
							<el-button 
								v-if="loginType==1" 
								type="primary" 
								@click="login()" 
								class="loginInBt"
							>
								<span class="btn-text">立即登录</span>
								<i class="el-icon-right btn-icon"></i>
							</el-button>
						</div>

						<div class="register-divider">
							<span>或者</span>
						</div>

						<div class="login-btn2">
							<el-button type="primary" @click="register('xiaofeizhe')" class="register">
								<i class="el-icon-shopping-cart-2"></i>
								消费者注册
							</el-button>
							<el-button type="primary" @click="register('jingxiaoshang')" class="register">
								<i class="el-icon-office-building"></i>
								经销商注册
							</el-button>
							<el-button type="primary" @click="register('jianguanzhe')" class="register">
								<i class="el-icon-view"></i>
								监管者注册
							</el-button>
							<el-button type="primary" @click="register('shengchanzhe')" class="register">
								<i class="el-icon-s-home"></i>
								生产者注册
							</el-button>
						</div>
					</div>
				</div>
			</el-form>
		</div>
	</div>
</template>

<script>
	import 'animate.css'
	import menu from "@/utils/menu";
	import Swiper from "swiper";
	export default {
		data() {
			return {
				verifyCheck2: false,
				flag: false,
				baseUrl:this.$base.url,
				loginType: 1,
				rulesForm: {
					username: "",
					password: "",
					role: "",
				},
				menus: [],
				roles: [],
				tableName: "",
				showPassword: false,
				swiperList: [{"name":"01.jpg","uid":1728872474838,"url":"http://codegen.caihongy.cn/20241014/c185ab31094b425ba8ccaff35ca5e98b.jpg","status":"success"},{"name":"02.jpg","uid":1728872483409,"url":"http://codegen.caihongy.cn/20241014/c42ee4a5c8e94213bdd90745af97e15c.jpg","status":"success"},{"name":"03.jpg","uid":1728872489084,"url":"http://codegen.caihongy.cn/20241014/17534ced15cb47319cd779d24aa2a775.jpg","status":"success"}],
			};
		},
		mounted() {
			let menus = menu.list();
			this.menus = menus;

			for (let i = 0; i < this.menus.length; i++) {
				if (this.menus[i].hasBackLogin=='是') {
					this.roles.push(this.menus[i])
				}
			}

			setTimeout(()=>{
				new Swiper(".mySwiper3", {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"pagination":{"el":".swiper-pagination","clickable":true},"autoplay":{"delay":3000,"disableOnInteraction":false},"effect":"fade"})
			}, 500)
		},
		created() {

		},
		destroyed() {
		},
		components: {
		},
		methods: {

			//注册
			register(tableName){
				this.$storage.set("loginTable", tableName);
				this.$router.push({path:'/register',query:{pageFlag:'register'}})
			},
			// 登陆
			login() {

				if (!this.rulesForm.username) {
					this.$message.error("请输入用户名");
					return;
				}
				if (!this.rulesForm.password) {
					this.$message.error("请输入密码");
					return;
				}
				if(this.roles.length>1) {
					if (!this.rulesForm.role) {
						this.$message.error("请选择角色");
						return;
					}

					let menus = this.menus;
					for (let i = 0; i < menus.length; i++) {
						if (menus[i].roleName == this.rulesForm.role) {
							this.tableName = menus[i].tableName;
						}
					}
				} else {
					this.tableName = this.roles[0].tableName;
					this.rulesForm.role = this.roles[0].roleName;
				}
		
				this.loginPost()
			},
			loginPost() {
				this.$http({
					url: `${this.tableName}/login?username=${this.rulesForm.username}&password=${this.rulesForm.password}`,
					method: "post"
				}).then(({ data }) => {
					if (data && data.code === 0) {
						this.$storage.set("Token", data.token);
						this.$storage.set("role", this.rulesForm.role);
						this.$storage.set("sessionTable", this.tableName);
						this.$storage.set("adminName", this.rulesForm.username);
						this.$router.replace({ path: "/" });
					} else {
						this.$message.error(data.msg);
					}
				});
			},
		}
	}
</script>

<style lang="scss" scoped>
.login-container {
	min-height: 100vh;
	position: relative;
	display: flex;
	width: 100%;
	justify-content: center;
	align-items: center;
	overflow: hidden;
	background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);

	// 动态粒子背景
	.particles-background {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background: 
			radial-gradient(circle at 20% 50%, rgba(102, 126, 234, 0.3) 0%, transparent 50%),
			radial-gradient(circle at 80% 80%, rgba(240, 147, 251, 0.3) 0%, transparent 50%),
			radial-gradient(circle at 40% 20%, rgba(79, 172, 254, 0.2) 0%, transparent 50%);
		animation: particleMove 20s ease-in-out infinite;
	}

	@keyframes particleMove {
		0%, 100% {
			transform: scale(1) rotate(0deg);
		}
		50% {
			transform: scale(1.1) rotate(5deg);
		}
	}

	// 背景轮播
	.login-swiper3 {
		margin: 0 auto;
		z-index: 1;
		top: 0;
		left: 0;
		width: 100vw;
		position: fixed;
		height: 100vh;
		
		.swiper-container {
			.swiper-slide {
				div {
					width: 100%;
					height: 100vh;
					position: relative;
					
					.el-image {
						object-fit: cover;
						width: 100%;
						height: 100vh;
					}
					
					// 渐变遮罩层
					.overlay-gradient {
						position: absolute;
						top: 0;
						left: 0;
						width: 100%;
						height: 100%;
						background: linear-gradient(
							135deg,
							rgba(102, 126, 234, 0.6) 0%,
							rgba(118, 75, 162, 0.6) 50%,
							rgba(240, 147, 251, 0.6) 100%
						);
						mix-blend-mode: multiply;
					}
				}
			}
			
			.swiper-pagination{
				left: 0;
				bottom: 30px;
				width: 100%;
				
				::v-deep span.swiper-pagination-bullet {
					border-radius: 100%;
					margin: 0 6px;
					background: rgba(255, 255, 255, 0.5);
					display: inline-block;
					width: 10px;
					opacity: 0.6;
					height: 10px;
					transition: all 0.3s ease;
				}
				
				::v-deep span.swiper-pagination-bullet:hover {
					background: #fff;
					opacity: 1;
					transform: scale(1.2);
				}
				
				::v-deep span.swiper-pagination-bullet.swiper-pagination-bullet-active {
					background: #fff;
					opacity: 1;
					width: 30px;
					border-radius: 5px;
				}
			}
			
			.swiper-button-next,
			.swiper-button-prev {
				cursor: pointer;
				border-radius: 50%;
				margin: -24px 20px 0;
				z-index: 9999;
				top: 50%;
				background: rgba(255, 255, 255, 0.15);
				backdrop-filter: blur(10px);
				position: absolute;
				width: 48px;
				height: 48px;
				display: flex;
				align-items: center;
				justify-content: center;
				transition: all 0.3s ease;
				
				.iconfont {
					color: #fff;
					font-size: 20px;
				}
				
				&:hover {
					background: rgba(255, 255, 255, 0.25);
					transform: scale(1.1);
				}
			}
			
			.swiper-button-prev:after,
			.swiper-button-next:after {
				display:none;
			}
		}
	}

	// 登录表单
	.login_form {
		border-radius: 24px;
		padding: 50px;
		margin: 0;
		z-index: 1000;
		background: rgba(255, 255, 255, 0.95);
		backdrop-filter: blur(20px);
		-webkit-backdrop-filter: blur(20px);
		box-shadow: 
			0 20px 60px rgba(0, 0, 0, 0.3),
			0 0 0 1px rgba(255, 255, 255, 0.1) inset;
		width: 480px;
		max-width: 90%;
		position: relative;
		animation: slideInUp 0.6s ease-out;
		
		&::before {
			content: '';
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			height: 6px;
			background: linear-gradient(90deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
			border-radius: 24px 24px 0 0;
		}

		@keyframes slideInUp {
			from {
				opacity: 0;
				transform: translateY(50px);
			}
			to {
				opacity: 1;
				transform: translateY(0);
			}
		}

		.login_form2 {
			width: 100%;
		}

		// 标题容器
		.title-container {
			text-align: center;
			margin-bottom: 40px;
			
			.title-icon {
				font-size: 48px;
				margin-bottom: 15px;
				animation: float 3s ease-in-out infinite;
			}
			
			.main-title {
				font-size: 28px;
				font-weight: 700;
				background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
				-webkit-background-clip: text;
				-webkit-text-fill-color: transparent;
				margin-bottom: 8px;
				letter-spacing: 1px;
			}
			
			.sub-title {
				font-size: 13px;
				color: #8e9aaf;
				font-weight: 500;
				letter-spacing: 2px;
				text-transform: uppercase;
				margin-bottom: 20px;
			}
			
			.title-divider {
				width: 60px;
				height: 4px;
				background: linear-gradient(90deg, #667eea, #764ba2);
				margin: 0 auto;
				border-radius: 2px;
			}
		}

		// 输入项
		.list-item {
			margin-bottom: 24px;
			
			.input-wrapper {
				position: relative;
				display: flex;
				align-items: center;
				background: #f8f9fa;
				border-radius: 12px;
				border: 2px solid transparent;
				transition: all 0.3s ease;
				overflow: hidden;
				
				&:hover {
					border-color: rgba(102, 126, 234, 0.3);
					box-shadow: 0 4px 12px rgba(102, 126, 234, 0.1);
				}
				
				&:focus-within {
					border-color: #667eea;
					background: #fff;
					box-shadow: 0 4px 20px rgba(102, 126, 234, 0.2);
				}
				
				.input-icon {
					position: absolute;
					left: 18px;
					font-size: 18px;
					color: #8e9aaf;
					z-index: 1;
					transition: all 0.3s ease;
				}
				
				&:focus-within .input-icon {
					color: #667eea;
				}
			}
			
			.modern-input {
				border: none;
				background: transparent;
				padding: 16px 20px 16px 52px;
				color: #2d3748;
				width: 100%;
				font-size: 15px;
				font-weight: 500;
				outline: none;
				
				&::placeholder {
					color: #bcc1ca;
					font-weight: 400;
				}
			}
			
			.password-toggle {
				position: absolute;
				right: 18px;
				cursor: pointer;
				color: #8e9aaf;
				font-size: 18px;
				transition: all 0.3s ease;
				z-index: 1;
				
				&:hover {
					color: #667eea;
				}
			}
		}

		// 选择框特殊样式
		.select-item {
			.input-wrapper {
				::v-deep .el-select {
					width: 100%;
				}
				
				::v-deep .el-input__inner {
					border: none;
					background: transparent;
					padding: 16px 20px 16px 52px;
					color: #2d3748;
					font-size: 15px;
					font-weight: 500;
					height: 52px;
					
					&::placeholder {
						color: #bcc1ca;
					}
				}
				
				::v-deep .el-input__icon {
					line-height: 52px;
				}
			}
		}

		// 按钮区域
		.login-btn {
			margin-top: 32px;
			
			.login-btn1 {
				margin-bottom: 24px;
				
				.loginInBt {
					width: 100%;
					height: 52px;
					background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
					border: none;
					border-radius: 12px;
					font-size: 16px;
					font-weight: 600;
					letter-spacing: 1px;
					color: #fff;
					display: flex;
					align-items: center;
					justify-content: center;
					gap: 8px;
					position: relative;
					overflow: hidden;
					transition: all 0.3s ease;
					box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
					
					&::before {
						content: '';
						position: absolute;
						top: 0;
						left: -100%;
						width: 100%;
						height: 100%;
						background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);
						transition: left 0.5s ease;
					}
					
					&:hover {
						transform: translateY(-2px);
						box-shadow: 0 6px 25px rgba(102, 126, 234, 0.5);
						
						&::before {
							left: 100%;
						}
					}
					
					&:active {
						transform: translateY(0);
					}
					
					.btn-text {
						position: relative;
						z-index: 1;
					}
					
					.btn-icon {
						position: relative;
						z-index: 1;
						transition: transform 0.3s ease;
					}
					
					&:hover .btn-icon {
						transform: translateX(4px);
					}
				}
			}
			
			.register-divider {
				text-align: center;
				margin: 24px 0;
				position: relative;
				
				&::before,
				&::after {
					content: '';
					position: absolute;
					top: 50%;
					width: 40%;
					height: 1px;
					background: linear-gradient(to right, transparent, #e2e8f0);
				}
				
				&::before {
					left: 0;
				}
				
				&::after {
					right: 0;
					background: linear-gradient(to left, transparent, #e2e8f0);
				}
				
				span {
					background: #fff;
					padding: 0 15px;
					color: #8e9aaf;
					font-size: 13px;
					font-weight: 500;
					position: relative;
					z-index: 1;
				}
			}
			
			.login-btn2 {
				display: grid;
				grid-template-columns: repeat(2, 1fr);
				gap: 12px;
				
				.register {
					border: 2px solid #e2e8f0;
					background: #fff;
					color: #667eea;
					font-size: 14px;
					font-weight: 600;
					height: 48px;
					border-radius: 10px;
					display: flex;
					align-items: center;
					justify-content: center;
					gap: 6px;
					transition: all 0.3s ease;
					
					i {
						font-size: 16px;
					}
					
					&:hover {
						border-color: #667eea;
						background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
						color: #fff;
						transform: translateY(-2px);
						box-shadow: 0 4px 12px rgba(102, 126, 234, 0.3);
					}
					
					&:active {
						transform: translateY(0);
					}
				}
			}
		}
	}
}
</style>

<template>
	<div class="navbar">
		<div class="title">
			<div class="logo-wrapper">
				<span class="logo-icon">🌾</span>
				<span class="title-name">{{this.$project.projectName}}</span>
			</div>
		</div>
		<div class="dropdown-box">
			<div class="el-dropdown-link">
				<el-image 
					v-if="user" 
					:src="avatar?this.$base.url + avatar : require('@/assets/img/avator.png')" 
					fit="cover"
					class="avatar-image"
				></el-image>
				<div class="user-info">
					<span class="label">欢迎您,</span>
					<span class="nickname">{{this.$storage.get('adminName')}}</span>
				</div>
			</div>
			<div class="top-el-dropdown-menu-2">
				<div class="menu-item item1" @click="handleCommand('')">
					<i class="el-icon-s-home"></i>
					<span>首页</span>
				</div>
				<div class="menu-item item2" @click="handleCommand('center')">
					<i class="el-icon-user"></i>
					<span>个人中心</span>
				</div>
				<div class="menu-item item4" @click="handleCommand('logout')">
					<i class="el-icon-switch-button"></i>
					<span>退出登录</span>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import {
		Loading
	} from 'element-ui';
	import axios from 'axios';
	export default {
		data() {
			return {
				dialogVisible: false,
				ruleForm: {},
				user: null,
			};
		},
		created() {
		},
		computed: {
			avatar(){
				return this.$storage.get('headportrait')?this.$storage.get('headportrait'):''
			},
		},
		mounted() {
			let sessionTable = this.$storage.get("sessionTable")
			this.$http({
				url: sessionTable + '/session',
				method: "get"
			}).then(({
				data
			}) => {
				if (data && data.code === 0) {
					if(sessionTable == 'xiaofeizhe') {
						this.$storage.set('headportrait',data.data.touxiang)
					}
					if(sessionTable == 'jingxiaoshang') {
						this.$storage.set('headportrait',data.data.touxiang)
					}
					if(sessionTable == 'jianguanzhe') {
						this.$storage.set('headportrait',data.data.touxiang)
					}
					if(sessionTable == 'shengchanzhe') {
						this.$storage.set('headportrait',data.data.touxiang)
					}
					if(sessionTable == 'users') {
						this.$storage.set('headportrait',data.data.image)
					}
					this.$storage.set('userForm',JSON.stringify(data.data))
					this.user = data.data;
					this.$storage.set('userid',data.data.id);
				} else {
					let message = this.$message
					message.error(data.msg);
				}
			});
		},
		methods: {
			handleCommand(name) {
				if (name == 'logout') {
					this.onLogout()
				} 
				else {
					let router = this.$router
					name = '/'+name
					router.push(name)
				}
			},
			onLogout() {
				let storage = this.$storage
				let router = this.$router
				storage.clear()
				this.$store.dispatch('tagsView/delAllViews')
				router.replace({
					name: "login"
				});
			},
			onIndexTap(){
				localStorage.setItem("frontToken", localStorage.getItem("Token"));
				localStorage.setItem("frontRole", localStorage.getItem("role"));
				localStorage.setItem("frontSessionTable", localStorage.getItem("sessionTable"));
				localStorage.setItem("frontHeadportrait", localStorage.getItem("headportrait"));
				localStorage.setItem("UserTableName", localStorage.getItem("sessionTable"));
				localStorage.setItem("frontUserid", localStorage.getItem("userid"));
				localStorage.setItem("username", localStorage.getItem("adminName"));
				window.location.href = `${this.$base.indexUrl}`
			},
		}
	};
</script>


<style lang="scss" scoped>
	.navbar {
		height: 70px;
		display: flex;
		align-items: center;
		justify-content: space-between;
		padding: 0 30px;
		position: relative;
		
		.title {
			position: static;
			
			.logo-wrapper {
				display: flex;
				align-items: center;
				gap: 12px;
				
				.logo-icon {
					font-size: 32px;
					animation: float 3s ease-in-out infinite;
					filter: drop-shadow(0 2px 8px rgba(102, 126, 234, 0.3));
				}
				
				.title-name {
					font-size: 24px;
					font-weight: 700;
					background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
					-webkit-background-clip: text;
					-webkit-text-fill-color: transparent;
					letter-spacing: 0.5px;
					position: relative;
					
					&::after {
						content: '';
						position: absolute;
						bottom: -4px;
						left: 0;
						width: 0;
						height: 3px;
						background: linear-gradient(90deg, #667eea, #764ba2);
						border-radius: 2px;
						transition: width 0.3s ease;
					}
					
					&:hover::after {
						width: 100%;
					}
				}
			}
		}
		
		.dropdown-box {
			display: flex;
			align-items: center;
			gap: 30px;
			position: static;
			
			.el-dropdown-link {
				display: flex;
				align-items: center;
				gap: 12px;
				cursor: pointer;
				padding: 8px 16px;
				border-radius: 12px;
				transition: all 0.3s ease;
				
				&:hover {
					background: rgba(102, 126, 234, 0.1);
				}
				
				.avatar-image {
					width: 42px;
					height: 42px;
					border-radius: 50%;
					object-fit: cover;
					display: block;
					border: 3px solid transparent;
					background: linear-gradient(white, white) padding-box,
								linear-gradient(135deg, #667eea, #764ba2) border-box;
					transition: all 0.3s ease;
					box-shadow: 0 4px 12px rgba(102, 126, 234, 0.2);
					
					&:hover {
						transform: scale(1.05);
						box-shadow: 0 6px 16px rgba(102, 126, 234, 0.3);
					}
				}
				
				.user-info {
					display: flex;
					flex-direction: column;
					gap: 2px;
					
					.label {
						font-size: 12px;
						color: #8e9aaf;
						display: block;
					}
					
					.nickname {
						font-size: 15px;
						font-weight: 600;
						color: #2d3748;
						display: block;
					}
				}
			}
			
			.top-el-dropdown-menu-2 {
				display: flex;
				align-items: center;
				gap: 8px;
				
				.menu-item {
					cursor: pointer;
					padding: 10px 18px;
					border-radius: 10px;
					font-size: 14px;
					font-weight: 500;
					color: #5a6c7d;
					display: flex;
					align-items: center;
					gap: 6px;
					transition: all 0.3s ease;
					position: relative;
					overflow: hidden;
					
					i {
						font-size: 16px;
						transition: transform 0.3s ease;
					}
					
					&::before {
						content: '';
						position: absolute;
						top: 0;
						left: 0;
						width: 100%;
						height: 100%;
						background: linear-gradient(135deg, rgba(102, 126, 234, 0.1), rgba(118, 75, 162, 0.1));
						opacity: 0;
						transition: opacity 0.3s ease;
						border-radius: 10px;
					}
					
					&:hover {
						color: #667eea;
						transform: translateY(-2px);
						box-shadow: 0 4px 12px rgba(102, 126, 234, 0.2);
						
						&::before {
							opacity: 1;
						}
						
						i {
							transform: scale(1.1);
						}
					}
					
					&:active {
						transform: translateY(0);
					}
					
					span {
						position: relative;
						z-index: 1;
					}
				}
				
				.item4 {
					&:hover {
						color: #ff6b6b;
						
						&::before {
							background: linear-gradient(135deg, rgba(255, 107, 107, 0.1), rgba(250, 112, 154, 0.1));
						}
					}
				}
			}
		}
	}
	
	@keyframes float {
		0%, 100% {
			transform: translateY(0);
		}
		50% {
			transform: translateY(-5px);
		}
	}
</style>

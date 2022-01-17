<template>
  <div class="login-container">

    <el-form
      ref="loginForm"
      :model="loginForm"
      :rules="loginRules"
      class="login-form"
      auto-complete="on"
      label-position="left">

      <div class="title-container">
        <h3 class="title">智慧医疗系统-系统人员登录</h3>
      </div>

      <el-form-item prop="cellphone">
        <span class="svg-container">
          <svg-icon icon-class="cellphone" />
        </span>

        <el-input ref="cellphone"
                  tabindex="1"
                  placeholder="手机号码"
                  name="cellphone"
                  type="text"
                  v-model="loginForm.cellphone"
                  auto-complete="on"/>

      </el-form-item>

      <el-form-item prop="password">
        <span class="svg-container">
          <svg-icon icon-class="password" />
        </span>
        <!--
          @keyup.enter.native
          @keyup是 v-on:keyup 监控键盘点击时间
          .enter 是指点击回车按钮
          .native 触发原生事件
        -->
        <el-input
          :key="passwordType"
          ref="password"
          v-model="loginForm.password"
          :type="passwordType"
          placeholder="登录密码"
          name="password"
          tabindex="2"
          auto-complete="on"
          @keyup.enter.native="handleLogin"
        />
        <span class="show-pwd" @click="showPwd">
          <svg-icon :icon-class="passwordType === 'password' ? 'eye' : 'eye-open'" />
        </span>
      </el-form-item>

      <el-button :loading="loading" type="primary" style="width:30%;margin-bottom:30px;margin-left: 30px;"
                 @click.native.prevent="handleLogin">
            登录
      </el-button>
      <!--
        @click.native.prevent
        在为vue的组件添加事件时,组件上加 .native 才能触发原生的事件,否则会触发组件Item自定义的事件
        prevent用来阻止默认,相当于 even.preventDafault()

        由于此按钮在 item 外,所以可以直接写 @click
      -->
      <el-button :loading="loading" type="primary" style="width:30%;margin-bottom:30px;margin-left: 100px;"
                 @click.native.prevent="resetLogin">
        重置
      </el-button>

      <!--
        <div class="tips">
          <span style="margin-right:20px;">username: admin</span>
          <span> password: any</span>
        </div>
      -->
    </el-form>
  </div>
</template>

<script>
import { validCellphone, validPassword } from '@/utils/validate'

export default {
  name: 'Login',
  data() {
    const validateCellphone = (rule, value, callback) => {
      if (value=="") {
        callback(new Error('请输入手机号码'))
      } else if (!validCellphone(value)) {
        //手机号码正则验证不通过
        callback(new Error('请输入正确的手机号码'))
      } else{
        callback()
      }
    }
    const validatePassword = (rule, value, callback) => {
      if (value=="") {
        callback(new Error('请输入登录密码'))
      } else if (!validPassword(value)){
        //登录密码正则验证不通过
        callback(new Error("请输入正确的登录密码"))
      } else{
        callback()
      }
    }
    return {
      //表单内容
      loginForm: {
        cellphone: '',
        password: ''
      },
      //验证规则
      loginRules: {
        cellphone: [{ required: true, trigger: 'blur', validator: validateCellphone }],
        password: [{ required: true, trigger: 'blur', validator: validatePassword }]
      },
      loading: false,
      passwordType: 'password',
      redirect: undefined
    }
  },


  watch: {
    $route: {
      handler: function(route) {
        this.redirect = route.query && route.query.redirect
      },
      immediate: true
    }
  },


  methods: {
    /**
     * 显示或隐藏登录密码
     */
    showPwd() {
      if (this.passwordType === 'password') {
        this.passwordType = ''
      } else {
        this.passwordType = 'password'
      }
      this.$nextTick(() => {
        this.$refs.password.focus()
      })
    },
    /**
     * 点击登录
     */
    handleLogin() {
      this.$refs.loginForm.validate(valid => {
        if (valid) {
         //如果验证通过
          this.loading = true
          //异步请求
          this.$store.dispatch('user/login', this.loginForm).then(() => {
            //跳转主页面
            this.$router.push({ path: this.redirect || '/' })
            this.loading = false
          }).catch(() => {
            this.loading = false
          })
        } else {
          console.log('提交登录信息失败!!')
          return false
        }
      })
    },
    //重置输入框
    resetLogin(){
      this.$refs.loginForm.resetFields();
    }
  }
}
</script>

<style lang="scss">
/* 修复input 背景不协调 和光标变色 */
/* Detail see https://github.com/PanJiaChen/vue-element-admin/pull/927 */

$bg:#283443;
$light_gray:#fff;
$cursor: #fff;

@supports (-webkit-mask: none) and (not (cater-color: $cursor)) {
  .login-container .el-input input {
    color: $cursor;
  }
}

/* reset element-ui css */
.login-container {
  .el-input {
    display: inline-block;
    height: 47px;
    width: 85%;

    input {
      background: transparent;
      border: 0px;
      -webkit-appearance: none;
      border-radius: 0px;
      padding: 12px 5px 12px 15px;
      color: $light_gray;
      height: 47px;
      caret-color: $cursor;

      &:-webkit-autofill {
        box-shadow: 0 0 0px 1000px $bg inset !important;
        -webkit-text-fill-color: $cursor !important;
      }
    }
  }

  .el-form-item {
    border: 1px solid rgba(255, 255, 255, 0.1);
    background: rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    color: #454545;
  }
}
</style>

<style lang="scss" scoped>
$bg:#2d3a4b;
$dark_gray:#889aa4;
$light_gray:#eee;

.login-container {
  min-height: 100%;
  width: 100%;
  background-color: $bg;
  overflow: hidden;

  .login-form {
    position: relative;
    width: 520px;
    max-width: 100%;
    padding: 160px 35px 0;
    margin: 0 auto;
    overflow: hidden;
  }

  .tips {
    font-size: 14px;
    color: #fff;
    margin-bottom: 10px;

    span {
      &:first-of-type {
        margin-right: 16px;
      }
    }
  }

  .svg-container {
    padding: 6px 5px 6px 15px;
    color: $dark_gray;
    vertical-align: middle;
    width: 30px;
    display: inline-block;
  }

  .title-container {
    position: relative;

    .title {
      font-size: 26px;
      color: $light_gray;
      margin: 0px auto 40px auto;
      text-align: center;
      font-weight: bold;
    }
  }

  .show-pwd {
    position: absolute;
    right: 10px;
    top: 7px;
    font-size: 16px;
    color: $dark_gray;
    cursor: pointer;
    user-select: none;
  }
}
</style>

import router from './router'
import store from './store'
import { Message } from 'element-ui'
import NProgress from 'nprogress' // progress bar
import 'nprogress/nprogress.css' // progress bar style
import { getToken } from '@/utils/auth' // get token from cookie
import getPageTitle from '@/utils/get-page-title'

NProgress.configure({ showSpinner: false }) // NProgress Configuration

const whiteList = ['/login'] // no redirect whitelist
/**
 * vue每次发送请求都会在这里进行校验权限
 */
router.beforeEach(async(to, from, next) => {
  // start progress bar
  NProgress.start()

  // set page title
  //设置页面名称,将子页面名称添加到总页面名称前
  document.title = getPageTitle(to.meta.title)

  // determine whether the user has logged in
  //用户登录后会有token
  const hasToken = getToken()

  if (hasToken) {
    //如果用户登陆了, 那么就hasToken
    if (to.path === '/login') {
      //用户已经登录,登录页面重定向到主页面
      // if is logged in, redirect to the home page
      next({ path: '/' })
      NProgress.done()
    } else {
      //用户去登录页面以外的页面,获得姓名,有姓名进页面
      const hasGetUserInfo = store.getters.name
      if (hasGetUserInfo) {
        next()
      } else {
        //没有获得用户姓名，发送请求去后台获得用户信息
        try {
          // get user info
          await store.dispatch('user/getInfo').then(() => {
           //将动态写入store/getters 中的 routers 属性加到 router/index的constantRoutes路由后
            //实现动态权限
            router.options.routes = store.getters.routers
            next()
          })

          //next()
        } catch (error) {
          // remove token and go to login page to re-login
          await store.dispatch('user/resetToken')
          Message.error(error || 'Has Error')
          next(`/login?redirect=${to.path}`)
          NProgress.done()
        }
      }
    }
  } else {
    /* has no token*/

    if (whiteList.indexOf(to.path) !== -1) {
      // in the free login whitelist, go directly
      next()
    } else {
      // other pages that do not have permission to access are redirected to the login page.
      next(`/login?redirect=${to.path}`)
      NProgress.done()
    }
  }
})

router.afterEach(() => {
  // finish progress bar
  NProgress.done()
})

import { login, logout, getInfo } from '@/api/user'
import { getToken, setToken, removeToken } from '@/utils/auth'
import { constantRoutes, resetRouter,notFoundRouter } from '@/router'
import routerFormat  from '@/utils/router'

const getDefaultState = () => {
  return {
    token: getToken(),
    name: '',
    avatar: ''
  }
}

const state = getDefaultState()

const mutations = {
  RESET_STATE: (state) => {
    Object.assign(state, getDefaultState())
  },
  SET_TOKEN: (state, token) => {
    state.token = token
  },
  SET_NAME: (state, name) => {
    state.name = name
  },
  SET_AVATAR: (state, avatar) => {
    state.avatar = avatar
  },
  //将根据用户所获得的的路由器列表添加到系统的常量状态中
  SET_ROUTERS: (state,routers) =>{
    state.addRouters =routers
    //将 routers 和 404 放在 路由最后面
    state.routers  = constantRoutes.concat(routers).concat(notFoundRouter);
  }
}
/**
 * 提交用户登录信息,响应信息中有token
 * @type {{logout({commit: *, state: *}): Promise<unknown>, getInfo({commit: *, state: *}): Promise<unknown>, login({commit: *}, *): Promise<unknown>, resetToken({commit: *}): Promise<unknown>}}
 */
const actions = {
  // user login
  //userInfo 用户登录信息src/views/login/index.vue(this.loginForm)
  login({ commit }, userInfo) {
    //拿出登录页面表单中的信息
    const { cellphone, password } = userInfo
    return new Promise((resolve, reject) => {
      //发送登录请求
      login({ cellphone: cellphone.trim(), password: password }).then(response => {
        //登录成功,
        const { data } = response
        console.log(data.token)
        commit('SET_TOKEN', data.token)
        setToken(data.token)
        resolve()
      }).catch(error => {
        reject(error)
      })
    })
  },

  // get user info
  /**
   * 用户登录成功后,会去获得用户信息
   * @param commit
   * @param state
   * @return {Promise<unknown>}
   */
  getInfo({ commit, state }) {
    return new Promise((resolve, reject) => {
      getInfo(state.token).then(response => {
        //响应信息
        const { data } = response

        if (!data) {
          return reject('验证失败,请重新登陆')
        }

        console.log("下面是data")
        console.log(data)

        //响应信息中有用户姓名和头像
        const { name, avatar } = data.adminVO
        commit('SET_NAME', name)
        commit('SET_AVATAR', avatar)

        //循环路由结果,去掉二级路由中的children 属性
        for( var index in data.routerVOList){
          //一级路由
          var router  =  data.routerVOList[index]
          //一级路由的children,二级路由列表
          var children  = router.children
          //循环二级路由列表
          for (var i in children){
            //获得二级路由
            var child  = children[i]
            //删除二级路由的children属性
            delete child.children
          }
        }
        console.log("下面是格式化前路由列表")
        console.log(data.routerVOList)
        //将路由列表格式化后，添加到系统常量中
        commit("SET_ROUTERS", routerFormat(data.routerVOList))
        resolve(data)
      }).catch(error => {
        reject(error)
      })
    })
  },

  // user logout
  logout({ commit, state }) {
    return new Promise((resolve, reject) => {
      logout(state.token).then(() => {
        removeToken() // must remove  token  first
        resetRouter()
        commit('RESET_STATE')
        resolve()
      }).catch(error => {
        reject(error)
      })
    })
  },

  // remove token
  resetToken({ commit }) {
    return new Promise(resolve => {
      removeToken() // must remove  token  first
      commit('RESET_STATE')
      resolve()
    })
  }
}

export default {
  namespaced: true,
  state,
  mutations,
  actions
}


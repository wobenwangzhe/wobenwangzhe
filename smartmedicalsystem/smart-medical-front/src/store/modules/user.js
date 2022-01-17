import { login, logout, getInfo } from '@/api/user'
import { getToken, setToken, removeToken } from '@/utils/auth'
import { resetRouter } from '@/router'

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
        //响应信息中有用户姓名和头像
        const { name, avatar } = data

        commit('SET_NAME', name)
        commit('SET_AVATAR', avatar)
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


import request from '@/utils/request'

export function login(data) {
  /**
   * 用户登录的请求信息
   */
  return request({
    url: 'http://localhost:20000/system/consumer/admin/login',
    method: 'post',
    data
  })
}

/**
 * 根据token获得用户信息
 * @param token
 * @return {AxiosPromise}
 */
export function getInfo(token) {
  return request({
    url: 'http://localhost:20000/system/consumer/admin/info',
    method: 'get',
    params: { token }
  })
}

/**
 * 用户退出登录
 * @return {AxiosPromise}
 */
export function logout() {
  return request({
    url: '/vue-admin-template/user/logout',
    method: 'post'
  })
}

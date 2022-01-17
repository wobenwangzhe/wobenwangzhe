/**
 * Created by PanJiaChen on 16/11/18.
 */

/**
 * @param {string} path
 * @returns {Boolean}
 */
export function isExternal(path) {
  return /^(https?:|mailto:|tel:)/.test(path)
}

/**
 * 验证用户输入的手机号码
 * @param {string} str 手机号码
 * @returns {Boolean} 是否验证通过
 */
export function validCellphone(str) {
  let pattern = /1[0-9]{10}/;
  return pattern.test(str);
}

/**
 * 验证登录密码
 * @param {string}str 登录密码
 * @return {boolean} 是否验证通过
 */
export function validPassword(str) {
  let pattern = /[A-Za-z0-9_#]{6,}/;
  return pattern.test(str);
}

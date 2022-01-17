import defaultSettings from '@/settings'

const title = defaultSettings.title || 'Vue Admin Template'
/**
 * 将传入的 pageTitle 添加到 系统页面总名称之前,并返回
 * @param pageTitle
 * @return {"智慧医疗"|"Vue Admin Template"|`${string} - 智慧医疗`|`${string} - Vue Admin Template`}
 */
export default function getPageTitle(pageTitle) {
  if (pageTitle) {
    return `${pageTitle} - ${title}`
  }
  return `${title}`
}

/**
 * 验证手机号
 */
export function isMobile(str) {
    return /^1[3-9]\d{9}$/.test(str)
}

/**
 * 验证邮箱
 */
export function isEmail(str) {
    return /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/.test(str)
}

/**
 * 验证URL
 */
export function isURL(str) {
    return /^https?:\/\/(([a-zA-Z0-9_-])+(\.)?)*(:\d+)?(\/((\.)?(\?)?=?&?[a-zA-Z0-9_-](\?)?)*)*$/i.test(str)
}

/**
 * 验证身份证号
 */
export function isIdCard(str) {
    return /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/.test(str)
}

/**
 * 验证是否为空
 */
export function isEmpty(str) {
    return str === null || str === undefined || str === ''
}

/**
 * 验证数字
 */
export function isNumber(str) {
    return /^[0-9]*$/.test(str)
}

/**
 * 验证整数
 */
export function isInteger(str) {
    return /^-?\d+$/.test(str)
}

/**
 * 验证整数 (别名)
 */
export function isIntNumer(str) {
    return /^-?\d+$/.test(str)
}

/**
 * 验证小数
 */
export function isDecimal(str) {
    return /^-?\d+\.\d+$/.test(str)
}

export default {
    isMobile,
    isEmail,
    isURL,
    isIdCard,
    isEmpty,
    isNumber,
    isInteger,
    isIntNumer,
    isDecimal
}

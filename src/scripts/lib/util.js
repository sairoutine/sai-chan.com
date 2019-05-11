const root          = document.querySelector('#root')
const load_view     = document.querySelector('.load-view')
const motion_yukari = document.querySelector('.motion-yukari')
const motion_reimu  = document.querySelector('.motion-reimu')
const top_page      = document.querySelector('.top-page')
const other_page    = document.querySelector('.other-page')
const about_page    = document.querySelector('.about-page')
const profile_page  = document.querySelector('.profile-page')
const product_page  = document.querySelector('.product-page')
const request_page    = document.querySelector('.request-page')

/**
 * 画像のプリロード
 * @param images   : 画像パスの配列
 * @param fn       : コールバック関数
 * @param progress : 読み込み状況取得用コールバック関数
 */
export const preload = (images, fn, progress) => {
  const len  = images.length
  let load = 0

  images.forEach((image, key) => {
    const img = new Image()
    img.src = image
    img.onload = () => {
      load += 1
      progress({
        size : len,
        load : load,
        per  : load / len
      })

      if(load >= len) fn()
    }
  })
}

/**
 * スマートフォンかどうかの真偽
 * @return bool
 */
export const isSP = () => {
  const useragent = navigator.userAgent.toLowerCase()
  const reg = /(iphone|ipad|ipod|android|mobile)/

  return reg.test(useragent)
}

/**
 * PCかどうかの真偽
 * return bool
 */
export const isPC = () => {
  return !isSP()
}

/**
 * load-viewの終了監視
 */
export const bindLoadView = () => {
  document.querySelector('.load-view__bg div:nth-child(3)')
    .addEventListener('animationend', e => {
    if(e.animationName === 'load-view__fall-bg-1') {
      root.removeChild(load_view)
      motion_yukari.setAttribute('data-state', 'start')

      bindMotionYukari()
    }
  })
}

/**
 * motion-yukariの終了監視
 */
export const bindMotionYukari = () => {
  document.querySelector('.motion-yukari__end .text')
    .addEventListener('animationend', e => {
    if(e.animationName === 'fadeout') {
      root.removeChild(motion_yukari)
      motion_reimu.setAttribute('data-state', 'start')

      bindMotionReimu()
    }
  })
}

/**
 * motion-reimuの終了監視
 */
export const bindMotionReimu = () => {
  document.querySelector('.motion-reimu__end')
    .addEventListener('animationend', e => {
    if(e.animationName === 'motion-reimu__end-2') {
      root.removeChild(motion_reimu)
      top_page.setAttribute('data-state', 'start')
      document.querySelector('.skip-button').style.display = 'none'
    }
  })
}

/**
 * ナビゲーションのイベントを監視
 */
export const bindNavigation = () => {
  const nav = document.querySelectorAll('.top-page__nav a')
  nav.forEach(n => {
    n.addEventListener('click', e => {
      e.preventDefault()
      other_page.style.display = 'block'
      other_page.setAttribute('data-state', 'active')

      if(e.target.title === 'about')
        about_page.style.display = 'block'
      else if(e.target.title === 'profile')
        profile_page.style.display = 'block'
      else if(e.target.title === 'request')
        request_page.style.display = 'block'
      else
        product_page.style.display = 'block'
    })
  })
}

/**
 * 閉じるボタンのイベント監視
 */
export const bindCloseBtn = () => {
  document.querySelector('.other-page__close-btn')
    .addEventListener('click', e => {
    e.preventDefault()

    other_page.setAttribute('data-state', 'passive')
    about_page.style.display   = 'none'
    profile_page.style.display = 'none'
    product_page.style.display = 'none'
    request_page.style.display = 'none'
    setTimeout(() => { other_page.style.display = 'none' }, 600)
  })
}

/**
 * スキップボタンのイベント監視
 */
export const bindSkipButton = () => {
  document.querySelector('.skip-button').addEventListener('click', e => {
    e.preventDefault()

    if(document.querySelector('.load-view'))
      root.removeChild(load_view)
    if(document.querySelector('.motion-yukari'))
      root.removeChild(motion_yukari)
    if(document.querySelector('.motion-reimu'))
      root.removeChild(motion_reimu)

    top_page.setAttribute('data-state', 'start')
    e.target.style.display = 'none'
  })
}

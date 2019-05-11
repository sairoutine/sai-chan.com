import riot from 'riot'
import * as util from './lib/util'
import preload_data from './config/preload'
import profile_data from './config/profile'
import product_data from './config/product'

// components
import './components/about-box.tag'
import './components/profile-box.tag'
import './components/product-box.tag'
import './components/request-box.tag'

// bind
util.bindLoadView()
util.bindNavigation()
util.bindCloseBtn()
util.bindSkipButton()

// preload
util.preload(preload_data, () => {
  console.log('fin preload.')
}, data => {})

// mount
riot.mount('about-box',   {})
riot.mount('profile-box', { profile: profile_data })
riot.mount('product-box', { product: product_data })
riot.mount('request-box',   {})

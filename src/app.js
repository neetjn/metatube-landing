import * as riot from 'riot'
import foobarIpsum from 'foobar-ipsum'
import Landing from './containers/landing.tag'

import './assets/styles/metatube.css'

const ipsum = new foobarIpsum({
  size: {
    sentence: 10,
    paragraph: 4
  }
})

riot.install(component => {
  component.ipsum = ipsum
})

import reload from '@riotjs/hot-reload'

const component = riot.component(Landing)
reload(component)
component(document.querySelector('#app'))

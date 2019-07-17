import * as riot from 'riot'
import * as firebase from 'firebase'
import foobarIpsum from 'foobar-ipsum'

import Config from './config'
import Landing from './containers/landing.tag'

import './assets/styles/metatube.css'

firebase.initializeApp(Config.firebase)
const firestore = firebase.firestore()

const ipsum = new foobarIpsum({
  size: {
    sentence: 10,
    paragraph: 4
  }
})

riot.install(component => {
  component.Constants = Config.constants
  component.Firestore = firestore
  component.ipsum = ipsum
})

import reload from '@riotjs/hot-reload'

const component = riot.component(Landing)

reload(component)
component(document.querySelector('#app'))

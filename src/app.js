import * as riot from 'riot'
import foobarIpsum from 'foobar-ipsum'
import Landing from './containers/landing.tag'

const ipsum = new foobarIpsum({
  size: {
    sentence: 10,
    paragraph: 4
  }
})

riot.install(component => {
  component.ipsum = ipsum
})

riot.component(Landing)(document.querySelector('#app'))

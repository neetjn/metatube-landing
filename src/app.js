import { riot, component } from 'riot'
import foobarIpsum from 'foobar-ipsum'
import Landing from './containers/landing.tag'

const ipsum = foobarIpsum({
  size: {
    sentence: 10,
    paragraph: 4
  }
})

riot.install(component => {
  component.ipsum = ipsum
})

component(Landing)(document.querySelector('#app'))

{
  Comps
  render
} = require './cfxRW.coffee'

{
  style
  div
} = Comps

Home = require './template/Home/index.coffee'
styles = require './static/style.less'

render (
  div {}
  ,
    style
      dangerousInnerHtml:
        __html: styles.toString()
  ,
    Home {}
), document.getElementById 'app'

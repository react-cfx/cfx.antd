echo = -> console.log arguments[0]
{
  cfx
  cfxify
  Comps
  Antd
  Router
} = require '../../cfxRW.coffee'

{ Link } = Router

{
  style
  header
  div
  span
  img
} = Comps

{
  Select
  Menu
  MenuItem
  Row
  Col
  Icon
  Button
} = Antd

module.exports = cfx

  render: ->

    header
      id: 'header'
    ,
      Row {}
      ,
        Col {
          # lg: 4, md: 6, sm: 7, xs: 24
        }
        ,
          Icon type: 'menu'
        ,
          Link
            to: '/'
            id: 'logo'
          ,
            img
              alt: 'logo'
              src: 'https://t.alipayobjects.com/images/rmsweb/T1B9hfXcdvXXXXXXXX.svg'
      ,
        Col {
          # lg: 20, md: 18, sm: 17, xs: 0
        }
        # ,
        #   div id: 'search-box'
        ,
          Menu id: 'nav'
          ,
            MenuItem key: 'home'
            ,
              Link to: '/'
              ,
                span {}
                , '首页'
          ,
            MenuItem key: 'docs/practice'
            ,
              Link to: '/docs/practice/cases'
              ,
                span {}
                , '实践'
          ,
            MenuItem key: 'docs/pattern'
            ,
              Link to: '/docs/pattern/navigation'
              ,
                span {}
                , '模式'
          ,
            MenuItem key: 'docs/react'
            ,
              Link to: '/docs/react/introduce'
              ,
                span {}
                , '组件'
          ,
            MenuItem key: 'docs/spec'
            ,
              Link to: '/docs/spec/introduce'
              ,
                span {}
                , '语言'
          ,
            MenuItem key: 'docs/resource'
            ,
              Link to: '/docs/resource/download'
              ,
                span {}
                , '资源'

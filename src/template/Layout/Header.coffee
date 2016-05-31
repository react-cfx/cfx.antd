echo = -> console.log arguments[0]
{
  RW
  cfx
  # cfxify
  Comps
  Antd
  Router
  classNames
} = require '../../cfxRW.coffee'

{ Link } = Router

antd = require 'antd'
{
#   style
  header
  div
  span
  img
} = Comps

{
#   Select
  Menu
  MenuItem
  MenuItemGroup
  MenuSub
  Row
  Col
  Icon
#   Button
} = Antd

module.exports = cfx

  getInitialState: ->
    current: 'home'

  render: ->

    header
      id: 'header'
      className: classNames
        clearfix: true
        'home-nav-white': true
    ,
      Row {}
      ,
        Col {
          lg: 4, md: 6, sm: 7, xs: 24
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
            span {}
            , 'Ant Design'
      ,
        Col {
          lg: 20, md: 18, sm: 17, xs: 0
        }
        # ,
        #   div id: 'search-box'
        ,
          Menu
            id: 'nav'
            mode: 'horizontal'
            activeKey: @state.current
            selectedKeys: [ @state.current ]
          ,
            MenuItem
              key: 'home'
              # className: 'ant-menu-item-selected'
              # 'aria-selected': true
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

{
  cfx
  cfxify
  Comps
} = require '../../cfxRW.coffee'

{
  style
  div
  h1
} = Comps

styles = require './style.css'

DocumentTitle = cfxify require 'react-document-title'
Layout = require '../Layout/index.coffee'
# Link = require './Link'
# Banner = require './Banner'
# Page1 = require './Page1'
# Page2 = require './Page2'
# Page3 = require './Page3'
# Page4 = require './Page4'

module.exports = cfx

  render: ->

    div {}
    ,
      DocumentTitle
        title: 'Ant Design - 一个 UI 设计语言'
    ,
      style
        dangerousInnerHtml:
          __html: styles
    ,
      Layout {}
    #   ,
    #     div {}
        # ,
        #   Link {}
        # ,
        #   Banner {}
        # ,
        #   Page1 {}
        # ,
        #   Page2 {}
        # ,
        #   Page3 {}
        # ,
        #   Page4 {}

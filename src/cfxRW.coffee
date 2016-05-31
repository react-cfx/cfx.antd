React = require 'react'
{
  createElement
  createClass
} = React
{ render } = require 'react-dom'

Radium = require 'radium'
# CSSModules = require 'react-css-modules'
classNames = require 'classnames';

cfxify = (e) ->
  (args...) -> createElement.apply @
  , [ e ].concat args
cfx = ->
  # args = Array.prototype.slice.call arguments
  # if args.length is 2
  #   styles = args.shift()
  #   cfxify(
  #     CSSModules(
  #       (
  #         Radium createClass.apply @
  #         , args
  #       )
  #       , styles
  #     )
  #   )
  # else
  cfxify Radium createClass.apply @
  , arguments

# Style = cfxify Radium.Style

Comps = {
  'script'
  'style'
  'div'
  'span'
  'h1'
  'h2'
  'h3'
  'h4'
  'h5'
  'h6'
  'header'
  'img'
}
for comps_k, comps_v of Comps
  Comps[comps_k] = cfxify comps_v

antd = require 'antd'
{
  Select
  Menu
  Row
  Col
  Icon
  Button
} = antd
Antd = {}

for antd_k, antd_v of antd
  Antd[antd_k] = cfxify antd_v
Antd.MenuItem = cfxify Menu.Item
Antd.MenuItemGroup = cfxify Menu.ItemGroup
Antd.MenuSub = cfxify Menu.SubMenu

router = require 'react-router'
{
  Link
} = router
Router = {}
for router_k, router_v of router
  Router[router_k] = cfxify router_v

module.exports = {
  RW: React
  render
  cfx
  cfxify
  Comps
  Antd
  Router
  classNames
}

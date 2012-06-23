Spine = require('spine')

class Header extends Spine.Controller
  className: "navbar"

  constructor: ->
    super
    @html require("views/header")
    

module.exports = Header

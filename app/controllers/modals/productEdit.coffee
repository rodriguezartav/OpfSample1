Spine   = require('spine')
Product = require('models/product')

class ProductEdit extends Spine.Controller
  @extend Spine.Controller.Modal
  
  className: 'showWarning modal'

  @type = "productEdit"

  events:
    "click .js_close" : "onClose"

  constructor: ->
    super
    @html require('views/modals/productEdit')(@data.product)

  onClose: =>
    Spine.trigger "hide_modal"
   
module.exports = ProductEdit
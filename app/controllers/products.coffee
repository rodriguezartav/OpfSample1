Spine = require('spine')

Product = require('models/product')

class Products extends Spine.Controller
  className: "container"

  elements: 
    ".list" : "list"
  
  events:
    "click .edit" : "onEditClick"
    "click .delete" : "onDeleteClick"

  constructor: ->
    super
    @html require("views/products")
    Product.bind "create change destroy" , @render

  render: =>
    @list.html require('views/productList')(Product.all())
    
  onEditClick: (e) =>
    target = $(e.target)
    tr = target.parents('tr')
    id = tr.attr 'data-id'
    product = Product.find id
    Spine.trigger "show_modal", "productEdit" , { product: product }
    
    
  onDeleteClick: (e) =>
    target = $(e.target)
    tr = target.parents('tr')
    id = tr.attr 'data-id'
    product = Product.find id
    product.destroy()
    @render()
    
module.exports = Products

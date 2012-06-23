require('lib/setup')

Spine = require('spine')

Header = require('controllers/header')
Products = require('controllers/products')
Product = require('models/product')

ProductEdit = require("controllers/modals/productEdit")


class App extends Spine.Controller
  @extend Spine.Controller.ModalController

  constructor: ->
    super
    @html new Header()
    @append new Products()
    @buildProducts()
    @setupModal()
    

  buildProducts: ->
    Product.create { name: 'Stand Up Lamp' , code: "LBK-1238-za21" ,  inventory: Math.random() * 1000  }
    Product.create { name: 'Desk Mobile Lamp' , code: "LBK-1238-za21" ,  inventory: Math.random() * 1000  }
    Product.create { name: 'Hydro Step Lamp' , code: "LBK-1238-za21" ,  inventory: Math.random() * 1000  }
    Product.create { name: 'Marvel Book Lamp' , code: "LBK-1238-za21" ,  inventory: Math.random() * 1000  }
    Product.create { name: 'Univeral Rotation Lamp' , code: "LBK-1238-za21" ,  inventory: Math.random() * 1000  }

    

module.exports = App
    
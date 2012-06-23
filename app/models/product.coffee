Spine = require('spine')

class Product extends Spine.Model
  @configure "Name" , "name" , "code" , "inventory" , "warehouse"
  
 

module.exports = Product


fs = require('fs')


class OpfDevUtil

  @setupCompilers: (app) ->
    Hem = require("hem")
    Less = require('less')  
    hem = new Hem()

    app.get(hem.options.jsPath, hem.hemPackage().createServer())
    app.get hem.options.cssPath , (req,res) =>

      path = "./css/index.less"
      parser = new(Less.Parser)( { paths: ['./css/bootstrap', './css/'] , filename: 'index.less' } )
      fs.readFile path, "utf8" , (err, data) =>
        throw err if err 
        parser.parse data, (err, css) ->
          throw err if err 
          res.header("Content-type", "text/css");
          res.send(css.toCSS())
    
  

module.exports = OpfDevUtil

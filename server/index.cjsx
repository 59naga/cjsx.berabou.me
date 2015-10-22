# Dependencies
express= require 'express'

dhs= require 'difficult-http-server'
path= require 'path'

routes= (require '../client').props.routes
match= (require 'react-router').match
React= require 'react'
ReactDOMServer= require 'react-dom/server'
RoutingContext= (require 'react-router').RoutingContext

# Environment
process.env.PORT?= 59798
cwd= path.resolve __dirname,'..','client'

# Routes
app= express()

app.use (req,res,next)->
  unless (req.get 'User-Agent').match /msie\s[6-9]|bot|crawler|baiduspider|80legs|ia_archiver|voyager|curl|wget|yahoo! slurp|mediapartners-google/i
    return next()

  location= req.url
  match {location,routes},(error,redirectLocation,renderProps)->
    return res.redirect redirectLocation if redirectLocation
    return res.status(500).send error.message if error
    return res.status(404).send '404 Notfound' unless renderProps

    res.send ReactDOMServer.renderToStaticMarkup <RoutingContext {...renderProps} />

app.use dhs {cwd,html5Mode:yes}

app.listen process.env.PORT,->
  console.log 'Server running at http://localhost:%s',process.env.PORT

express = require('express')
app = express()
server = require('http').createServer(app)
stylus = require('stylus')

# Express
app.configure ->
  app.set 'port', process.env.PORT || 3000
  app.use express.favicon()
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use stylus.middleware({src: __dirname + '/src', dest: __dirname + '/public'})
  app.use express.static(__dirname + '/public')
  app.use app.router

app.configure 'development', ->
  app.use(express.errorHandler())
  #app.use express.errorHandler({dumpExceptions: true, showStack: true})
  
app.configure 'production', ->
  app.use (err, req, res, next) -> res.status(404); res.render('404.jade')

# Routes
app.get '/:p', (req, res) -> res.render("#{req.params.p}.jade")
app.get '/*', (req, res) -> res.render('index.jade')

server.listen app.get('port'), ->
  console.log("Express server listening on port " + app.get('port'))

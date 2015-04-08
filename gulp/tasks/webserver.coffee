'use strict'

# set variables
v       = require '../variables.coffee'
gulp    = v.gulp
config  = v.config
app     = config.common.path.app
tmp     = config.development.path.dest
connect = require 'gulp-connect'

gulp.task 'webserver', ->
  connect.server
    livereload: true
    root: [ app, tmp ]

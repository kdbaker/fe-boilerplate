'use strict'

# set variables
v       = require '../variables.coffee'
gulp    = v.gulp
config  = v.config
app     = config.common.path.app

gulp.task 'watch', ->
  gulp.watch app + '**/*.jade', [ 'jade' ]
  gulp.watch app + '/js/**/*.js', [ 'js' ]
  gulp.watch app + '/css/**/*.sass', [ 'sass' ]

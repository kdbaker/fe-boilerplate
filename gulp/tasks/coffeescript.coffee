'use strict'

# set variables
v       = require '../variables.coffee'
gulp    = v.gulp
env     = v.env
config  = v.config
gutil   = v.gutil
dest    = config[ env ].path.dest
coffee  = require 'gulp-coffee'

gulp.task 'coffee', ->
  gulp.src( config.common.path.app + '/**/*.coffee' )
  .pipe coffee bare: true
  .pipe gulp.dest( dest )
  # catch errors
  .on 'error', gutil.log

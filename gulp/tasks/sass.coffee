'use strict'

# set variables
v       = require '../variables.coffee'
gulp    = v.gulp
env     = v.env
config  = v.config
gutil   = v.gutil
dest    = config[ env ].path.dest
sass    = require 'gulp-sass'

gulp.task 'sass', ->
  gulp.src config.common.path.app + '/css/app.sass'
  .pipe sass( config.common.sass, config[ env ].sass )
  .pipe gulp.dest( dest + '/css' )
  # catch errors
  .on 'error', gutil.log

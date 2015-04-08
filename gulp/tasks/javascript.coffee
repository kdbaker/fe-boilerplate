'use strict'

# set variables
v       = require '../variables.coffee'
gulp    = v.gulp
gulpif  = v.gulpif
env     = v.env
config  = v.config
gutil   = v.gutil
dest    = config[ env ].path.dest
uglify  = require 'gulp-uglify'

gulp.task 'js', ->
  gulp.src( config.common.path.app + '/**/*.js' )
  .pipe gulpif env == 'production', uglify()
  .pipe gulpif env == 'production', gulp.dest( dest )
  # catch errors
  .on 'error', gutil.log

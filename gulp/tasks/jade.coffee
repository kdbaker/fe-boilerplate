'use strict'

# set variables
v       = require '../variables.coffee'
gulp    = v.gulp
env     = v.env
config  = v.config
gutil   = v.gutil
dest    = config[ env ].path.dest
jade    = require 'gulp-jade'

gulp.task 'jade', ->
  gulp.src( config.common.path.app + '/**/*.jade' )
  .pipe jade( config[ env ].jade )
  .pipe gulp.dest( dest )
  # catch errors
  .on 'error', gutil.log

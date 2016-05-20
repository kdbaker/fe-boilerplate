'use strict'

# set variables
v       = require '../variables.coffee'
gulp    = v.gulp
env     = v.env
config  = v.config
gutil   = v.gutil
dest    = config[ env ].path.dest
pug     = require 'gulp-pug'

gulp.task 'pug', ->
  gulp.src( config.common.path.app + '/**/*.pug' )
  .pipe pug( config[ env ].pug )
  .pipe gulp.dest( dest )
  # catch errors
  .on 'error', gutil.log

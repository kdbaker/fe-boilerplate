'use strict'

# set variables
v       = require '../variables.coffee'
gulp    = v.gulp
env     = v.env
config  = v.config
dest    = config[ env ].path.dest
shell   = require 'gulp-shell'

# cleans our .tmp/dist directory in case things got deleted
gulp.task 'clean', shell.task([
  'echo Removing the ' + dest + ' directory'
  'rm -rf ' + dest
])

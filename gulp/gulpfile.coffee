'use strict'

# load all of our tasks under the tasks folder
require( 'require-dir' ) './tasks'

# set variables
v             = require( './variables.coffee' )
gulp          = v.gulp
env           = v.env
config        = v.config
app           = config.common.path.app
shell         = require( 'gulp-shell' )
gulpSequence  = require( 'gulp-sequence' ).use( gulp )

# this is our master task when you run `gulp` in CLI / Terminal
# this will:
#    - clean the development tmp folder
#    - compile jade, sass
#    - startup the web server
#    - start livereload
#    - start watch
gulp.task 'default', gulpSequence(
  'clean',
  [ 'jade', 'coffee', 'sass' ],
  'watch',
  [ 'webserver', 'livereload' ]
)

# this is our deployment task, it will set everything for production-ready files
gulp.task 'setup-deploy', gulpSequence( 'clean' )

# runs setup-deploy in production mode
gulp.task 'deploy', shell.task( [ 'NODE_ENV=production gulp setup-deploy' ] )

# For production mode: NODE_ENV=production gulp TASK
# For development mode: gulp TASK

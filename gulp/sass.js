'use strict';

var v       = require( './_variables.js' ),
    gulp    = v.gulp,
    env     = v.env,
    config  = v.config,
    dest    = config[ env ].path.dest,
    sass  = require( 'gulp-sass' );

gulp.task( 'sass', function() {
  return gulp.src( config.common.path.app + '/css/app.sass' )
    .pipe( sass( config.common.sass, config[ env ].sass ) )
    .pipe( gulp.dest( dest + '/css' ) );
});

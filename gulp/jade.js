'use strict';

var v       = require( './_variables.js' ),
    gulp    = v.gulp,
    env     = v.env,
    config  = v.config,
    dest    = config[ env ].path.dest,
    jade    = require( 'gulp-jade' );

gulp.task( 'jade', function() {
  return gulp.src( config.common.path.app + '/**/*.jade' )
    .pipe( jade( config[ env ].jade ) )
    .pipe( gulp.dest( dest ) );
});

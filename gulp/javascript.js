'use strict';

var v       = require( './_variables.js' ),
    gulp    = v.gulp,
    gulpif  = v.gulpif,
    env     = v.env,
    config  = v.config,
    dest    = config[ env ].path.dest,
    uglify  = require( 'gulp-uglify' );

gulp.task( 'js', function() {
  return gulp.src( config.common.path.app + '/**/*.js' )
    .pipe( gulpif( env === 'production', uglify() ) )
    .pipe( gulpif( env === 'production', gulp.dest( dest ) ) );
});

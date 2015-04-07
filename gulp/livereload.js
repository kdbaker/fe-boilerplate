'use strict';

var v       = require( './_variables.js' ),
    gulp    = v.gulp,
    config  = v.config,
    tmp     = config.development.path.dest,
    app     = config.common.path.app,
    connect = require( 'gulp-connect' ),
    watch   = require('gulp-watch');

gulp.task( 'livereload', function() {
  gulp.src( [ tmp + '/**/*.html', tmp + '/**/*.css', tmp + '/**/*.js', app + '/**/*.js' ] )
    .pipe( watch( tmp + '/**/*.html' ) )
    .pipe( watch( tmp + '/**/*.css' ) )
    .pipe( watch( tmp + '/**/*.js' ) )
    .pipe( watch( app + '/**/*.js' ) )
    .pipe( connect.reload() );
});

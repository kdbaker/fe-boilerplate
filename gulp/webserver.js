'use strict';

var v       = require( './_variables.js' ),
    gulp    = v.gulp,
    config  = v.config,
    app     = config.common.path.app,
    tmp     = config.development.path.dest,
    connect = require( 'gulp-connect' );

gulp.task( 'webserver', function() {
  connect.server({
    livereload: true,
    root: [ app, tmp ]
  });
});

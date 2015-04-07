'use strict';

var v       = require( './_variables.js' ),
    gulp    = v.gulp,
    config  = v.config,
    app     = config.common.path.app;

gulp.task( 'watch', function() {
  gulp.watch( app + '**/*.jade', [ 'jade' ] );
  gulp.watch( app + '/js/**/*.js', [ 'js' ] );
  gulp.watch( app + '/css/**/*.sass', [ 'sass' ] );
});

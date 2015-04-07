'use strict';

require( 'require-dir' )( './gulp' );

var v       = require( './gulp/_variables.js' ),
    gulp    = v.gulp,
    env     = v.env,
    config  = v.config,
    app     = config.common.path.app;

// For production mode: NODE_ENV=production TASK
// For development mode: TASK

gulp.task('default', ['jade', 'js', 'sass', 'webserver', 'livereload', 'watch']);

// gulp.task( 'default', [ 'jade' ], function() {
//     gulp.start( 'build' );
// });

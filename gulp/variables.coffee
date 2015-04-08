variables =
  env     : process.env.NODE_ENV or 'development'
  config  : require( './config.json' )
  gulp    : require( 'gulp' )
  gulpif  : require( 'gulp-if' )
  gutil   : require( 'gulp-util' )

module.exports = variables

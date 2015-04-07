module.exports = {
  env     : process.env.NODE_ENV || 'development',
  config  : require( './_config.json' ),
  gulp    : require( 'gulp' ),
  gulpif  : require( 'gulp-if' )
};

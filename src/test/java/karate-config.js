function fn() {
  var env = karate.env; // get system property 'karate.env'
  var UrlBase =''

  if (!env) {
    env = 'cert';
  }

  if (env == 'cert') {
  var UrlBase =''

  } else if (env == 'prod') {
  var UrlBase =''

  }

  var config = {
      env: env,


    }
  return config;
}
{
  buildRPackage,
  fetchurl,
  RcppTOML,
  cli,
  curl,
  jose,
  jsonlite,
  openssl,
  rlang,
}:

buildRPackage {
  pname = "snowflakeauth";
  version = "0.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/snowflakeauth_0.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/snowflakeauth/snowflakeauth_0.2.2.tar.gz"
    ];
    sha256 = "1qj0w3d5pzv6ynd9sxrldrrqjaj8lrrk602a98j7f95cn90wbihd";
  };

  propagatedBuildInputs = [
    RcppTOML
    cli
    curl
    jose
    jsonlite
    openssl
    rlang
  ];

  meta = {
    description = "R package snowflakeauth";
    homepage = "https://cran.r-project.org/package=snowflakeauth";
  };
}

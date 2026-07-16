{
  buildRPackage,
  fetchurl,
  PKI,
  cli,
  curl,
  digest,
  httr2,
  jsonlite,
  lifecycle,
  openssl,
  packrat,
  renv,
  rlang,
  rstudioapi,
  snowflakeauth,
  yaml,
}:

buildRPackage {
  pname = "rsconnect";
  version = "1.8.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rsconnect_1.8.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rsconnect/rsconnect_1.8.0.tar.gz"
    ];
    sha256 = "04gc3r9l60qsvpzi6p9v7cj9nv3prbsh1qg8q1k3y6121a373iad";
  };

  propagatedBuildInputs = [
    PKI
    cli
    curl
    digest
    httr2
    jsonlite
    lifecycle
    openssl
    packrat
    renv
    rlang
    rstudioapi
    snowflakeauth
    yaml
  ];

  meta = {
    description = "R package rsconnect";
    homepage = "https://cran.r-project.org/package=rsconnect";
  };
}

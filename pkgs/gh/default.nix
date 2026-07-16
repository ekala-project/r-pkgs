{
  buildRPackage,
  fetchurl,
  cli,
  gitcreds,
  glue,
  httr2,
  ini,
  jsonlite,
  lifecycle,
  rlang,
}:

buildRPackage {
  pname = "gh";
  version = "1.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gh_1.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gh/gh_1.5.0.tar.gz"
    ];
    sha256 = "13lv6bh3g28s9z4v4y8h8hin2gb5igdy2xbd2n8cf3wnhhq0cni9";
  };

  propagatedBuildInputs = [
    cli
    gitcreds
    glue
    httr2
    ini
    jsonlite
    lifecycle
    rlang
  ];

  meta = {
    description = "R package gh";
    homepage = "https://cran.r-project.org/package=gh";
  };
}

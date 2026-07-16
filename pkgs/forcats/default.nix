{
  buildRPackage,
  fetchurl,
  cli,
  glue,
  lifecycle,
  magrittr,
  rlang,
  tibble,
}:

buildRPackage {
  pname = "forcats";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/forcats_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/forcats/forcats_1.0.1.tar.gz"
    ];
    sha256 = "019npldig62yqskmlf6jkh3vsizygxxijx97c4z2k2h3ny1npr0x";
  };

  propagatedBuildInputs = [
    cli
    glue
    lifecycle
    magrittr
    rlang
    tibble
  ];

  meta = {
    description = "R package forcats";
    homepage = "https://cran.r-project.org/package=forcats";
  };
}

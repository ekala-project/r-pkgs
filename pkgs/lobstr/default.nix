{
  buildRPackage,
  fetchurl,
  cpp11,
  crayon,
  prettyunits,
  rlang,
}:

buildRPackage {
  pname = "lobstr";
  version = "1.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lobstr_1.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lobstr/lobstr_1.2.1.tar.gz"
    ];
    sha256 = "1h411mhf79fxlq640wcjd46zdxbmrdacgby5mycyjrgic6xn6ygv";
  };

  propagatedBuildInputs = [
    cpp11
    crayon
    prettyunits
    rlang
  ];

  meta = {
    description = "R package lobstr";
    homepage = "https://cran.r-project.org/package=lobstr";
  };
}

{
  buildRPackage,
  fetchurl,
  glue,
  memoise,
  png,
  rlang,
  sf,
}:

buildRPackage {
  pname = "gridpattern";
  version = "1.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gridpattern_1.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gridpattern/gridpattern_1.3.1.tar.gz"
    ];
    sha256 = "19ffi9yvpk012mj7jc8gjwx505qrs0gqsdmw1zk4q6iq9rygyrrf";
  };

  propagatedBuildInputs = [
    glue
    memoise
    png
    rlang
    sf
  ];

  meta = {
    description = "R package gridpattern";
    homepage = "https://cran.r-project.org/package=gridpattern";
  };
}

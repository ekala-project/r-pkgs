{
  buildRPackage,
  fetchurl,
  cli,
  rlang,
  vctrs,
  warp,
}:

buildRPackage {
  pname = "slider";
  version = "0.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/slider_0.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/slider/slider_0.3.3.tar.gz"
    ];
    sha256 = "1b7hqv50x2y36sksb9zq6b9f0y8qy749ynjsypy75i2nzz3sglvs";
  };

  propagatedBuildInputs = [
    cli
    rlang
    vctrs
    warp
  ];

  meta = {
    description = "R package slider";
    homepage = "https://cran.r-project.org/package=slider";
  };
}

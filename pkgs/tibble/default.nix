{
  buildRPackage,
  fetchurl,
  cli,
  lifecycle,
  magrittr,
  pillar,
  pkgconfig,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "tibble";
  version = "3.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tibble_3.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tibble/tibble_3.3.1.tar.gz"
    ];
    sha256 = "13xjjas9882518i0s8x6az6mmzz8srxgz1byghiin0ir3659yc7v";
  };

  propagatedBuildInputs = [
    cli
    lifecycle
    magrittr
    pillar
    pkgconfig
    rlang
    vctrs
  ];

  meta = {
    description = "R package tibble";
    homepage = "https://cran.r-project.org/package=tibble";
  };
}

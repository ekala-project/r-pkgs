{
  buildRPackage,
  fetchurl,
  cli,
  desc,
  fs,
  glue,
  lifecycle,
  pkgbuild,
  processx,
  rlang,
  rprojroot,
}:

buildRPackage {
  pname = "pkgload";
  version = "1.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pkgload_1.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pkgload/pkgload_1.5.2.tar.gz"
    ];
    sha256 = "1drjzm0k1psqvz0klpx4fllcqm62rwr62936zwf7r0bh6jwr03i4";
  };

  propagatedBuildInputs = [
    cli
    desc
    fs
    glue
    lifecycle
    pkgbuild
    processx
    rlang
    rprojroot
  ];

  meta = {
    description = "R package pkgload";
    homepage = "https://cran.r-project.org/package=pkgload";
  };
}

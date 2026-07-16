{
  buildRPackage,
  fetchurl,
  cli,
  diffobj,
  glue,
  rlang,
}:

buildRPackage {
  pname = "waldo";
  version = "0.6.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/waldo_0.6.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/waldo/waldo_0.6.2.tar.gz"
    ];
    sha256 = "1yh79qcz6h073b42pr1hgvci8p64js6s386j6sbw9vi5wrmp8amj";
  };

  propagatedBuildInputs = [
    cli
    diffobj
    glue
    rlang
  ];

  meta = {
    description = "R package waldo";
    homepage = "https://cran.r-project.org/package=waldo";
  };
}

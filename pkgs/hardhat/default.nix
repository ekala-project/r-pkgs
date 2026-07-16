{
  buildRPackage,
  fetchurl,
  cli,
  glue,
  rlang,
  sparsevctrs,
  tibble,
  vctrs,
}:

buildRPackage {
  pname = "hardhat";
  version = "1.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/hardhat_1.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/hardhat/hardhat_1.4.3.tar.gz"
    ];
    sha256 = "1zink6bpw93bvama8z6pys83ixd7ca91cixv7llsgg464a9hpysr";
  };

  propagatedBuildInputs = [
    cli
    glue
    rlang
    sparsevctrs
    tibble
    vctrs
  ];

  meta = {
    description = "R package hardhat";
    homepage = "https://cran.r-project.org/package=hardhat";
  };
}

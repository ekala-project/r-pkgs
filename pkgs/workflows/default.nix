{
  buildRPackage,
  fetchurl,
  cli,
  generics,
  glue,
  hardhat,
  lifecycle,
  modelenv,
  parsnip,
  recipes,
  rlang,
  sparsevctrs,
  tidyselect,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "workflows";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/workflows_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/workflows/workflows_1.3.0.tar.gz"
    ];
    sha256 = "1v336pc1ag8v3rya2i9vacgprl06c66x0993p0qnspdc40vnw6g3";
  };

  propagatedBuildInputs = [
    cli
    generics
    glue
    hardhat
    lifecycle
    modelenv
    parsnip
    recipes
    rlang
    sparsevctrs
    tidyselect
    vctrs
    withr
  ];

  meta = {
    description = "R package workflows";
    homepage = "https://cran.r-project.org/package=workflows";
  };
}

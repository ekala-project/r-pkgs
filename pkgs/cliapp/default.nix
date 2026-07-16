{
  buildRPackage,
  fetchurl,
  R6,
  cli,
  crayon,
  fansi,
  glue,
  prettycode,
  progress,
  selectr,
  withr,
  xml2,
}:

buildRPackage {
  pname = "cliapp";
  version = "0.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cliapp_0.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cliapp/cliapp_0.1.2.tar.gz"
    ];
    sha256 = "0yaahalirm89s5snhqpz11s36fp5ri5af9w6ljqlvfd94y6ckvfb";
  };

  propagatedBuildInputs = [
    R6
    cli
    crayon
    fansi
    glue
    prettycode
    progress
    selectr
    withr
    xml2
  ];

  meta = {
    description = "R package cliapp";
    homepage = "https://cran.r-project.org/package=cliapp";
  };
}

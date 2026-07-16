{
  buildRPackage,
  fetchurl,
  backports,
  cli,
  codetools,
  digest,
  glue,
  knitr,
  rex,
  xfun,
  xml2,
  xmlparsedata,
}:

buildRPackage {
  pname = "lintr";
  version = "3.3.0-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lintr_3.3.0-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lintr/lintr_3.3.0-1.tar.gz"
    ];
    sha256 = "01nazxffg7kwakg9xymg150hmr83w630bwcax4sx4xyddz268adi";
  };

  propagatedBuildInputs = [
    backports
    cli
    codetools
    digest
    glue
    knitr
    rex
    xfun
    xml2
    xmlparsedata
  ];

  meta = {
    description = "R package lintr";
    homepage = "https://cran.r-project.org/package=lintr";
  };
}

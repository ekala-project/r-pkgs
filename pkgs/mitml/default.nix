{
  buildRPackage,
  fetchurl,
  haven,
  jomo,
  pan,
}:

buildRPackage {
  pname = "mitml";
  version = "0.4-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mitml_0.4-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mitml/mitml_0.4-5.tar.gz"
    ];
    sha256 = "1szfw993ma4qn377bab08bkvm4s0sxs5x2hdcj9kgk47661fqsh5";
  };

  propagatedBuildInputs = [
    haven
    jomo
    pan
  ];

  meta = {
    description = "R package mitml";
    homepage = "https://cran.r-project.org/package=mitml";
  };
}

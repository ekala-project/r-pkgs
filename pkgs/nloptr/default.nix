{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "nloptr";
  version = "2.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nloptr_2.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nloptr/nloptr_2.2.1.tar.gz"
    ];
    sha256 = "1x6pmqh3k5ckjbzkallndpqnlx61y02rwv58sqd8np271dsl1fkn";
  };

  meta = {
    description = "R package nloptr";
    homepage = "https://cran.r-project.org/package=nloptr";
  };
}

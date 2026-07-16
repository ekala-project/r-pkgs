{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rootSolve";
  version = "1.8.2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rootSolve_1.8.2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rootSolve/rootSolve_1.8.2.4.tar.gz"
    ];
    sha256 = "0p9qmn82bg0ks9hmh2dkygnzhxcnp5z8z8b8aq52w6clliz32sp1";
  };

  meta = {
    description = "R package rootSolve";
    homepage = "https://cran.r-project.org/package=rootSolve";
  };
}

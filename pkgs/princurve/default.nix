{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "princurve";
  version = "2.1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/princurve_2.1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/princurve/princurve_2.1.6.tar.gz"
    ];
    sha256 = "0wzk329bxljkzz57y220lsfckpsn45w348m6dcxh29zbj0ik65h2";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package princurve";
    homepage = "https://cran.r-project.org/package=princurve";
  };
}

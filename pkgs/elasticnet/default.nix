{
  buildRPackage,
  fetchurl,
  lars,
}:

buildRPackage {
  pname = "elasticnet";
  version = "1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/elasticnet_1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/elasticnet/elasticnet_1.3.tar.gz"
    ];
    sha256 = "0nxcw06d0cp2mbqzg2fm9yys5xm6xx7bfcfvr0avcs8afkvz29j8";
  };

  propagatedBuildInputs = [
    lars
  ];

  meta = {
    description = "R package elasticnet";
    homepage = "https://cran.r-project.org/package=elasticnet";
  };
}

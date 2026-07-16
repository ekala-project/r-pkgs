{
  buildRPackage,
  fetchurl,
  contfrac,
  deSolve,
  elliptic,
}:

buildRPackage {
  pname = "hypergeo";
  version = "1.2-14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/hypergeo_1.2-14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/hypergeo/hypergeo_1.2-14.tar.gz"
    ];
    sha256 = "1r3hcmp44qf1fqk7ipxs3918zfd30ksmb5bpmjvj1jj3amfrldxz";
  };

  propagatedBuildInputs = [
    contfrac
    deSolve
    elliptic
  ];

  meta = {
    description = "R package hypergeo";
    homepage = "https://cran.r-project.org/package=hypergeo";
  };
}

{
  buildRPackage,
  fetchurl,
  mvtnorm,
}:

buildRPackage {
  pname = "mhsmm";
  version = "0.4.21";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mhsmm_0.4.21.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mhsmm/mhsmm_0.4.21.tar.gz"
    ];
    sha256 = "1fibgpl65bl3rwlf9dhlams3gxbjqgwcd26gb0flp4wln6pl8d99";
  };

  propagatedBuildInputs = [
    mvtnorm
  ];

  meta = {
    description = "R package mhsmm";
    homepage = "https://cran.r-project.org/package=mhsmm";
  };
}

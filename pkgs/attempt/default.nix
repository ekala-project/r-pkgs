{
  buildRPackage,
  fetchurl,
  rlang,
}:

buildRPackage {
  pname = "attempt";
  version = "0.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/attempt_0.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/attempt/attempt_0.3.1.tar.gz"
    ];
    sha256 = "1ylgg7jcp8wqmxgf1mydnvh26k0mr8jyjla4hw06730r40yrs58m";
  };

  propagatedBuildInputs = [
    rlang
  ];

  meta = {
    description = "R package attempt";
    homepage = "https://cran.r-project.org/package=attempt";
  };
}

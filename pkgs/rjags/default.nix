{
  buildRPackage,
  fetchurl,
  coda,
}:

buildRPackage {
  pname = "rjags";
  version = "4-17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rjags_4-17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rjags/rjags_4-17.tar.gz"
    ];
    sha256 = "0d23zzdgm0ihb8lv01wraq3b98gl9fm5jbxhp0jqpk8sgv5ff4g9";
  };

  propagatedBuildInputs = [
    coda
  ];

  meta = {
    description = "R package rjags";
    homepage = "https://cran.r-project.org/package=rjags";
  };
}

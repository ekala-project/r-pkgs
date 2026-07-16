{
  buildRPackage,
  fetchurl,
  rmutil,
}:

buildRPackage {
  pname = "stable";
  version = "1.1.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stable_1.1.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stable/stable_1.1.7.tar.gz"
    ];
    sha256 = "1sabzja8ksda5k8fkhq4paqapcjgw8v17xfrkq310pzg4dajcb9d";
  };

  propagatedBuildInputs = [
    rmutil
  ];

  meta = {
    description = "R package stable";
    homepage = "https://cran.r-project.org/package=stable";
  };
}

{
  buildRPackage,
  fetchurl,
  DRR,
  magrittr,
}:

buildRPackage {
  pname = "dimRed";
  version = "0.2.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dimRed_0.2.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dimRed/dimRed_0.2.7.tar.gz"
    ];
    sha256 = "1ivx02cqn5xgvbck7sdiapd4b32spc4h4fsn6n4js4c979fv8sxa";
  };

  propagatedBuildInputs = [
    DRR
    magrittr
  ];

  meta = {
    description = "R package dimRed";
    homepage = "https://cran.r-project.org/package=dimRed";
  };
}

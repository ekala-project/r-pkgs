{
  buildRPackage,
  fetchurl,
  DEoptimR,
}:

buildRPackage {
  pname = "robustbase";
  version = "0.99-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/robustbase_0.99-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/robustbase/robustbase_0.99-7.tar.gz"
    ];
    sha256 = "1zccb1y2xad65i16h2wda9k7bzzxlywsavy9qgnwks5cpk8ijpcz";
  };

  propagatedBuildInputs = [
    DEoptimR
  ];

  meta = {
    description = "R package robustbase";
    homepage = "https://cran.r-project.org/package=robustbase";
  };
}

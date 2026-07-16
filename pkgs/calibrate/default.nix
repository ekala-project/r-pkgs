{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "calibrate";
  version = "1.7.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/calibrate_1.7.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/calibrate/calibrate_1.7.7.tar.gz"
    ];
    sha256 = "19kgrnsyq67iqv1biyssqi30a6v2836ql20nabpy2m692ns0jfvi";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package calibrate";
    homepage = "https://cran.r-project.org/package=calibrate";
  };
}

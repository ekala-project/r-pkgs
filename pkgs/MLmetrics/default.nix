{
  buildRPackage,
  fetchurl,
  ROCR,
}:

buildRPackage {
  pname = "MLmetrics";
  version = "1.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MLmetrics_1.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MLmetrics/MLmetrics_1.1.3.tar.gz"
    ];
    sha256 = "11dgpw6lzs3vrfa3v9kf8x2rph3vpicxbw5af89afa175by3amrc";
  };

  propagatedBuildInputs = [
    ROCR
  ];

  meta = {
    description = "R package MLmetrics";
    homepage = "https://cran.r-project.org/package=MLmetrics";
  };
}

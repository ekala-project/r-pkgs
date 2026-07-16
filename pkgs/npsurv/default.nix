{
  buildRPackage,
  fetchurl,
  lsei,
}:

buildRPackage {
  pname = "npsurv";
  version = "0.5-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/npsurv_0.5-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/npsurv/npsurv_0.5-0.tar.gz"
    ];
    sha256 = "1ihxhb42cga1hssj2jv4ah0f4hlwsky899ij5261fzh1wxvdp1xw";
  };

  propagatedBuildInputs = [
    lsei
  ];

  meta = {
    description = "R package npsurv";
    homepage = "https://cran.r-project.org/package=npsurv";
  };
}

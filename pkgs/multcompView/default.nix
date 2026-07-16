{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "multcompView";
  version = "0.1-11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/multcompView_0.1-11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/multcompView/multcompView_0.1-11.tar.gz"
    ];
    sha256 = "1vd8841bfkqx4xxwmvi8rk3yc1ai5gwfp5irsywzvf6q28k6m6zx";
  };

  meta = {
    description = "R package multcompView";
    homepage = "https://cran.r-project.org/package=multcompView";
  };
}

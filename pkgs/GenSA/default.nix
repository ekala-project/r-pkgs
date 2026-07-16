{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "GenSA";
  version = "1.1.15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GenSA_1.1.15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GenSA/GenSA_1.1.15.tar.gz"
    ];
    sha256 = "09grrhpmrvxkh57vakq0bn1qanmflm1bvb1hf5dnp633nk1hv5v8";
  };

  meta = {
    description = "R package GenSA";
    homepage = "https://cran.r-project.org/package=GenSA";
  };
}

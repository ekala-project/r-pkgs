{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "magrittr";
  version = "2.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/magrittr_2.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/magrittr/magrittr_2.0.5.tar.gz"
    ];
    sha256 = "08zdlbn7iwjqzs5z04sjxg2z52hxrf46q2y5jmx804kd9qfmnnrz";
  };

  meta = {
    description = "R package magrittr";
    homepage = "https://cran.r-project.org/package=magrittr";
  };
}

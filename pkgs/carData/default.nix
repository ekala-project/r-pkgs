{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "carData";
  version = "3.0-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/carData_3.0-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/carData/carData_3.0-6.tar.gz"
    ];
    sha256 = "0l9526sdbmm0rhhshxv9zxh9n8za5k73rpqwxk0mjnjynd05nkdi";
  };

  meta = {
    description = "R package carData";
    homepage = "https://cran.r-project.org/package=carData";
  };
}

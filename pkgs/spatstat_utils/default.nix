{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "spatstat_utils";
  version = "3.2-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatstat_utils_3.2-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatstat_utils/spatstat_utils_3.2-3.tar.gz"
    ];
    sha256 = "1ls9wn140jwgp3k7cbla8p0441g33a0xamki3qz87fn6zn89lamy";
  };

  meta = {
    description = "R package spatstat_utils";
    homepage = "https://cran.r-project.org/package=spatstat_utils";
  };
}

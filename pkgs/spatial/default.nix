{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "spatial";
  version = "7.3-18";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatial_7.3-18.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatial/spatial_7.3-18.tar.gz"
    ];
    sha256 = "0m9hljg8xz996rr2a3fwd7gna62fxslffmxmjpnghnkld4ynjinc";
  };

  meta = {
    description = "R package spatial";
    homepage = "https://cran.r-project.org/package=spatial";
  };
}

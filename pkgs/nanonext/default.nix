{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "nanonext";
  version = "1.9.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nanonext_1.9.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nanonext/nanonext_1.9.0.tar.gz"
    ];
    sha256 = "17v1rryf6dbp45g3m5hx4hcqwp8rl4dvq8qkhhqckj3089b33196";
  };

  meta = {
    description = "R package nanonext";
    homepage = "https://cran.r-project.org/package=nanonext";
  };
}

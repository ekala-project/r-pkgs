{
  buildRPackage,
  fetchurl,
  foreign,
}:

buildRPackage {
  pname = "shapefiles";
  version = "0.7.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shapefiles_0.7.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shapefiles/shapefiles_0.7.2.tar.gz"
    ];
    sha256 = "03sdcxbah05x0j6cpygx3ivkzrdlz2c0frxi30cinb05q6a41yjb";
  };

  propagatedBuildInputs = [
    foreign
  ];

  meta = {
    description = "R package shapefiles";
    homepage = "https://cran.r-project.org/package=shapefiles";
  };
}

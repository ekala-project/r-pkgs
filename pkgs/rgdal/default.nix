{
  buildRPackage,
  fetchurl,
  sp,
}:

buildRPackage {
  pname = "rgdal";
  version = "1.6-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rgdal_1.6-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rgdal/rgdal_1.6-7.tar.gz"
    ];
    sha256 = "0cxfmm7niixw3dnbqm7a00603dyqjrphajqx0q5vjpdhmpyysp2m";
  };

  propagatedBuildInputs = [
    sp
  ];

  meta = {
    description = "R package rgdal";
    homepage = "https://cran.r-project.org/package=rgdal";
  };
}

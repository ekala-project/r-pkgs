{
  buildRPackage,
  fetchurl,
  MASS,
  sp,
  splancs,
}:

buildRPackage {
  pname = "geoR";
  version = "1.9-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/geoR_1.9-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/geoR/geoR_1.9-6.tar.gz"
    ];
    sha256 = "1ck65xmlxclq64f4l53zy2v2krnks0mpp76hbb1anzsx1ccgkalv";
  };

  propagatedBuildInputs = [
    MASS
    sp
    splancs
  ];

  meta = {
    description = "R package geoR";
    homepage = "https://cran.r-project.org/package=geoR";
  };
}

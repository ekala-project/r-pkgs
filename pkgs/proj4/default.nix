{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "proj4";
  version = "1.0-15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/proj4_1.0-15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/proj4/proj4_1.0-15.tar.gz"
    ];
    sha256 = "056ki0z22wqsp5d89ihrsb3xf2h1jiabgy420vc51qcikl27vk7f";
  };

  meta = {
    description = "R package proj4";
    homepage = "https://cran.r-project.org/package=proj4";
  };
}

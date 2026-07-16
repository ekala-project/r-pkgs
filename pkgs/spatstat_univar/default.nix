{
  buildRPackage,
  fetchurl,
  spatstat_utils,
}:

buildRPackage {
  pname = "spatstat_univar";
  version = "3.2-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatstat_univar_3.2-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatstat_univar/spatstat_univar_3.2-0.tar.gz"
    ];
    sha256 = "02vvv9n524pp5sn0w5b40vyahn6dvxf0889gj2p67r89mdlpwbld";
  };

  propagatedBuildInputs = [
    spatstat_utils
  ];

  meta = {
    description = "R package spatstat_univar";
    homepage = "https://cran.r-project.org/package=spatstat_univar";
  };
}

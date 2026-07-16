{
  buildRPackage,
  fetchurl,
  spatstat_data,
  spatstat_explore,
  spatstat_geom,
  spatstat_linnet,
  spatstat_model,
  spatstat_random,
  spatstat_univar,
  spatstat_utils,
}:

buildRPackage {
  pname = "spatstat";
  version = "3.6-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatstat_3.6-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatstat/spatstat_3.6-0.tar.gz"
    ];
    sha256 = "0s368vxlx8hxwq33llppwm06zh0x7z3g374yrpxlfz8z3sqd5j8g";
  };

  propagatedBuildInputs = [
    spatstat_data
    spatstat_explore
    spatstat_geom
    spatstat_linnet
    spatstat_model
    spatstat_random
    spatstat_univar
    spatstat_utils
  ];

  meta = {
    description = "R package spatstat";
    homepage = "https://cran.r-project.org/package=spatstat";
  };
}

{
  buildRPackage,
  fetchurl,
  R_methodsS3,
  R_oo,
  R_utils,
  base64enc,
}:

buildRPackage {
  pname = "R_devices";
  version = "2.17.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/R_devices_2.17.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/R_devices/R_devices_2.17.4.tar.gz"
    ];
    sha256 = "14ppsr4y7jbbg50615xiw2qbqkzp1r2ycabnx4f495wdxflplcnl";
  };

  propagatedBuildInputs = [
    R_methodsS3
    R_oo
    R_utils
    base64enc
  ];

  meta = {
    description = "R package R_devices";
    homepage = "https://cran.r-project.org/package=R_devices";
  };
}

{
  buildRPackage,
  fetchurl,
  VGAM,
}:

buildRPackage {
  pname = "VGAMdata";
  version = "1.1-13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/VGAMdata_1.1-13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/VGAMdata/VGAMdata_1.1-13.tar.gz"
    ];
    sha256 = "132kg8qg5y7mvfqpva6pg63lm0857izkjw7d2ir4l51d5wl1pn9k";
  };

  propagatedBuildInputs = [
    VGAM
  ];

  meta = {
    description = "R package VGAMdata";
    homepage = "https://cran.r-project.org/package=VGAMdata";
  };
}

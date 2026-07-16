{
  buildRPackage,
  fetchurl,
  colorspace,
  dichromat,
  mapproj,
  maps,
}:

buildRPackage {
  pname = "pals";
  version = "1.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pals_1.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pals/pals_1.10.tar.gz"
    ];
    sha256 = "0gavg41kddy1i68rz2l5c9ldvvf8cw88mskdml9hxhnvnh93ff9r";
  };

  propagatedBuildInputs = [
    colorspace
    dichromat
    mapproj
    maps
  ];

  meta = {
    description = "R package pals";
    homepage = "https://cran.r-project.org/package=pals";
  };
}

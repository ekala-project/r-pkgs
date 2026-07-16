{
  buildRPackage,
  fetchurl,
  maps,
}:

buildRPackage {
  pname = "mapproj";
  version = "1.2.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mapproj_1.2.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mapproj/mapproj_1.2.12.tar.gz"
    ];
    sha256 = "0xv03pbsdcnyzy0p17sdwxkyzq9zjsvab2lylhslk2692wnv240j";
  };

  propagatedBuildInputs = [
    maps
  ];

  meta = {
    description = "R package mapproj";
    homepage = "https://cran.r-project.org/package=mapproj";
  };
}

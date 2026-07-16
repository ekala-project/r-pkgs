{
  buildRPackage,
  fetchurl,
  sf,
}:

buildRPackage {
  pname = "gdalUtilities";
  version = "1.2.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gdalUtilities_1.2.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gdalUtilities/gdalUtilities_1.2.5.tar.gz"
    ];
    sha256 = "19vi6mr5jwlb00r33hkz7d0n9dar95hwdvbqbhh2dmha128fjwia";
  };

  propagatedBuildInputs = [
    sf
  ];

  meta = {
    description = "R package gdalUtilities";
    homepage = "https://cran.r-project.org/package=gdalUtilities";
  };
}

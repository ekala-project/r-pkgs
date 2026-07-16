{
  buildRPackage,
  fetchurl,
  png,
}:

buildRPackage {
  pname = "RgoogleMaps";
  version = "1.5.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RgoogleMaps_1.5.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RgoogleMaps/RgoogleMaps_1.5.3.tar.gz"
    ];
    sha256 = "0r6wig86pfsrafl3c0qwi0ym25f89z3q93fsvncskl8y9a8hhd6h";
  };

  propagatedBuildInputs = [
    png
  ];

  meta = {
    description = "R package RgoogleMaps";
    homepage = "https://cran.r-project.org/package=RgoogleMaps";
  };
}

{
  buildRPackage,
  fetchurl,
  Formula,
  plotmo,
}:

buildRPackage {
  pname = "earth";
  version = "5.3.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/earth_5.3.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/earth/earth_5.3.5.tar.gz"
    ];
    sha256 = "0xsbd713qrwpibdb9710pvrwib0v7w3h1kk8sm8aqqi7jlz08l88";
  };

  propagatedBuildInputs = [
    Formula
    plotmo
  ];

  meta = {
    description = "R package earth";
    homepage = "https://cran.r-project.org/package=earth";
  };
}

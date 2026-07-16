{
  buildRPackage,
  fetchurl,
  fru,
}:

buildRPackage {
  pname = "Boruta";
  version = "10.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Boruta_10.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Boruta/Boruta_10.0.0.tar.gz"
    ];
    sha256 = "1f1mvl5xgrvi4a4695kmigpgxlirbqwj7pclxvc7wvznr4ljq0x0";
  };

  propagatedBuildInputs = [
    fru
  ];

  meta = {
    description = "R package Boruta";
    homepage = "https://cran.r-project.org/package=Boruta";
  };
}

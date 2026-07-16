{
  buildRPackage,
  fetchurl,
  jsonlite,
  rlang,
  tidyr,
}:

buildRPackage {
  pname = "gson";
  version = "0.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gson_0.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gson/gson_0.1.0.tar.gz"
    ];
    sha256 = "10d3v543bvsyrwg3dm04xpzxjvmba1d1fhcf2zfb3l36pvjvxp8l";
  };

  propagatedBuildInputs = [
    jsonlite
    rlang
    tidyr
  ];

  meta = {
    description = "R package gson";
    homepage = "https://cran.r-project.org/package=gson";
  };
}

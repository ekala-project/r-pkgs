{
  buildRPackage,
  fetchurl,
  tibble,
}:

buildRPackage {
  pname = "repurrrsive";
  version = "1.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/repurrrsive_1.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/repurrrsive/repurrrsive_1.1.0.tar.gz"
    ];
    sha256 = "123hf7qhhs4jyjbmw4246zmhyngjq7r9ihgg3nxg594kja40khd9";
  };

  propagatedBuildInputs = [
    tibble
  ];

  meta = {
    description = "R package repurrrsive";
    homepage = "https://cran.r-project.org/package=repurrrsive";
  };
}

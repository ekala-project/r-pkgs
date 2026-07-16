{
  buildRPackage,
  fetchurl,
  Cubist,
  partykit,
}:

buildRPackage {
  pname = "C50";
  version = "0.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/C50_0.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/C50/C50_0.2.0.tar.gz"
    ];
    sha256 = "1rhm6inyrq0bmfla60myd8mqs3lhdz51j99b7lb6d4a9cpabfw26";
  };

  propagatedBuildInputs = [
    Cubist
    partykit
  ];

  meta = {
    description = "R package C50";
    homepage = "https://cran.r-project.org/package=C50";
  };
}

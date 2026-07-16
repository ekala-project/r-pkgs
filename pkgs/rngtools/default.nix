{
  buildRPackage,
  fetchurl,
  digest,
}:

buildRPackage {
  pname = "rngtools";
  version = "1.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rngtools_1.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rngtools/rngtools_1.5.2.tar.gz"
    ];
    sha256 = "0kd7x214cqw7hzpmk1iqy1bn7j6x0ady0yz2hsdbclbq9k57d33z";
  };

  propagatedBuildInputs = [
    digest
  ];

  meta = {
    description = "R package rngtools";
    homepage = "https://cran.r-project.org/package=rngtools";
  };
}

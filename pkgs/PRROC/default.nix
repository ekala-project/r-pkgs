{
  buildRPackage,
  fetchurl,
  rlang,
}:

buildRPackage {
  pname = "PRROC";
  version = "1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/PRROC_1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/PRROC/PRROC_1.4.tar.gz"
    ];
    sha256 = "1dlknj6q67iq4xmxj7lz8mz1hsy9qiiy4px0h7raidgckdx4mfwx";
  };

  propagatedBuildInputs = [
    rlang
  ];

  meta = {
    description = "R package PRROC";
    homepage = "https://cran.r-project.org/package=PRROC";
  };
}

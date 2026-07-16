{
  buildRPackage,
  fetchurl,
  stringi,
}:

buildRPackage {
  pname = "qdapRegex";
  version = "0.7.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qdapRegex_0.7.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qdapRegex/qdapRegex_0.7.10.tar.gz"
    ];
    sha256 = "126zh9gm7hqa1yb20pb16qy36ixs6sdslvlxqjh55cw9y0wfhgdh";
  };

  propagatedBuildInputs = [
    stringi
  ];

  meta = {
    description = "R package qdapRegex";
    homepage = "https://cran.r-project.org/package=qdapRegex";
  };
}

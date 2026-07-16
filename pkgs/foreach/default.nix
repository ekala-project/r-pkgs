{
  buildRPackage,
  fetchurl,
  codetools,
  iterators,
}:

buildRPackage {
  pname = "foreach";
  version = "1.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/foreach_1.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/foreach/foreach_1.5.2.tar.gz"
    ];
    sha256 = "1r5gdf9fp3rprvrhf0gzl9qmmqhgdn5gscpm5hk8zxpraf3qscsn";
  };

  propagatedBuildInputs = [
    codetools
    iterators
  ];

  meta = {
    description = "R package foreach";
    homepage = "https://cran.r-project.org/package=foreach";
  };
}

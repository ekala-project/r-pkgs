{
  buildRPackage,
  fetchurl,
  proxy,
}:

buildRPackage {
  pname = "cba";
  version = "0.2-25";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cba_0.2-25.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cba/cba_0.2-25.tar.gz"
    ];
    sha256 = "0a05nfmi9a1gj1r2ms310360wxdw5zgvgb9rc0awf684i5cibjy7";
  };

  propagatedBuildInputs = [
    proxy
  ];

  meta = {
    description = "R package cba";
    homepage = "https://cran.r-project.org/package=cba";
  };
}

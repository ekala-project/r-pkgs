{
  buildRPackage,
  fetchurl,
  processx,
}:

buildRPackage {
  pname = "pingr";
  version = "2.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pingr_2.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pingr/pingr_2.0.5.tar.gz"
    ];
    sha256 = "152zffi2bg5yyjbk7h83fdn1n6ab24m14d69qb2xhs4bydjad2r1";
  };

  propagatedBuildInputs = [
    processx
  ];

  meta = {
    description = "R package pingr";
    homepage = "https://cran.r-project.org/package=pingr";
  };
}

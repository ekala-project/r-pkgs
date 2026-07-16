{
  buildRPackage,
  fetchurl,
  rprojroot,
}:

buildRPackage {
  pname = "here";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/here_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/here/here_1.0.2.tar.gz"
    ];
    sha256 = "0g8c34cki0if7zhcq56lz2vcm4ppb4mgs3b85q1nwk9ijji0m63i";
  };

  propagatedBuildInputs = [
    rprojroot
  ];

  meta = {
    description = "R package here";
    homepage = "https://cran.r-project.org/package=here";
  };
}

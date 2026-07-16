{
  buildRPackage,
  fetchurl,
  numDeriv,
}:

buildRPackage {
  pname = "optextras";
  version = "2019-12.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/optextras_2019-12.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/optextras/optextras_2019-12.4.tar.gz"
    ];
    sha256 = "1sqkid6h13h8i8wzri26s828ycwlxlwpwxd85r8bw9h8hs1n602r";
  };

  propagatedBuildInputs = [
    numDeriv
  ];

  meta = {
    description = "R package optextras";
    homepage = "https://cran.r-project.org/package=optextras";
  };
}

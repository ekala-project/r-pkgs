{
  buildRPackage,
  fetchurl,
  maxLik,
}:

buildRPackage {
  pname = "truncreg";
  version = "0.2-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/truncreg_0.2-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/truncreg/truncreg_0.2-5.tar.gz"
    ];
    sha256 = "1scbjh5k1b8cjjavax08grlxdfs75s63dss0ifpz4d0axc4nm3iy";
  };

  propagatedBuildInputs = [
    maxLik
  ];

  meta = {
    description = "R package truncreg";
    homepage = "https://cran.r-project.org/package=truncreg";
  };
}

{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "matrixcalc";
  version = "1.0-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/matrixcalc_1.0-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/matrixcalc/matrixcalc_1.0-6.tar.gz"
    ];
    sha256 = "09pk0ym6qzribxc6v18cpb6478i4r4kzxpkljjbb3n323zqx5iqb";
  };

  meta = {
    description = "R package matrixcalc";
    homepage = "https://cran.r-project.org/package=matrixcalc";
  };
}

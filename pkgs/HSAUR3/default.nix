{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "HSAUR3";
  version = "1.0-15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/HSAUR3_1.0-15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/HSAUR3/HSAUR3_1.0-15.tar.gz"
    ];
    sha256 = "17yg6ql9c88pg5higmrvhnavx6hcbr4nm5r65d8q3iqfkgnc6ym1";
  };

  meta = {
    description = "R package HSAUR3";
    homepage = "https://cran.r-project.org/package=HSAUR3";
  };
}

{
  buildRPackage,
  fetchurl,
  R6,
  bit64,
}:

buildRPackage {
  pname = "hdf5r";
  version = "1.3.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/hdf5r_1.3.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/hdf5r/hdf5r_1.3.12.tar.gz"
    ];
    sha256 = "0r7z2gf6406f88s9ipsp2x1kf3ia3ksbprri7sn1dx9pd2v3drz2";
  };

  propagatedBuildInputs = [
    R6
    bit64
  ];

  meta = {
    description = "R package hdf5r";
    homepage = "https://cran.r-project.org/package=hdf5r";
  };
}

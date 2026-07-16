{
  buildRPackage,
  fetchurl,
  e1071,
  lmom,
}:

buildRPackage {
  pname = "gld";
  version = "2.6.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gld_2.6.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gld/gld_2.6.8.tar.gz"
    ];
    sha256 = "13kni5kz3fjcnm1blblrnfbyi7rr7jz93ly8jx9l4bgc89rvpcmf";
  };

  propagatedBuildInputs = [
    e1071
    lmom
  ];

  meta = {
    description = "R package gld";
    homepage = "https://cran.r-project.org/package=gld";
  };
}

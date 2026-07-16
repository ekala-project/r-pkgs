{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tcltk2";
  version = "1.6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tcltk2_1.6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tcltk2/tcltk2_1.6.1.tar.gz"
    ];
    sha256 = "0sjwhkk8i9p8d2iyj74ni6fi2mg4k04sf2l3iglirpvkx46c076w";
  };

  meta = {
    description = "R package tcltk2";
    homepage = "https://cran.r-project.org/package=tcltk2";
  };
}

{
  buildRPackage,
  fetchurl,
  repr,
}:

buildRPackage {
  pname = "IRdisplay";
  version = "1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/IRdisplay_1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/IRdisplay/IRdisplay_1.1.tar.gz"
    ];
    sha256 = "0awdiv4rr93y8jb1d64sm1iy37ywyniqm7w98yv6qm0zz47h7sw3";
  };

  propagatedBuildInputs = [
    repr
  ];

  meta = {
    description = "R package IRdisplay";
    homepage = "https://cran.r-project.org/package=IRdisplay";
  };
}

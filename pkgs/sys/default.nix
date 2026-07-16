{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "sys";
  version = "3.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sys_3.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sys/sys_3.4.3.tar.gz"
    ];
    sha256 = "0flihfpfawismsy5piddf2flz1i1fw35k47gxwkbhk87wcr767h5";
  };

  meta = {
    description = "R package sys";
    homepage = "https://cran.r-project.org/package=sys";
  };
}

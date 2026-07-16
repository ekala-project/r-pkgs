{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "VGAM";
  version = "1.1-14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/VGAM_1.1-14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/VGAM/VGAM_1.1-14.tar.gz"
    ];
    sha256 = "13r4hdlkrcrscza3y1nzp6y8ldcpzbv6vcgrw4b5vjqy2krhr0l7";
  };

  meta = {
    description = "R package VGAM";
    homepage = "https://cran.r-project.org/package=VGAM";
  };
}

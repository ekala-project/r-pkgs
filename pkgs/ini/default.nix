{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ini";
  version = "0.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ini_0.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ini/ini_0.3.1.tar.gz"
    ];
    sha256 = "04yqij344dwm0xqgara8xia42mlmij3i8711qbb5534w05a1l6bv";
  };

  meta = {
    description = "R package ini";
    homepage = "https://cran.r-project.org/package=ini";
  };
}

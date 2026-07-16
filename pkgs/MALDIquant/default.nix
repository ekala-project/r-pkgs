{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "MALDIquant";
  version = "1.22.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MALDIquant_1.22.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MALDIquant/MALDIquant_1.22.3.tar.gz"
    ];
    sha256 = "10wk8ykraw1swnlfhp5fh9fhfxkshanqkrwhs8dssqx1l474y2gx";
  };

  meta = {
    description = "R package MALDIquant";
    homepage = "https://cran.r-project.org/package=MALDIquant";
  };
}

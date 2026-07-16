{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "KMsurv";
  version = "0.1-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/KMsurv_0.1-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/KMsurv/KMsurv_0.1-6.tar.gz"
    ];
    sha256 = "0cigcn8lzbg8pvkyb7viid7p0ia3k4hwygiiv9x2f9sb04m6zv22";
  };

  meta = {
    description = "R package KMsurv";
    homepage = "https://cran.r-project.org/package=KMsurv";
  };
}

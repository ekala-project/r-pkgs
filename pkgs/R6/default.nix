{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "R6";
  version = "2.6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/R6_2.6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/R6/R6_2.6.1.tar.gz"
    ];
    sha256 = "1d3k40gnms6458aprrjy899yhjv06lr0arag21zfn4mrn6lfpijr";
  };

  meta = {
    description = "R package R6";
    homepage = "https://cran.r-project.org/package=R6";
  };
}

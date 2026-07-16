{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "poorman";
  version = "0.2.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/poorman_0.2.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/poorman/poorman_0.2.7.tar.gz"
    ];
    sha256 = "1amlcbgfnm6yh7lmlzhs7aalv4mdm2ir3s2kpx33ppnz7hlii508";
  };

  meta = {
    description = "R package poorman";
    homepage = "https://cran.r-project.org/package=poorman";
  };
}

{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "PMA";
  version = "1.2-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/PMA_1.2-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/PMA/PMA_1.2-4.tar.gz"
    ];
    sha256 = "0mq0mchvl4zlj1sgnq7z5ccm0f4lhxajqvk9w265axs0s49g76ry";
  };

  meta = {
    description = "R package PMA";
    homepage = "https://cran.r-project.org/package=PMA";
  };
}

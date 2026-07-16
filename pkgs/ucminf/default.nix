{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ucminf";
  version = "1.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ucminf_1.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ucminf/ucminf_1.2.3.tar.gz"
    ];
    sha256 = "05chb914xyymm8ivzbcxqi6x0276b4mc58ppv10gcrlygblw1ksd";
  };

  meta = {
    description = "R package ucminf";
    homepage = "https://cran.r-project.org/package=ucminf";
  };
}

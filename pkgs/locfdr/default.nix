{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "locfdr";
  version = "1.1-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/locfdr_1.1-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/locfdr/locfdr_1.1-8.tar.gz"
    ];
    sha256 = "1falkbp2xz07am8jlhwlvyqvxnli4nwl188kd0g58vdfjcjy3mj2";
  };

  meta = {
    description = "R package locfdr";
    homepage = "https://cran.r-project.org/package=locfdr";
  };
}

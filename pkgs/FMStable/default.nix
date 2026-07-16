{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "FMStable";
  version = "0.1-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/FMStable_0.1-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/FMStable/FMStable_0.1-4.tar.gz"
    ];
    sha256 = "0fp9nkprpf4v45k7bqi01c69bpwzhdza1bcscgv8jbidvihi0f9a";
  };

  meta = {
    description = "R package FMStable";
    homepage = "https://cran.r-project.org/package=FMStable";
  };
}

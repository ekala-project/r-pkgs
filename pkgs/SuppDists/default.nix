{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "SuppDists";
  version = "1.1-9.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/SuppDists_1.1-9.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/SuppDists/SuppDists_1.1-9.9.tar.gz"
    ];
    sha256 = "09m9vsrzr8c5ird9avfscnib2rs12scbkmawj78vwhc8jj0hig3z";
  };

  meta = {
    description = "R package SuppDists";
    homepage = "https://cran.r-project.org/package=SuppDists";
  };
}

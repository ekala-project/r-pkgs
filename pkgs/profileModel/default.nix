{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "profileModel";
  version = "0.6.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/profileModel_0.6.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/profileModel/profileModel_0.6.2.tar.gz"
    ];
    sha256 = "1h9arw96l4lsmasn1hkp3y1w0a8r2wzndxpi6bbrpgjyifpvkc52";
  };

  meta = {
    description = "R package profileModel";
    homepage = "https://cran.r-project.org/package=profileModel";
  };
}

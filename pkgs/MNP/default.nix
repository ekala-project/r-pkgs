{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "MNP";
  version = "3.1-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MNP_3.1-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MNP/MNP_3.1-5.tar.gz"
    ];
    sha256 = "1rvkhx90hac6spcgzmrs62wvcci08accjlngw9jj4snawc7zyxvs";
  };

  meta = {
    description = "R package MNP";
    homepage = "https://cran.r-project.org/package=MNP";
  };
}

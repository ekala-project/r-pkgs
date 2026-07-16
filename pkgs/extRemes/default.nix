{
  buildRPackage,
  fetchurl,
  Lmoments,
  distillery,
}:

buildRPackage {
  pname = "extRemes";
  version = "2.2-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/extRemes_2.2-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/extRemes/extRemes_2.2-1.tar.gz"
    ];
    sha256 = "0sg9cbhhqmg5flwwlqn0hnybz9mycf3rf5rzssgw8dvlc0mmv3r6";
  };

  propagatedBuildInputs = [
    Lmoments
    distillery
  ];

  meta = {
    description = "R package extRemes";
    homepage = "https://cran.r-project.org/package=extRemes";
  };
}

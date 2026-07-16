{
  buildRPackage,
  fetchurl,
  rngWELL,
}:

buildRPackage {
  pname = "randtoolbox";
  version = "2.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/randtoolbox_2.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/randtoolbox/randtoolbox_2.0.5.tar.gz"
    ];
    sha256 = "07ynzr9pp7c7wgjlq75610hivdzjprvxa7fjl42y4a5rzr9vjvmb";
  };

  propagatedBuildInputs = [
    rngWELL
  ];

  meta = {
    description = "R package randtoolbox";
    homepage = "https://cran.r-project.org/package=randtoolbox";
  };
}

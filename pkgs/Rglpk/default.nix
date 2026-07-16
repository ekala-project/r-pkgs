{
  buildRPackage,
  fetchurl,
  slam,
}:

buildRPackage {
  pname = "Rglpk";
  version = "0.6-5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rglpk_0.6-5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rglpk/Rglpk_0.6-5.1.tar.gz"
    ];
    sha256 = "1jdnkjzwbqmyg7fsay4rhscchg69gyhk9f73mlbfzpz9hz2bha75";
  };

  propagatedBuildInputs = [
    slam
  ];

  meta = {
    description = "R package Rglpk";
    homepage = "https://cran.r-project.org/package=Rglpk";
  };
}

{
  buildRPackage,
  fetchurl,
  Matrix,
  insight,
  nlme,
}:

buildRPackage {
  pname = "MuMIn";
  version = "1.48.19";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MuMIn_1.48.19.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MuMIn/MuMIn_1.48.19.tar.gz"
    ];
    sha256 = "0jpdr4zrrdmyrhrirf9d6k9dwkx49kjlb0wmkfmj5g26cln367qh";
  };

  propagatedBuildInputs = [
    Matrix
    insight
    nlme
  ];

  meta = {
    description = "R package MuMIn";
    homepage = "https://cran.r-project.org/package=MuMIn";
  };
}

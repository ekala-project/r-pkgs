{
  buildRPackage,
  fetchurl,
  sp,
}:

buildRPackage {
  pname = "spData";
  version = "2.3.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spData_2.3.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spData/spData_2.3.5.tar.gz"
    ];
    sha256 = "05dhmg9pvzi1qydpmjbg3p2r29v45pplvg8c3fji1is56kckak83";
  };

  propagatedBuildInputs = [
    sp
  ];

  meta = {
    description = "R package spData";
    homepage = "https://cran.r-project.org/package=spData";
  };
}

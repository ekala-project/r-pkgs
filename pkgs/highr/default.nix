{
  buildRPackage,
  fetchurl,
  xfun,
}:

buildRPackage {
  pname = "highr";
  version = "0.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/highr_0.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/highr/highr_0.12.tar.gz"
    ];
    sha256 = "0av1zj8722y2jmz65w7niwqzmyvqvjannbb0k63r9a92013ddqg8";
  };

  propagatedBuildInputs = [
    xfun
  ];

  meta = {
    description = "R package highr";
    homepage = "https://cran.r-project.org/package=highr";
  };
}

{
  buildRPackage,
  fetchurl,
  rlang,
}:

buildRPackage {
  pname = "ellipsis";
  version = "0.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ellipsis_0.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ellipsis/ellipsis_0.3.3.tar.gz"
    ];
    sha256 = "0wv8jqr2xza4y1gvb4x3jckbzyjivdw711v9ik7z3fn1wny845ys";
  };

  propagatedBuildInputs = [
    rlang
  ];

  meta = {
    description = "R package ellipsis";
    homepage = "https://cran.r-project.org/package=ellipsis";
  };
}

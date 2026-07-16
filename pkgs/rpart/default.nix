{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rpart";
  version = "4.1.27";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rpart_4.1.27.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rpart/rpart_4.1.27.tar.gz"
    ];
    sha256 = "0l20ra089k4afhaz8d302iy0zjk1qn8rb61b1sklj9zhfhnmb0ri";
  };

  meta = {
    description = "R package rpart";
    homepage = "https://cran.r-project.org/package=rpart";
  };
}

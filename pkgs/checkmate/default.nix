{
  buildRPackage,
  fetchurl,
  backports,
}:

buildRPackage {
  pname = "checkmate";
  version = "2.3.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/checkmate_2.3.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/checkmate/checkmate_2.3.4.tar.gz"
    ];
    sha256 = "1jl5pm7c6601g5zafn6kmhhmh96g4bk6dzbdc5g5rn87xs6hdqcm";
  };

  propagatedBuildInputs = [
    backports
  ];

  meta = {
    description = "R package checkmate";
    homepage = "https://cran.r-project.org/package=checkmate";
  };
}

{
  buildRPackage,
  fetchurl,
  cpp11,
  farver,
  magrittr,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "tweenr";
  version = "2.0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tweenr_2.0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tweenr/tweenr_2.0.3.tar.gz"
    ];
    sha256 = "1glc7ks5yymcm4pi0fjpi1zh7m5d4cz7zy20pa3kfraxlh9fbazg";
  };

  propagatedBuildInputs = [
    cpp11
    farver
    magrittr
    rlang
    vctrs
  ];

  meta = {
    description = "R package tweenr";
    homepage = "https://cran.r-project.org/package=tweenr";
  };
}

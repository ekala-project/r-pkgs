{
  buildRPackage,
  fetchurl,
  R6,
  storr,
}:

buildRPackage {
  pname = "redux";
  version = "1.1.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/redux_1.1.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/redux/redux_1.1.5.tar.gz"
    ];
    sha256 = "0s2yihk626x295xzi3v8lcg62dm01gm1hs4xjkya2wg9knbn8y58";
  };

  propagatedBuildInputs = [
    R6
    storr
  ];

  meta = {
    description = "R package redux";
    homepage = "https://cran.r-project.org/package=redux";
  };
}

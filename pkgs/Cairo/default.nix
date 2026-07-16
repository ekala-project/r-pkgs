{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Cairo";
  version = "1.7-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Cairo_1.7-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Cairo/Cairo_1.7-0.tar.gz"
    ];
    sha256 = "0lhxlscq1n0r129rxb6347xg9lkz5xzc3lagvmvbk1dv9dhlmf7w";
  };

  meta = {
    description = "R package Cairo";
    homepage = "https://cran.r-project.org/package=Cairo";
  };
}

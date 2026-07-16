{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "lars";
  version = "1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lars_1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lars/lars_1.3.tar.gz"
    ];
    sha256 = "17al1g0pvfz9frs2kxicqr8dyp7ciz3x87yx2l4lqd53ls6nm7n6";
  };

  meta = {
    description = "R package lars";
    homepage = "https://cran.r-project.org/package=lars";
  };
}

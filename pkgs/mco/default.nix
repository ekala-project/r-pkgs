{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mco";
  version = "1.17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mco_1.17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mco/mco_1.17.tar.gz"
    ];
    sha256 = "18lyd6qp320jxw50hi6jvy3f408jws3gbfl6s9dqahd5b68yk242";
  };

  meta = {
    description = "R package mco";
    homepage = "https://cran.r-project.org/package=mco";
  };
}

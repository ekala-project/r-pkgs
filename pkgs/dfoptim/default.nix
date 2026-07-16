{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "dfoptim";
  version = "2023.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dfoptim_2023.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dfoptim/dfoptim_2023.1.0.tar.gz"
    ];
    sha256 = "0c2ws249n8ib7fx8vp32l2hswicjxsds7xm1f4gcfky9cvcacdn4";
  };

  meta = {
    description = "R package dfoptim";
    homepage = "https://cran.r-project.org/package=dfoptim";
  };
}

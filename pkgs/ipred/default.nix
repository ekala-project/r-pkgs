{
  buildRPackage,
  fetchurl,
  MASS,
  class,
  nnet,
  prodlim,
  rpart,
  survival,
}:

buildRPackage {
  pname = "ipred";
  version = "0.9-15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ipred_0.9-15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ipred/ipred_0.9-15.tar.gz"
    ];
    sha256 = "0jzfq06l2vxyjy46sjgqyk6l4pp06kx3w5j39hzjy9i127hjsxd4";
  };

  propagatedBuildInputs = [
    MASS
    class
    nnet
    prodlim
    rpart
    survival
  ];

  meta = {
    description = "R package ipred";
    homepage = "https://cran.r-project.org/package=ipred";
  };
}

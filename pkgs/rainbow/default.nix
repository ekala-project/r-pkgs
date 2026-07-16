{
  buildRPackage,
  fetchurl,
  MASS,
  cluster,
  colorspace,
  hdrcde,
  ks,
  pcaPP,
}:

buildRPackage {
  pname = "rainbow";
  version = "3.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rainbow_3.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rainbow/rainbow_3.8.tar.gz"
    ];
    sha256 = "0gc25napmcgg1qr17z4zixzxcdiv9midi1x5fin4pzkhicl5d97c";
  };

  propagatedBuildInputs = [
    MASS
    cluster
    colorspace
    hdrcde
    ks
    pcaPP
  ];

  meta = {
    description = "R package rainbow";
    homepage = "https://cran.r-project.org/package=rainbow";
  };
}

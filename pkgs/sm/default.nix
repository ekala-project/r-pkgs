{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "sm";
  version = "2.2-6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sm_2.2-6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sm/sm_2.2-6.0.tar.gz"
    ];
    sha256 = "0q8xav1alammiyiw2p8y0qq94ag5rln910jry8q3sb2p38ly79i7";
  };

  meta = {
    description = "R package sm";
    homepage = "https://cran.r-project.org/package=sm";
  };
}

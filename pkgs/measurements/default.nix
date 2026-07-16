{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "measurements";
  version = "1.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/measurements_1.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/measurements/measurements_1.5.1.tar.gz"
    ];
    sha256 = "061xjwsacsk8vblva4s09xdrvd7kfgxydnpgr7imigyny01c5bh9";
  };

  meta = {
    description = "R package measurements";
    homepage = "https://cran.r-project.org/package=measurements";
  };
}

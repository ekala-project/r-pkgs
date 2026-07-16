{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "lattice";
  version = "0.22-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lattice_0.22-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lattice/lattice_0.22-9.tar.gz"
    ];
    sha256 = "1fm4zkgikjiicn4bkifbzpwdbndmm61nzr38yryglsaj5vnx8amp";
  };

  meta = {
    description = "R package lattice";
    homepage = "https://cran.r-project.org/package=lattice";
  };
}

{
  buildRPackage,
  fetchurl,
  misc3d,
}:

buildRPackage {
  pname = "plot3D";
  version = "1.4.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/plot3D_1.4.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/plot3D/plot3D_1.4.2.tar.gz"
    ];
    sha256 = "0xgxlpqvjf23wmwyn061mhs5hgw4xc0chy4knq56xcgfn3w7mcc8";
  };

  propagatedBuildInputs = [
    misc3d
  ];

  meta = {
    description = "R package plot3D";
    homepage = "https://cran.r-project.org/package=plot3D";
  };
}

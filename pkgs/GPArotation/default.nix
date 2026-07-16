{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "GPArotation";
  version = "2026.4-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GPArotation_2026.4-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GPArotation/GPArotation_2026.4-1.tar.gz"
    ];
    sha256 = "1cz8bc3iprkn8vv0yd8fykm6iiix1k01xc3r2dmawp6h5j5fc9bs";
  };

  meta = {
    description = "R package GPArotation";
    homepage = "https://cran.r-project.org/package=GPArotation";
  };
}

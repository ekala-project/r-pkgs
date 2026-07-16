{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "nleqslv";
  version = "3.3.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nleqslv_3.3.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nleqslv/nleqslv_3.3.7.tar.gz"
    ];
    sha256 = "0xggjchw9fgq9rvlsb4mvnv1762jpazdnmz4a9m00f4k0ijssabg";
  };

  meta = {
    description = "R package nleqslv";
    homepage = "https://cran.r-project.org/package=nleqslv";
  };
}

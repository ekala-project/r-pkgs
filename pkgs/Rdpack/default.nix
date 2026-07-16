{
  buildRPackage,
  fetchurl,
  rbibutils,
}:

buildRPackage {
  pname = "Rdpack";
  version = "2.6.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rdpack_2.6.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rdpack/Rdpack_2.6.6.tar.gz"
    ];
    sha256 = "1nyba4k42inaigdygligpins2vn6g6g21fh8vffcfbjspli9vqdl";
  };

  propagatedBuildInputs = [
    rbibutils
  ];

  meta = {
    description = "R package Rdpack";
    homepage = "https://cran.r-project.org/package=Rdpack";
  };
}

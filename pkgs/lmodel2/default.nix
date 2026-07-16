{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "lmodel2";
  version = "1.7-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lmodel2_1.7-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lmodel2/lmodel2_1.7-4.tar.gz"
    ];
    sha256 = "1rclwaq2hqn6qpkzl686sikkwc5lrmbbdgpsf8qxwqkn2f0xia4f";
  };

  meta = {
    description = "R package lmodel2";
    homepage = "https://cran.r-project.org/package=lmodel2";
  };
}

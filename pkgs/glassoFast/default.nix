{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "glassoFast";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/glassoFast_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/glassoFast/glassoFast_1.0.1.tar.gz"
    ];
    sha256 = "0nyvmmrw6cr5j1mkf1qv6hn3q24kyn6gn48q6r7az4vn1m141hzz";
  };

  meta = {
    description = "R package glassoFast";
    homepage = "https://cran.r-project.org/package=glassoFast";
  };
}

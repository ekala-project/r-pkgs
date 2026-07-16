{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mnormt";
  version = "2.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mnormt_2.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mnormt/mnormt_2.1.2.tar.gz"
    ];
    sha256 = "1ch919ysx600cc4g2xzh43yy9x6q0rk05nhfdz7lid7hgkhfjkv8";
  };

  meta = {
    description = "R package mnormt";
    homepage = "https://cran.r-project.org/package=mnormt";
  };
}

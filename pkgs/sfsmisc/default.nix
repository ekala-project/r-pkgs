{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "sfsmisc";
  version = "1.1-24";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sfsmisc_1.1-24.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sfsmisc/sfsmisc_1.1-24.tar.gz"
    ];
    sha256 = "06l0jh4hpyk6axcqca651jm9wd5jzkf8mpslx4kizp36dar3cccc";
  };

  meta = {
    description = "R package sfsmisc";
    homepage = "https://cran.r-project.org/package=sfsmisc";
  };
}

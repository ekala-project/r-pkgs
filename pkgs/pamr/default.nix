{
  buildRPackage,
  fetchurl,
  cluster,
  survival,
}:

buildRPackage {
  pname = "pamr";
  version = "1.57";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pamr_1.57.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pamr/pamr_1.57.tar.gz"
    ];
    sha256 = "0gdgaspan6j4qw98357mdk7rs6r1abzzfrp63jzf99gi41v8z5h1";
  };

  propagatedBuildInputs = [
    cluster
    survival
  ];

  meta = {
    description = "R package pamr";
    homepage = "https://cran.r-project.org/package=pamr";
  };
}

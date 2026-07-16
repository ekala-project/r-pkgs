{
  buildRPackage,
  fetchurl,
  data_table,
  lava,
  multcomp,
  prodlim,
  survival,
}:

buildRPackage {
  pname = "Publish";
  version = "2025.07.24";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Publish_2025.07.24.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Publish/Publish_2025.07.24.tar.gz"
    ];
    sha256 = "1ay89c0ldxnavp9dlphawjcfbi3291wksdsfgrjv8x1wn7ziy57y";
  };

  propagatedBuildInputs = [
    data_table
    lava
    multcomp
    prodlim
    survival
  ];

  meta = {
    description = "R package Publish";
    homepage = "https://cran.r-project.org/package=Publish";
  };
}

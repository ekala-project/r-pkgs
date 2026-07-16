{
  buildRPackage,
  fetchurl,
  R_utils,
  curl,
  data_table,
  foreign,
  haven,
  lifecycle,
  readr,
  readxl,
  tibble,
  writexl,
}:

buildRPackage {
  pname = "rio";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rio_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rio/rio_1.3.0.tar.gz"
    ];
    sha256 = "04pf4xzz9xnil2jiw4lf693ma70w9ciyy8sv1p43148r4v6vw4pw";
  };

  propagatedBuildInputs = [
    R_utils
    curl
    data_table
    foreign
    haven
    lifecycle
    readr
    readxl
    tibble
    writexl
  ];

  meta = {
    description = "R package rio";
    homepage = "https://cran.r-project.org/package=rio";
  };
}

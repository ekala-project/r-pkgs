{
  buildRPackage,
  fetchurl,
  dplyr,
  hms,
  lifecycle,
  lubridate,
  magrittr,
  purrr,
  rlang,
  snakecase,
  stringi,
  stringr,
  tidyr,
  tidyselect,
}:

buildRPackage {
  pname = "janitor";
  version = "2.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/janitor_2.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/janitor/janitor_2.2.1.tar.gz"
    ];
    sha256 = "1pvcmqlkdlain7zf10i2hwq7kg1l703m2sp6d27gxjk258q03i17";
  };

  propagatedBuildInputs = [
    dplyr
    hms
    lifecycle
    lubridate
    magrittr
    purrr
    rlang
    snakecase
    stringi
    stringr
    tidyr
    tidyselect
  ];

  meta = {
    description = "R package janitor";
    homepage = "https://cran.r-project.org/package=janitor";
  };
}

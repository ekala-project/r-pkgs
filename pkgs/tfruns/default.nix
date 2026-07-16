{
  buildRPackage,
  fetchurl,
  base64enc,
  config,
  jsonlite,
  magrittr,
  reticulate,
  rlang,
  rstudioapi,
  tidyselect,
  whisker,
  yaml,
}:

buildRPackage {
  pname = "tfruns";
  version = "1.5.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tfruns_1.5.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tfruns/tfruns_1.5.4.tar.gz"
    ];
    sha256 = "1lii59py4m9cwxjc8gfplcwkdy72j4nkgfizpbi45bzim84ay8nx";
  };

  propagatedBuildInputs = [
    base64enc
    config
    jsonlite
    magrittr
    reticulate
    rlang
    rstudioapi
    tidyselect
    whisker
    yaml
  ];

  meta = {
    description = "R package tfruns";
    homepage = "https://cran.r-project.org/package=tfruns";
  };
}

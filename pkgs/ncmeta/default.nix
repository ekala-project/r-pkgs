{
  buildRPackage,
  fetchurl,
  CFtime,
  RNetCDF,
  dplyr,
  rlang,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "ncmeta";
  version = "0.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ncmeta_0.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ncmeta/ncmeta_0.4.0.tar.gz"
    ];
    sha256 = "1aamxs3yza1hsgvkp6740lv1dc21a87mzl06n6w3zxkjshri020w";
  };

  propagatedBuildInputs = [
    CFtime
    RNetCDF
    dplyr
    rlang
    tibble
    tidyr
  ];

  meta = {
    description = "R package ncmeta";
    homepage = "https://cran.r-project.org/package=ncmeta";
  };
}

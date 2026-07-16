{
  buildRPackage,
  fetchurl,
  R6,
  stringr,
}:

buildRPackage {
  pname = "selectr";
  version = "0.5-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/selectr_0.5-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/selectr/selectr_0.5-1.tar.gz"
    ];
    sha256 = "0rgicw997gk3vf3pjg4p45f9n50jn5257pb9ibgyz4cbrksg39p8";
  };

  propagatedBuildInputs = [
    R6
    stringr
  ];

  meta = {
    description = "R package selectr";
    homepage = "https://cran.r-project.org/package=selectr";
  };
}

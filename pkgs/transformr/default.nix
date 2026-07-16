{
  buildRPackage,
  fetchurl,
  cpp11,
  lpSolve,
  rlang,
  sf,
  tweenr,
  vctrs,
}:

buildRPackage {
  pname = "transformr";
  version = "0.1.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/transformr_0.1.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/transformr/transformr_0.1.5.tar.gz"
    ];
    sha256 = "125y99wpgvp92qsg7934nzjqy6irjzaj21c0dcq7apqd2hqamfxw";
  };

  propagatedBuildInputs = [
    cpp11
    lpSolve
    rlang
    sf
    tweenr
    vctrs
  ];

  meta = {
    description = "R package transformr";
    homepage = "https://cran.r-project.org/package=transformr";
  };
}

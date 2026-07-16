{
  buildRPackage,
  fetchurl,
  cli,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "sparsevctrs";
  version = "0.3.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sparsevctrs_0.3.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sparsevctrs/sparsevctrs_0.3.6.tar.gz"
    ];
    sha256 = "1v0a4ir7ak54hpplppjyq5iw53azjn7cg13p1g8kf6a7nyrkr4dm";
  };

  propagatedBuildInputs = [
    cli
    rlang
    vctrs
  ];

  meta = {
    description = "R package sparsevctrs";
    homepage = "https://cran.r-project.org/package=sparsevctrs";
  };
}

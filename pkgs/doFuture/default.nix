{
  buildRPackage,
  fetchurl,
  foreach,
  future,
  future_apply,
  globals,
  iterators,
}:

buildRPackage {
  pname = "doFuture";
  version = "1.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/doFuture_1.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/doFuture/doFuture_1.2.2.tar.gz"
    ];
    sha256 = "1dx49m6nxginiwkyyz5l05xfp7sn6m00sx1924r1i7yfh2dnafnv";
  };

  propagatedBuildInputs = [
    foreach
    future
    future_apply
    globals
    iterators
  ];

  meta = {
    description = "R package doFuture";
    homepage = "https://cran.r-project.org/package=doFuture";
  };
}

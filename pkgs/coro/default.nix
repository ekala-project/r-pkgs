{
  buildRPackage,
  fetchurl,
  rlang,
}:

buildRPackage {
  pname = "coro";
  version = "1.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/coro_1.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/coro/coro_1.1.0.tar.gz"
    ];
    sha256 = "1kvaf5484s6dn6zm4nw0ns6fi09lcqnljb51w4fdgsm80s04k6kc";
  };

  propagatedBuildInputs = [
    rlang
  ];

  meta = {
    description = "R package coro";
    homepage = "https://cran.r-project.org/package=coro";
  };
}

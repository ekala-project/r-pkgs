{
  buildRPackage,
  fetchurl,
  future,
  globals,
}:

buildRPackage {
  pname = "future_apply";
  version = "1.20.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/future_apply_1.20.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/future_apply/future_apply_1.20.2.tar.gz"
    ];
    sha256 = "1psbwxy99f705j1lb4aq63y0f5w1rqzm08byn30hzi51jd6bdmih";
  };

  propagatedBuildInputs = [
    future
    globals
  ];

  meta = {
    description = "R package future_apply";
    homepage = "https://cran.r-project.org/package=future_apply";
  };
}

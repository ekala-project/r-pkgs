{
  buildRPackage,
  fetchurl,
  lifecycle,
  rlang,
}:

buildRPackage {
  pname = "chk";
  version = "0.10.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/chk_0.10.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/chk/chk_0.10.0.tar.gz"
    ];
    sha256 = "116kmgyi8wndl4r4fmbbdi2bpzxnl92izz1rr6xzwr8zd7xcs22v";
  };

  propagatedBuildInputs = [
    lifecycle
    rlang
  ];

  meta = {
    description = "R package chk";
    homepage = "https://cran.r-project.org/package=chk";
  };
}

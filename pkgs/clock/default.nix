{
  buildRPackage,
  fetchurl,
  cli,
  cpp11,
  lifecycle,
  rlang,
  tzdb,
  vctrs,
}:

buildRPackage {
  pname = "clock";
  version = "0.7.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/clock_0.7.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/clock/clock_0.7.4.tar.gz"
    ];
    sha256 = "1jlp4f5a48l2318dgawafc8v8xncms1nvw9adl0xpwhhlrfkqxhk";
  };

  propagatedBuildInputs = [
    cli
    cpp11
    lifecycle
    rlang
    tzdb
    vctrs
  ];

  meta = {
    description = "R package clock";
    homepage = "https://cran.r-project.org/package=clock";
  };
}

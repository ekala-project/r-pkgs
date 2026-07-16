{
  buildRPackage,
  fetchurl,
  ks,
}:

buildRPackage {
  pname = "logcondens";
  version = "2.1.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/logcondens_2.1.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/logcondens/logcondens_2.1.9.tar.gz"
    ];
    sha256 = "0jw7f6n2kh9a3lqwbzr75660qwly3968rjp9zdkyxhx3b181vic0";
  };

  propagatedBuildInputs = [
    ks
  ];

  meta = {
    description = "R package logcondens";
    homepage = "https://cran.r-project.org/package=logcondens";
  };
}

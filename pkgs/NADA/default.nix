{
  buildRPackage,
  fetchurl,
  survival,
}:

buildRPackage {
  pname = "NADA";
  version = "1.6-1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/NADA_1.6-1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/NADA/NADA_1.6-1.2.tar.gz"
    ];
    sha256 = "1d72mjjg9flzhzqc6sgcsvx0fwj3gy4sj38wrs2mja40r1mwczc3";
  };

  propagatedBuildInputs = [
    survival
  ];

  meta = {
    description = "R package NADA";
    homepage = "https://cran.r-project.org/package=NADA";
  };
}

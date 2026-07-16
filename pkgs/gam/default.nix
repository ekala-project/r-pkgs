{
  buildRPackage,
  fetchurl,
  foreach,
}:

buildRPackage {
  pname = "gam";
  version = "1.22-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gam_1.22-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gam/gam_1.22-7.tar.gz"
    ];
    sha256 = "1g7f4m8vhd9cc50ywvgasj396mavwxsygjk6ckki2gmn1i5rc4ym";
  };

  propagatedBuildInputs = [
    foreach
  ];

  meta = {
    description = "R package gam";
    homepage = "https://cran.r-project.org/package=gam";
  };
}

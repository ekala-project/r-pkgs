{
  buildRPackage,
  fetchurl,
  boot,
}:

buildRPackage {
  pname = "deming";
  version = "1.4-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/deming_1.4-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/deming/deming_1.4-1.tar.gz"
    ];
    sha256 = "1jipary7wqb9gmj4mfrz4ym5ir44q2rhknxx6ah1f5lpkcsjm6c6";
  };

  propagatedBuildInputs = [
    boot
  ];

  meta = {
    description = "R package deming";
    homepage = "https://cran.r-project.org/package=deming";
  };
}

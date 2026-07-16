{
  buildRPackage,
  fetchurl,
  brglm,
  gtools,
  lme4,
  qvcalc,
}:

buildRPackage {
  pname = "BradleyTerry2";
  version = "1.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BradleyTerry2_1.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BradleyTerry2/BradleyTerry2_1.1.3.tar.gz"
    ];
    sha256 = "1whjc5cawmgkcm7qvhyvyq3bw4pcxd78vbjbibhsr35fdwf0cvq6";
  };

  propagatedBuildInputs = [
    brglm
    gtools
    lme4
    qvcalc
  ];

  meta = {
    description = "R package BradleyTerry2";
    homepage = "https://cran.r-project.org/package=BradleyTerry2";
  };
}

{
  buildRPackage,
  fetchurl,
  GPArotation,
  lattice,
  mnormt,
  nlme,
}:

buildRPackage {
  pname = "psych";
  version = "2.6.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/psych_2.6.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/psych/psych_2.6.5.tar.gz"
    ];
    sha256 = "1698xg1452fz75ib3m6z512r1v6kq8xi6iqm5m62v7p4lsnynw4s";
  };

  propagatedBuildInputs = [
    GPArotation
    lattice
    mnormt
    nlme
  ];

  meta = {
    description = "R package psych";
    homepage = "https://cran.r-project.org/package=psych";
  };
}

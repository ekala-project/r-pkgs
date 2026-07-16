{
  buildRPackage,
  fetchurl,
  R6,
  cli,
  dplyr,
  openssl,
  ragg,
  tidyr,
  uuid,
  xml2,
  zip,
}:

buildRPackage {
  pname = "officer";
  version = "0.7.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/officer_0.7.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/officer/officer_0.7.5.tar.gz"
    ];
    sha256 = "1z1b4953iyv4kjgzqivh9sa41wi6jzjhrhspiy4qj05cfwdx687s";
  };

  propagatedBuildInputs = [
    R6
    cli
    dplyr
    openssl
    ragg
    tidyr
    uuid
    xml2
    zip
  ];

  meta = {
    description = "R package officer";
    homepage = "https://cran.r-project.org/package=officer";
  };
}

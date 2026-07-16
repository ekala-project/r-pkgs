{
  buildRPackage,
  fetchurl,
  maptree,
}:

buildRPackage {
  pname = "tgp";
  version = "2.4-23";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tgp_2.4-23.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tgp/tgp_2.4-23.tar.gz"
    ];
    sha256 = "074d2c88ydgmggz24hqkxb8sqvbcgf5d32dhcxwa79snv8br5aqd";
  };

  propagatedBuildInputs = [
    maptree
  ];

  meta = {
    description = "R package tgp";
    homepage = "https://cran.r-project.org/package=tgp";
  };
}

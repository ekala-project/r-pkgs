{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "stringi";
  version = "1.8.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stringi_1.8.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stringi/stringi_1.8.7.tar.gz"
    ];
    sha256 = "1in8sn7d7lxm2zcpzm7xlrmvcb2c752nkadcg0ic9ds1rp6xw9h5";
  };

  meta = {
    description = "R package stringi";
    homepage = "https://cran.r-project.org/package=stringi";
  };
}

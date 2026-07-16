{
  buildRPackage,
  fetchurl,
  knitr,
}:

buildRPackage {
  pname = "arsenal";
  version = "3.6.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/arsenal_3.6.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/arsenal/arsenal_3.6.3.tar.gz"
    ];
    sha256 = "0qvs3ld28djnjnggdhqjwq8sbv8zz322qahlvf7dnx35yqf6xkms";
  };

  propagatedBuildInputs = [
    knitr
  ];

  meta = {
    description = "R package arsenal";
    homepage = "https://cran.r-project.org/package=arsenal";
  };
}

{
  buildRPackage,
  fetchurl,
  foreign,
  psych,
}:

buildRPackage {
  pname = "psychTools";
  version = "2.6.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/psychTools_2.6.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/psychTools/psychTools_2.6.4.tar.gz"
    ];
    sha256 = "1wb6psazj2kkhjrk6k65648pc6pycpq4x9181mwkrbgskvxwjjqa";
  };

  propagatedBuildInputs = [
    foreign
    psych
  ];

  meta = {
    description = "R package psychTools";
    homepage = "https://cran.r-project.org/package=psychTools";
  };
}

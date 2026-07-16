{
  buildRPackage,
  fetchurl,
  sfsmisc,
}:

buildRPackage {
  pname = "lokern";
  version = "1.1-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lokern_1.1-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lokern/lokern_1.1-12.tar.gz"
    ];
    sha256 = "0xymmkq5pnqiv5ipakx5w8nl0qhxix0lz8xvn88801r5zygyywbc";
  };

  propagatedBuildInputs = [
    sfsmisc
  ];

  meta = {
    description = "R package lokern";
    homepage = "https://cran.r-project.org/package=lokern";
  };
}

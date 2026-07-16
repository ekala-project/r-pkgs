{
  buildRPackage,
  fetchurl,
  cpp11,
}:

buildRPackage {
  pname = "timechange";
  version = "0.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/timechange_0.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/timechange/timechange_0.4.0.tar.gz"
    ];
    sha256 = "1srzyy3y2wgrrjn7nv0z08fg951y7ww00f6zgpzlqg4x6ffzzj3d";
  };

  propagatedBuildInputs = [
    cpp11
  ];

  meta = {
    description = "R package timechange";
    homepage = "https://cran.r-project.org/package=timechange";
  };
}

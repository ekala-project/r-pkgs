{
  buildRPackage,
  fetchurl,
  awsMethods,
  gsl,
}:

buildRPackage {
  pname = "aws";
  version = "2.5-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/aws_2.5-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/aws/aws_2.5-6.tar.gz"
    ];
    sha256 = "0b1rixkk4fn34hig39ayfiiidk4jdx035p2y1vhdn9dyj21cbcls";
  };

  propagatedBuildInputs = [
    awsMethods
    gsl
  ];

  meta = {
    description = "R package aws";
    homepage = "https://cran.r-project.org/package=aws";
  };
}

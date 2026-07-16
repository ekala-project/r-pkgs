{
  buildRPackage,
  fetchurl,
  lpSolve,
}:

buildRPackage {
  pname = "linprog";
  version = "0.9-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/linprog_0.9-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/linprog/linprog_0.9-6.tar.gz"
    ];
    sha256 = "1q23d9ixdxw1x4v8chd69f7iax2wsf1l5z8mywd5yycmgchkhpcf";
  };

  propagatedBuildInputs = [
    lpSolve
  ];

  meta = {
    description = "R package linprog";
    homepage = "https://cran.r-project.org/package=linprog";
  };
}

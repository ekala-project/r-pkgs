{
  buildRPackage,
  fetchurl,
  insight,
}:

buildRPackage {
  pname = "datawizard";
  version = "1.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/datawizard_1.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/datawizard/datawizard_1.3.1.tar.gz"
    ];
    sha256 = "139cmlakr5ixv5sx3xnyyyx9hkdhnh1davv4r4lbmd6hgcrnj541";
  };

  propagatedBuildInputs = [
    insight
  ];

  meta = {
    description = "R package datawizard";
    homepage = "https://cran.r-project.org/package=datawizard";
  };
}

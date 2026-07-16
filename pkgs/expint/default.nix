{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "expint";
  version = "0.2-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/expint_0.2-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/expint/expint_0.2-1.tar.gz"
    ];
    sha256 = "1nlz4ifj1z3yh5znh06syjzj2pg27iw6995ccn6msal2xbydz18j";
  };

  meta = {
    description = "R package expint";
    homepage = "https://cran.r-project.org/package=expint";
  };
}

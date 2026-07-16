{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "coop";
  version = "0.6-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/coop_0.6-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/coop/coop_0.6-3.tar.gz"
    ];
    sha256 = "0ww99ssgawsgn6rqy838wbx6iirzdrzyxirvz084ih8j50blx420";
  };

  meta = {
    description = "R package coop";
    homepage = "https://cran.r-project.org/package=coop";
  };
}

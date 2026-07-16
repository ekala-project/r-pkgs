{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "zeallot";
  version = "0.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/zeallot_0.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/zeallot/zeallot_0.2.0.tar.gz"
    ];
    sha256 = "1fwjv8lck5jz3gd67lr5wrpj1m7k70mkx6riyxv2yxndnzdrfsvz";
  };

  meta = {
    description = "R package zeallot";
    homepage = "https://cran.r-project.org/package=zeallot";
  };
}

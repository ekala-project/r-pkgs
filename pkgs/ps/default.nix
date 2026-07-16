{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ps";
  version = "1.9.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ps_1.9.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ps/ps_1.9.3.tar.gz"
    ];
    sha256 = "0s1fxx0d93h470cmrpgp30zd11qb59hsqq7rv9rj16kh4w37y8kv";
  };

  meta = {
    description = "R package ps";
    homepage = "https://cran.r-project.org/package=ps";
  };
}

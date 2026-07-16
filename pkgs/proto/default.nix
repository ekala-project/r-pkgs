{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "proto";
  version = "1.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/proto_1.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/proto/proto_1.0.0.tar.gz"
    ];
    sha256 = "1l843p8vckjckdhgv37ngv47fga5jzy0n00pmipvp05nnaixk54j";
  };

  meta = {
    description = "R package proto";
    homepage = "https://cran.r-project.org/package=proto";
  };
}

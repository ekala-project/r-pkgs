{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "timeDate";
  version = "4052.112";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/timeDate_4052.112.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/timeDate/timeDate_4052.112.tar.gz"
    ];
    sha256 = "0ij61q798x1kfd6dn38vxrwy6r6nzjk13rr1nxy9gpwz9wlqwnvz";
  };

  meta = {
    description = "R package timeDate";
    homepage = "https://cran.r-project.org/package=timeDate";
  };
}

require 'formula'

class MongodbSrc < Formula
  homepage 'http://www.mongodb.org'
  url 'http://downloads.mongodb.org/src/mongodb-src-r2.2.0.tar.gz'
  sha1 'bdf414c3a71386f1bf7b6df8da72400abe434ebe'
  version '2.2.0'

  depends_on 'boost'
  depends_on 'pcre'
  depends_on 'spidermonkey'
  depends_on 'snappy'

  def install
    system "scons --prefix=#{prefix} --ssl all"
    system "scons --prefix=#{prefix} --ssl install"
  end

  def test
    mongod
  end
end

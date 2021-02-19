class Eq < Formula
  desc "A simple command line interface for Elasticsearch queries"
  homepage "https://github.com/Conky5/eq"
  license "Apache-2.0"
  version "1.0.3"

  if OS.mac?
    url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "8f43e5c2133dbcc3f3befce83af5742159bd4aea2ca4dbff120d75584ed98e81"
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-aarch64-aarch64-linux-gnu.tar.gz"
      sha256 "99e45ac645cd996d2885132bfaaa623f01e42ec861aa8e6775287cb233506885"
    else
      url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ed240a79e8fec533b86e7c79b3e379d7a3cc226763bb515140165b97a8e1b8c"
    end
  end

  def install
    bin.install "eq"
    man1.install "eq.1"
  end

  test do
    system "#{bin}/eq --version"
  end
end


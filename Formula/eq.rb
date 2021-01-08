class Eq < Formula
  desc "A simple command line interface for Elasticsearch queries"
  homepage "https://github.com/Conky5/eq"
  license "Apache-2.0"
  version "1.0.1"

  if OS.mac?
    url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "084f9bb30131f172a5de49ef757a1ecf21e69c2141b00e1b348b226d21109952"
  elsif OS.linux?
    url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6810a770c424fee35cad5001f4da2a0c689ae8fdcb824f61cb9c8bbb06212cd8"
  end

  def install
    bin.install "eq"
    man1.install "eq.1"
  end

  test do
    system "#{bin}/eq --version"
  end
end


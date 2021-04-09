class Eq < Formula
  desc "A simple command line interface for Elasticsearch queries"
  homepage "https://github.com/Conky5/eq"
  license "Apache-2.0"
  version "1.0.4"

  if OS.mac?
    url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "60552494afdfd96c1b7a04518fe129270da850db7fc13d70f9cc660f6fdb1c84"
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-aarch64-aarch64-linux-gnu.tar.gz"
      sha256 "2c69e961945105d0e893a91d96a4b2a0cc11533c8eb352c5f84ee6b220a7813a"
    else
      url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1d18f510eabff16e5214fc99b2a785ad989bc3cbd5b24830254829e422ac449"
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


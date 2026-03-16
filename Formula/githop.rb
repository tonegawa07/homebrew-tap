class Githop < Formula
  desc "A lightweight TUI for quick git branch operations"
  homepage "https://github.com/tonegawa07/githop"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c788fb05a712df7b57fcad8073a95cf451008b484cca5d9c84dbcd6412c16348"
    else
      url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "042fac56ac27dcb7ec2214acbfaa02efbe8a3f47c46f77158a8f5f7ac4acfab6"
    end
  end

  on_linux do
    url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fdaa280fde97aa1ca412efd0a68299b649cdc9e7a825543406462201f5a5d5bf"
  end

  def install
    bin.install "githop"
  end

  test do
    assert_match "Not a git repository", shell_output("#{bin}/githop 2>&1", 1)
  end
end

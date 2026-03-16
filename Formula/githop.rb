class Githop < Formula
  desc "A lightweight TUI for quick git branch operations"
  homepage "https://github.com/tonegawa07/githop"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b42d538b4a4964953dc77b9f152af77dfe9178e074fdd4cccb7a2a54cb7b33e4"
    else
      url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3ee5d0fa6652ecb4b55a81cec3cbe2e5586e535dcf733c290c2b044a6ded1844"
    end
  end

  on_linux do
    url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3f38ee287bb33a8459069f646e547f1f7765da6b0cbfe9ce1d44e69c7c7be106"
  end

  def install
    bin.install "githop"
  end

  test do
    assert_match "Not a git repository", shell_output("#{bin}/githop 2>&1", 1)
  end
end

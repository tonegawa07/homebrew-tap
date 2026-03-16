class Githop < Formula
  desc "A lightweight TUI for quick git branch operations"
  homepage "https://github.com/tonegawa07/githop"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0e0ad19c71ff71e0b2faddc7d21456b032679d4672b82a933233201421fb3d83"
    else
      url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d17e27ada4de3d141ba802a451be9e9ad5a6ccef13e47e142316d97f7d0d95f7"
    end
  end

  on_linux do
    url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c375bfaf9181590e8fd2e00323d899b0a240022f331eda5c71207d07f86ba713"
  end

  def install
    bin.install "githop"
  end

  test do
    assert_match "Not a git repository", shell_output("#{bin}/githop 2>&1", 1)
  end
end

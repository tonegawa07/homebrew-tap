class Githop < Formula
  desc "A lightweight TUI for quick git branch operations"
  homepage "https://github.com/tonegawa07/githop"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0606f460add61132eb23502d27e6b600599d394f39a8153fd5c931c7fe4d4f72"
    else
      url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4acfd7550aab0f3c7e180c4dbccaaed4fc2845385d62e346a9c488566486b880"
    end
  end

  on_linux do
    url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "08279a962bbc34665ec4df17c864a4e3e39f7541a4fa53ba543891d84787a606"
  end

  def install
    bin.install "githop"
  end

  test do
    assert_match "Not a git repository", shell_output("#{bin}/githop 2>&1", 1)
  end
end

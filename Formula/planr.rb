class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.4.0/planr-darwin-arm64.tar.gz"
      sha256 "f0d0f5985de71b6ea4d9505679633fa266d02570e5c196219364f6059f92d16a"
    else
      url "https://github.com/instructa/planr/releases/download/v1.4.0/planr-darwin-x86_64.tar.gz"
      sha256 "0bffc71910c8cc3bb18a44d8e6a9f2a971307d2046b7019738e240ae4a9992fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.4.0/planr-linux-arm64.tar.gz"
      sha256 "191b790a81cbbe9c4519d31807a55f0cbfce5fcb384f5bd1a80370e182842446"
    else
      url "https://github.com/instructa/planr/releases/download/v1.4.0/planr-linux-x86_64.tar.gz"
      sha256 "2d7fd15eb43f94b4cdb35fcc91104c8448023533446b2cce49dfc5ee2d02ac7b"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end

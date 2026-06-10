class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.6/planr-darwin-arm64.tar.gz"
      sha256 "08b1245da72950eec831a4af112b9a6a04048064cf1f7cadcbd8133b3b603ac7"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.6/planr-darwin-x86_64.tar.gz"
      sha256 "7d09a57e550c407c690b47de4b1017f6caa55b80676b63499834bf1ce52b0995"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.6/planr-linux-arm64.tar.gz"
      sha256 "d1e656e2e5e6c2e94a8c71340465ad14e020013f9d2f26773795c54444511183"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.6/planr-linux-x86_64.tar.gz"
      sha256 "bbdabbb51c843ea91805e2c8a73813fd4087aeb485b24cbe769b6fd62f02097e"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end

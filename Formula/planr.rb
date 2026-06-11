class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.17/planr-darwin-arm64.tar.gz"
      sha256 "a7e29311e41844c8639203bf37777d35ed8b9dcd1e8cc9d1e74338c71dca301e"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.17/planr-darwin-x86_64.tar.gz"
      sha256 "65e56b21cd1e9e0bb4f03e49fa8ee58857f407f9e038ce1bf905868e6703429a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.17/planr-linux-arm64.tar.gz"
      sha256 "bbdcbe5d734cdf5e51efa32f82209452ba18321fb44300af29f38fe534bb51fd"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.17/planr-linux-x86_64.tar.gz"
      sha256 "5573f030d3435c053e80b7b94e7a4cd8655640b30ff71257180c479d6a715533"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end

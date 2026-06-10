class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.4/planr-darwin-arm64.tar.gz"
      sha256 "385b272d3eb278b5701796aa2615788a2cdc198efd6ec234136f5f85cbf97985"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.4/planr-darwin-x86_64.tar.gz"
      sha256 "b00806cdd91e2246dd120d6eb1735107109e610e28546613f85ba188f91cf11f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.4/planr-linux-arm64.tar.gz"
      sha256 "9d4e7babed6f691efc12a422ebde99528456efee5e626443c1f7790e8073d3ba"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.4/planr-linux-x86_64.tar.gz"
      sha256 "4f8de89a2e7c61bf9f8e3b4113d72a840e98b87af7084a0c31c1c36a003954b9"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end

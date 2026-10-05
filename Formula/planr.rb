class Planr < Formula
  desc "Planning CLI for Markdown task graphs"
  homepage "https://planr.so"
  url "https://registry.npmjs.org/planr/-/planr-2.0.0.tgz"
  sha256 "61d6e8295d8280f0615ebb6ceca30da1063cf2e0e67750f84bcae171df2abb1a"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"lib/node_modules/planr/skills/planr/scripts/planr.mjs" => "planr"
  end

  def caveats
    <<~EOS
      planr 2.0 is a rebuild and does not read 1.x data.
      Version 1.x remains available: brew install instructa/tap/planr@1
    EOS
  end

  test do
    assert_equal "planr 2.0.0\n", shell_output("#{bin}/planr --version")
  end
end

class Sshdb < Formula
  desc "Keyboard-first SSH library and launcher TUI"
  homepage "https://github.com/ruphy/sshdb"
  url "https://github.com/ruphy/sshdb/archive/refs/tags/v0.16.5.tar.gz"
  sha256 "12056fdf87a726b4cc610d0172fb65e5a20d4ecb23748bb6281ab826f94266ce"
  license "GPL-3.0-or-later"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/sshdb", "--help"
  end
end

class Sshdb < Formula
  desc "Keyboard-first SSH library and launcher TUI"
  homepage "https://github.com/ruphy/sshdb"
  version "0.16.13"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-macos-aarch64.tar.gz"
      sha256 "a4ca971979e188119976f8b802f3a7c5c73517b762cd53b4c9b17d2625c4d8ab"
    end
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-macos-x86_64.tar.gz"
      sha256 "b105368ac59a986470596544904a6175438e588d8a5dcd6d5a6891d54f091932"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-linux-x86_64.tar.gz"
      sha256 "cb17d3cabea150d070dc871381a93b6ed5ec68ad12b0452d67c1b432766d1cfc"
    end
  end

  def install
    bin.install "sshdb"
  end

  test do
    system "#{bin}/sshdb", "--help"
  end
end

class Sshdb < Formula
  desc "Keyboard-first SSH library and launcher TUI"
  homepage "https://github.com/ruphy/sshdb"
  version "0.16.15"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-macos-aarch64.tar.gz"
      sha256 "539636774a8886069caeda38ac30da68e533ec87d405e8ff1dedf65f9e2410d8"
    end
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-macos-x86_64.tar.gz"
      sha256 "32bba109104ee302cbee519762e1d3ad016c0cca43e93d6bb4ff448ce589f7be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-linux-x86_64.tar.gz"
      sha256 "a55e83d18dc620b301d63cd7d57bc35f15bb42bec84b2af0544c7060602147cf"
    end
  end

  def install
    bin.install "sshdb"
  end

  test do
    system "#{bin}/sshdb", "--help"
  end
end

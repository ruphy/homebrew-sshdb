class Sshdb < Formula
  desc "Keyboard-first SSH library and launcher TUI"
  homepage "https://github.com/ruphy/sshdb"
  version "0.17.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-macos-aarch64.tar.gz"
      sha256 "2b76a4a256d0313cc0a45b2866d877d04104f10d5e5614282614df6744af56da"
    end
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-macos-x86_64.tar.gz"
      sha256 "7443ebf7bb0b10437c61d8c7dd4fdade7c8fddb5061ab77d8819be54d1e1a179"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ruphy/sshdb/releases/download/v#{version}/sshdb-linux-x86_64.tar.gz"
      sha256 "4381caf3239ff0bd6185682c735e9c35cb704a99acfed3acb4840a87e4230166"
    end
  end

  def install
    bin.install "sshdb"
  end

  test do
    system "#{bin}/sshdb", "--help"
  end
end

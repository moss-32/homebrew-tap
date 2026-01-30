class Moss < Formula
  desc "Moss Fantasy Console"
  homepage "https://github.com/moss-32/moss"

  version "0.1.6"


  on_linux do

    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-aarch64.tar.gz"
      sha256 "8f819f612384bf803b91b0a4016d37a69c1ae583da3a4aaf43cafdf8fe075f92"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-x86_64.tar.gz"
      sha256 "030b81f8df5681ab88d5f7f62dc74c5a87a1ac27ae0a8e5106c6fb1e1d0ad6bf"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-arm64.tar.gz"
      sha256 "33d6a333e2b8c051bef4feff432df4d56fc23cf5e4bcbcbd9e89d2ad4e052d1c"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-x86_64.tar.gz"
      sha256 "bb98afa9efc6b3b39c31cdd5229c3ca599b931bf395878c819090ba0e3aab6b5"
    end
  end



def install
    os = OS.mac? ? "macos" : "linux"

    arch = Hardware::CPU.arm? ? (OS.mac? ? "arm64" : "aarch64") : "x86_64"

    bin.install "moss-#{os}-#{arch}" => "moss"
  end

end

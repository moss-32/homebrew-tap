class Moss < Formula
  desc "Moss Fantasy Console"
  homepage "https://github.com/moss-32/moss"

  version "0.1.8"


  on_linux do

    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-aarch64.tar.gz"
      sha256 "6659aa540fc06cc72310b7da2489938bd4121871de54a0abc55f0bbded19c127"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-x86_64.tar.gz"
      sha256 "c51214a6eb2b932d299a306ecf0835e36ef3609598e7fef1f1e6b3635d8eae76"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-arm64.tar.gz"
      sha256 "6938aa1b0b0c913cd661a82b1d718c219fecfe3bc12537b2fcf97899fc1ae791"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-x86_64.tar.gz"
      sha256 "4f6b12a1607da185782570f6fc5a7157cb84ddc5d78352d0bf914450c0360aeb"
    end
  end



def install
    os = OS.mac? ? "macos" : "linux"

    arch = Hardware::CPU.arm? ? (OS.mac? ? "arm64" : "aarch64") : "x86_64"

    bin.install "moss-#{os}-#{arch}" => "moss"
  end

end

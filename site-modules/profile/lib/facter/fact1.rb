Facter.add(:fact1) do
    context :kernel => "Linux" || :kernel => "Darwin" 
    setcode do
        osfamily Facter.value(:osfamily)
        case osfamily
        when 'RedHat'
            Facter::Core::Execution.execute("echo 'RedHat Machine'")
        when 'Debian'
            Facter::Core::Execution.execute("echo 'Debian Machine'")
        when 'Darwin'
            Facter::Core::Execution.execute("echo 'OSX Machine'")
        end
    end
end

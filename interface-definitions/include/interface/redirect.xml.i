<!-- include start from interface/redirect.xml.i -->
<leafNode name="redirect">
  <properties>
    <help>Redirect incoming packet to destination</help>
    <completionHelp>
      <script>${vyos_completion_dir}/list_interfaces</script>
    </completionHelp>
    <valueHelp>
      <format>txt</format>
      <description>Destination interface name</description>
    </valueHelp>
    <constraint>
      #include <include/constraint/interface-name.xml.i>
    </constraint>
  </properties>
</leafNode>
<leafNode name="redirect-preserve-connmark">
  <properties>
    <help>Restore conntrack mark before redirect (tc action connmark)</help>
    <valueless/>
  </properties>
</leafNode>
<!-- include end -->

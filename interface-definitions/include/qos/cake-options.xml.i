<!-- include start from qos/cake-options.xml.i -->
#include <include/qos/bandwidth.xml.i>
<leafNode name="mode">
  <properties>
    <help>Mode of operation for the CAKE queue</help>
    <completionHelp>
      <list>besteffort diffserv diffserv4 diffserv8</list>
    </completionHelp>
    <valueHelp>
      <format>besteffort</format>
      <description>Default fair queue mode</description>
    </valueHelp>
    <valueHelp>
      <format>diffserv</format>
      <description>8-band DSCP aware queuing</description>
    </valueHelp>
    <valueHelp>
      <format>diffserv4</format>
      <description>4-band DSCP aware queuing</description>
    </valueHelp>
    <valueHelp>
      <format>diffserv8</format>
      <description>8-band DSCP aware queuing (alias for diffserv)</description>
    </valueHelp>
    <constraint>
      <regex>(besteffort|diffserv|diffserv4|diffserv8)</regex>
    </constraint>
  </properties>
  <defaultValue>besteffort</defaultValue>
</leafNode>
<leafNode name="flow-isolation">
  <properties>
    <help>Flow isolation settings</help>
    <completionHelp>
      <list>blind src-host dst-host host flow dual-src-host dual-dst-host triple-isolate</list>
    </completionHelp>
    <valueHelp>
      <format>blind</format>
      <description>Disables flow isolation, all traffic passes through a single queue</description>
    </valueHelp>
    <valueHelp>
      <format>src-host</format>
      <description>Flows are defined only by source address</description>
    </valueHelp>
    <valueHelp>
      <format>dst-host</format>
      <description>Flows are defined only by destination address</description>
    </valueHelp>
    <valueHelp>
      <format>host</format>
      <description>Flows are defined by source-destination host pairs</description>
    </valueHelp>
    <valueHelp>
      <format>flow</format>
      <description>Flows are defined by the entire 5-tuple</description>
    </valueHelp>
    <valueHelp>
      <format>dual-src-host</format>
      <description>Flows are defined by the 5-tuple, fairness is applied first over source addresses, then over individual flows</description>
    </valueHelp>
    <valueHelp>
      <format>dual-dst-host</format>
      <description>Flows are defined by the 5-tuple, fairness is applied first over destination addresses, then over individual flows</description>
    </valueHelp>
    <valueHelp>
      <format>triple-isolate</format>
      <description>Flows are defined by the 5-tuple, fairness is applied over source and destination addresses and also over individual flows (default)</description>
    </valueHelp>
    <constraint>
      <regex>(blind|src-host|dst-host|host|flow|dual-src-host|dual-dst-host|triple-isolate)</regex>
    </constraint>
  </properties>
  <defaultValue>triple-isolate</defaultValue>
</leafNode>
<leafNode name="flow-isolation-nat">
  <properties>
    <help>Perform NAT lookup before applying flow-isolation rules</help>
    <valueless/>
  </properties>
</leafNode>
<leafNode name="no-split-gso">
  <properties>
    <help>Do not split GSO super-packets into on-the-wire components</help>
    <valueless/>
  </properties>
</leafNode>
<node name="ack-filter">
  <properties>
    <help>Identify and filter out TCP ACK packets that do not convey significant new information</help>
  </properties>
  <children>
    <leafNode name="aggressive">
      <properties>
        <help>Enable aggressive mode which will result in more ACK packets being compressed/filtered</help>
        <valueless/>
      </properties>
    </leafNode>
  </children>
</node>
<leafNode name="rtt">
  <properties>
    <help>Round-Trip-Time for Active Queue Management (AQM)</help>
    <valueHelp>
      <format>u32:1-1000000000</format>
      <description>RTT in ms</description>
    </valueHelp>
    <constraint>
      <validator name="numeric" argument="--range 1-1000000000"/>
    </constraint>
    <constraintErrorMessage>RTT must be in range 1 to 1000000000 milli-seconds</constraintErrorMessage>
  </properties>
  <defaultValue>100</defaultValue>
</leafNode>
<!-- include end -->

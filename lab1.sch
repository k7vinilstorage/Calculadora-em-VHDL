<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="sw3" />
        <signal name="XLXN_21" />
        <signal name="sw4" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_48" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="clk" />
        <signal name="XLXN_60" />
        <signal name="XLXN_66" />
        <signal name="led(7:0)" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="led(7)" />
        <signal name="led(6)" />
        <signal name="led(0)" />
        <signal name="led(1)" />
        <signal name="led(3)" />
        <signal name="led(5)" />
        <signal name="XLXN_104(15:0)" />
        <signal name="XLXN_104(15)" />
        <signal name="XLXN_104(14)" />
        <signal name="XLXN_104(9)" />
        <signal name="an0" />
        <signal name="seg0" />
        <port polarity="Input" name="sw3" />
        <port polarity="Input" name="sw4" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Output" name="an0" />
        <port polarity="Output" name="seg0" />
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
        </blockdef>
        <blockdef name="cc16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="cb8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="and12">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="192" y1="-416" y2="-416" x1="256" />
            <line x2="64" y1="-368" y2="-368" x1="144" />
            <line x2="144" y1="-464" y2="-464" x1="64" />
            <arc ex="144" ey="-464" sx="144" sy="-368" r="48" cx="144" cy="-416" />
            <line x2="64" y1="-704" y2="-704" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-640" y2="-640" x1="0" />
            <line x2="64" y1="-768" y2="-768" x1="0" />
            <line x2="64" y1="-768" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="pulldown">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-160" y2="-128" x1="64" />
            <line x2="60" y1="0" y2="0" x1="68" />
            <line x2="52" y1="-16" y2="-16" x1="76" />
            <line x2="40" y1="-32" y2="-32" x1="88" />
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
        </blockdef>
        <block symbolname="and2b1" name="XLXI_3">
            <blockpin signalname="sw4" name="I0" />
            <blockpin signalname="sw3" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="sw4" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="cc16ce" name="XLXI_16">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="sw3" name="CE" />
            <blockpin signalname="sw4" name="CLR" />
            <blockpin signalname="XLXN_44" name="CEO" />
            <blockpin signalname="XLXN_104(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb8ce" name="XLXI_22">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_44" name="CE" />
            <blockpin signalname="sw4" name="CLR" />
            <blockpin signalname="XLXN_45" name="CEO" />
            <blockpin signalname="led(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb4ce" name="XLXI_6">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_45" name="CE" />
            <blockpin signalname="sw4" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_92" name="Q0" />
            <blockpin signalname="XLXN_91" name="Q1" />
            <blockpin name="Q2" />
            <blockpin signalname="XLXN_90" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and12" name="XLXI_27">
            <blockpin signalname="XLXN_104(9)" name="I0" />
            <blockpin signalname="XLXN_104(14)" name="I1" />
            <blockpin signalname="XLXN_91" name="I10" />
            <blockpin signalname="XLXN_90" name="I11" />
            <blockpin signalname="XLXN_104(15)" name="I2" />
            <blockpin signalname="led(5)" name="I3" />
            <blockpin signalname="led(3)" name="I4" />
            <blockpin signalname="led(1)" name="I5" />
            <blockpin signalname="led(0)" name="I6" />
            <blockpin signalname="led(6)" name="I7" />
            <blockpin signalname="led(7)" name="I8" />
            <blockpin signalname="XLXN_92" name="I9" />
            <blockpin signalname="an0" name="O" />
        </block>
        <block symbolname="pulldown" name="XLXI_29">
            <blockpin signalname="seg0" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="544" y="304" name="XLXI_5" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="528" y1="144" y2="144" x1="496" />
            <wire x2="528" y1="144" y2="176" x1="528" />
            <wire x2="544" y1="176" y2="176" x1="528" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="528" y1="272" y2="272" x1="464" />
            <wire x2="544" y1="240" y2="240" x1="528" />
            <wire x2="528" y1="240" y2="272" x1="528" />
        </branch>
        <instance x="240" y="240" name="XLXI_3" orien="R0" />
        <instance x="240" y="304" name="XLXI_4" orien="R0" />
        <branch name="sw3">
            <wire x2="240" y1="112" y2="112" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="112" name="sw3" orien="R180" />
        <iomarker fontsize="28" x="208" y="176" name="sw4" orien="R180" />
        <branch name="sw4">
            <wire x2="224" y1="176" y2="176" x1="208" />
            <wire x2="240" y1="176" y2="176" x1="224" />
            <wire x2="224" y1="176" y2="272" x1="224" />
            <wire x2="240" y1="272" y2="272" x1="224" />
        </branch>
        <instance x="352" y="1136" name="XLXI_16" orien="R0" />
        <instance x="800" y="1136" name="XLXI_22" orien="R0" />
        <branch name="XLXN_44">
            <wire x2="800" y1="944" y2="944" x1="736" />
        </branch>
        <iomarker fontsize="28" x="272" y="1008" name="clk" orien="R180" />
        <iomarker fontsize="28" x="288" y="1152" name="sw4" orien="R180" />
        <branch name="sw3">
            <wire x2="352" y1="944" y2="944" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="944" name="sw3" orien="R180" />
        <branch name="sw4">
            <wire x2="352" y1="1152" y2="1152" x1="288" />
            <wire x2="800" y1="1152" y2="1152" x1="352" />
            <wire x2="1536" y1="1152" y2="1152" x1="800" />
            <wire x2="352" y1="1104" y2="1152" x1="352" />
            <wire x2="800" y1="1104" y2="1152" x1="800" />
            <wire x2="1536" y1="1104" y2="1152" x1="1536" />
        </branch>
        <branch name="clk">
            <wire x2="304" y1="1008" y2="1008" x1="272" />
            <wire x2="352" y1="1008" y2="1008" x1="304" />
            <wire x2="304" y1="1008" y2="1216" x1="304" />
            <wire x2="752" y1="1216" y2="1216" x1="304" />
            <wire x2="1200" y1="1216" y2="1216" x1="752" />
            <wire x2="800" y1="1008" y2="1008" x1="752" />
            <wire x2="752" y1="1008" y2="1216" x1="752" />
            <wire x2="1200" y1="1008" y2="1216" x1="1200" />
            <wire x2="1536" y1="1008" y2="1008" x1="1200" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1536" y1="944" y2="944" x1="1184" />
        </branch>
        <instance x="1536" y="1136" name="XLXI_6" orien="R0" />
        <branch name="XLXN_90">
            <wire x2="2432" y1="880" y2="880" x1="1920" />
            <wire x2="2432" y1="880" y2="1264" x1="2432" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="2176" y1="752" y2="752" x1="1920" />
            <wire x2="2176" y1="752" y2="1328" x1="2176" />
            <wire x2="2432" y1="1328" y2="1328" x1="2176" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="2160" y1="688" y2="688" x1="1920" />
            <wire x2="2160" y1="688" y2="1392" x1="2160" />
            <wire x2="2432" y1="1392" y2="1392" x1="2160" />
        </branch>
        <instance x="2432" y="2032" name="XLXI_27" orien="R0" />
        <bustap x2="2288" y1="1456" y2="1456" x1="2192" />
        <bustap x2="2288" y1="1520" y2="1520" x1="2192" />
        <bustap x2="2288" y1="1584" y2="1584" x1="2192" />
        <bustap x2="2288" y1="1648" y2="1648" x1="2192" />
        <bustap x2="2288" y1="1712" y2="1712" x1="2192" />
        <bustap x2="2288" y1="1776" y2="1776" x1="2192" />
        <branch name="led(7)">
            <wire x2="2432" y1="1456" y2="1456" x1="2288" />
        </branch>
        <branch name="led(6)">
            <wire x2="2432" y1="1520" y2="1520" x1="2288" />
        </branch>
        <branch name="led(0)">
            <wire x2="2432" y1="1584" y2="1584" x1="2288" />
        </branch>
        <branch name="led(1)">
            <wire x2="2432" y1="1648" y2="1648" x1="2288" />
        </branch>
        <branch name="led(3)">
            <wire x2="2432" y1="1712" y2="1712" x1="2288" />
        </branch>
        <branch name="led(5)">
            <wire x2="2432" y1="1776" y2="1776" x1="2288" />
        </branch>
        <branch name="XLXN_104(15:0)">
            <wire x2="784" y1="880" y2="880" x1="736" />
            <wire x2="784" y1="880" y2="1824" x1="784" />
            <wire x2="2192" y1="1824" y2="1824" x1="784" />
            <wire x2="2192" y1="1824" y2="1840" x1="2192" />
            <wire x2="2192" y1="1840" y2="1904" x1="2192" />
            <wire x2="2192" y1="1904" y2="1968" x1="2192" />
            <wire x2="2192" y1="1968" y2="1984" x1="2192" />
        </branch>
        <bustap x2="2288" y1="1840" y2="1840" x1="2192" />
        <bustap x2="2288" y1="1904" y2="1904" x1="2192" />
        <bustap x2="2288" y1="1968" y2="1968" x1="2192" />
        <branch name="XLXN_104(15)">
            <wire x2="2432" y1="1840" y2="1840" x1="2288" />
        </branch>
        <branch name="XLXN_104(14)">
            <wire x2="2432" y1="1904" y2="1904" x1="2288" />
        </branch>
        <branch name="XLXN_104(9)">
            <wire x2="2432" y1="1968" y2="1968" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1488" name="an0" orien="R270" />
        <branch name="an0">
            <wire x2="2784" y1="1616" y2="1616" x1="2688" />
            <wire x2="2784" y1="1488" y2="1616" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="1296" y="672" name="led(7:0)" orien="R0" />
        <branch name="led(7:0)">
            <wire x2="1232" y1="880" y2="880" x1="1184" />
            <wire x2="1232" y1="880" y2="1456" x1="1232" />
            <wire x2="2192" y1="1456" y2="1456" x1="1232" />
            <wire x2="2192" y1="1456" y2="1520" x1="2192" />
            <wire x2="2192" y1="1520" y2="1584" x1="2192" />
            <wire x2="2192" y1="1584" y2="1648" x1="2192" />
            <wire x2="2192" y1="1648" y2="1712" x1="2192" />
            <wire x2="2192" y1="1712" y2="1776" x1="2192" />
            <wire x2="1296" y1="672" y2="672" x1="1232" />
            <wire x2="1232" y1="672" y2="880" x1="1232" />
        </branch>
        <instance x="1616" y="2432" name="XLXI_29" orien="R0" />
        <branch name="seg0">
            <wire x2="1680" y1="2240" y2="2272" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1680" y="2240" name="seg0" orien="R270" />
    </sheet>
</drawing>
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="zilog">
<description>&lt;b&gt;Zilog Z80 Microprocessor Devices&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL40">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="25.4" y1="6.731" x2="-25.4" y2="6.731" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-6.731" x2="25.4" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="25.4" y1="6.731" x2="25.4" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="6.731" x2="-25.4" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-6.731" x2="-25.4" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="0.889" x2="-25.4" y2="-1.143" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="-3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="-1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="25" x="13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="26" x="11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="27" x="8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="28" x="6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="29" x="3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="30" x="1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="31" x="-1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="32" x="-3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="33" x="-6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="34" x="-8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="35" x="-11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="36" x="-13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="37" x="-16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="38" x="-19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="39" x="-21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="40" x="-24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<text x="-25.908" y="-6.604" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="-17.145" y="-1.016" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="Z80CPU">
<wire x1="-12.7" y1="-35.56" x2="12.7" y2="-35.56" width="0.4064" layer="94"/>
<wire x1="12.7" y1="30.48" x2="12.7" y2="-35.56" width="0.4064" layer="94"/>
<wire x1="12.7" y1="30.48" x2="-12.7" y2="30.48" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-35.56" x2="-12.7" y2="30.48" width="0.4064" layer="94"/>
<text x="-12.7" y="31.115" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-38.1" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A0" x="17.78" y="27.94" length="middle" direction="out" rot="R180"/>
<pin name="A1" x="17.78" y="25.4" length="middle" direction="out" rot="R180"/>
<pin name="A2" x="17.78" y="22.86" length="middle" direction="out" rot="R180"/>
<pin name="A3" x="17.78" y="20.32" length="middle" direction="out" rot="R180"/>
<pin name="A4" x="17.78" y="17.78" length="middle" direction="out" rot="R180"/>
<pin name="A5" x="17.78" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="A6" x="17.78" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="A7" x="17.78" y="10.16" length="middle" direction="out" rot="R180"/>
<pin name="A8" x="17.78" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="A9" x="17.78" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="A10" x="17.78" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="A11" x="17.78" y="0" length="middle" direction="out" rot="R180"/>
<pin name="A12" x="17.78" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="A13" x="17.78" y="-5.08" length="middle" direction="out" rot="R180"/>
<pin name="A14" x="17.78" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="A15" x="17.78" y="-10.16" length="middle" direction="out" rot="R180"/>
<pin name="D0" x="17.78" y="-15.24" length="middle" rot="R180"/>
<pin name="D1" x="17.78" y="-17.78" length="middle" rot="R180"/>
<pin name="D2" x="17.78" y="-20.32" length="middle" rot="R180"/>
<pin name="D3" x="17.78" y="-22.86" length="middle" rot="R180"/>
<pin name="D4" x="17.78" y="-25.4" length="middle" rot="R180"/>
<pin name="D5" x="17.78" y="-27.94" length="middle" rot="R180"/>
<pin name="D6" x="17.78" y="-30.48" length="middle" rot="R180"/>
<pin name="D7" x="17.78" y="-33.02" length="middle" rot="R180"/>
<pin name="M1" x="-17.78" y="27.94" length="middle" direction="out" function="dot"/>
<pin name="MREQ" x="-17.78" y="25.4" length="middle" direction="out" function="dot"/>
<pin name="IORQ" x="-17.78" y="22.86" length="middle" direction="out" function="dot"/>
<pin name="RD" x="-17.78" y="20.32" length="middle" direction="out" function="dot"/>
<pin name="WR" x="-17.78" y="17.78" length="middle" direction="out" function="dot"/>
<pin name="RFSH" x="-17.78" y="12.7" length="middle" direction="out" function="dot"/>
<pin name="HALT" x="-17.78" y="7.62" length="middle" direction="out" function="dot"/>
<pin name="WAIT" x="-17.78" y="2.54" length="middle" direction="in" function="dot"/>
<pin name="INT" x="-17.78" y="-2.54" length="middle" direction="in" function="dot"/>
<pin name="NMI" x="-17.78" y="-5.08" length="middle" direction="in" function="dot"/>
<pin name="RESET" x="-17.78" y="-10.16" length="middle" direction="in" function="dot"/>
<pin name="BUSRQ" x="-17.78" y="-15.24" length="middle" direction="in" function="dot"/>
<pin name="BUSAK" x="-17.78" y="-17.78" length="middle" direction="out" function="dot"/>
<pin name="CLK" x="-17.78" y="-22.86" length="middle" direction="in" function="clk"/>
<pin name="VCC" x="-17.78" y="-33.02" length="middle" direction="pwr"/>
<pin name="GND" x="-17.78" y="-27.94" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="Z80CPU" prefix="IC" uservalue="yes">
<description>&lt;b&gt;Z80 FAMILY DEVICE&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="Z80CPU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL40">
<connects>
<connect gate="1" pin="A0" pad="30"/>
<connect gate="1" pin="A1" pad="31"/>
<connect gate="1" pin="A10" pad="40"/>
<connect gate="1" pin="A11" pad="1"/>
<connect gate="1" pin="A12" pad="2"/>
<connect gate="1" pin="A13" pad="3"/>
<connect gate="1" pin="A14" pad="4"/>
<connect gate="1" pin="A15" pad="5"/>
<connect gate="1" pin="A2" pad="32"/>
<connect gate="1" pin="A3" pad="33"/>
<connect gate="1" pin="A4" pad="34"/>
<connect gate="1" pin="A5" pad="35"/>
<connect gate="1" pin="A6" pad="36"/>
<connect gate="1" pin="A7" pad="37"/>
<connect gate="1" pin="A8" pad="38"/>
<connect gate="1" pin="A9" pad="39"/>
<connect gate="1" pin="BUSAK" pad="23"/>
<connect gate="1" pin="BUSRQ" pad="25"/>
<connect gate="1" pin="CLK" pad="6"/>
<connect gate="1" pin="D0" pad="14"/>
<connect gate="1" pin="D1" pad="15"/>
<connect gate="1" pin="D2" pad="12"/>
<connect gate="1" pin="D3" pad="8"/>
<connect gate="1" pin="D4" pad="7"/>
<connect gate="1" pin="D5" pad="9"/>
<connect gate="1" pin="D6" pad="10"/>
<connect gate="1" pin="D7" pad="13"/>
<connect gate="1" pin="GND" pad="29"/>
<connect gate="1" pin="HALT" pad="18"/>
<connect gate="1" pin="INT" pad="16"/>
<connect gate="1" pin="IORQ" pad="20"/>
<connect gate="1" pin="M1" pad="27"/>
<connect gate="1" pin="MREQ" pad="19"/>
<connect gate="1" pin="NMI" pad="17"/>
<connect gate="1" pin="RD" pad="21"/>
<connect gate="1" pin="RESET" pad="26"/>
<connect gate="1" pin="RFSH" pad="28"/>
<connect gate="1" pin="VCC" pad="11"/>
<connect gate="1" pin="WAIT" pad="24"/>
<connect gate="1" pin="WR" pad="22"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74xx-us">
<description>&lt;b&gt;TTL Devices, 74xx Series with US Symbols&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Texas Instruments &lt;i&gt;TTL Data Book&lt;/i&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;Volume 1, 1996.
&lt;li&gt;TTL Data Book, Volume 2 , 1993
&lt;li&gt;National Seminconductor Databook 1990, ALS/LS Logic
&lt;li&gt;ttl 74er digital data dictionary, ECA Electronic + Acustic GmbH, ISBN 3-88109-032-0
&lt;li&gt;http://icmaster.com/ViewCompare.asp
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL20">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="12.7" y1="2.921" x2="-12.7" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="12.7" y1="2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.921" x2="-12.7" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="-12.7" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.016" x2="-12.7" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-13.081" y="-3.048" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-9.779" y="-0.381" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SO20W">
<description>&lt;b&gt;Wide Small Outline package&lt;/b&gt; 300 mil</description>
<wire x1="6.1214" y1="3.7338" x2="-6.1214" y2="3.7338" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-3.7338" x2="6.5024" y2="-3.3528" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.5024" y1="3.3528" x2="-6.1214" y2="3.7338" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.1214" y1="3.7338" x2="6.5024" y2="3.3528" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.5024" y1="-3.3528" x2="-6.1214" y2="-3.7338" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.1214" y1="-3.7338" x2="6.1214" y2="-3.7338" width="0.1524" layer="51"/>
<wire x1="6.5024" y1="-3.3528" x2="6.5024" y2="3.3528" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="3.3528" x2="-6.5024" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="1.27" x2="-6.5024" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="-1.27" x2="-6.5024" y2="-3.3528" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-3.3782" x2="6.477" y2="-3.3782" width="0.0508" layer="21"/>
<wire x1="-6.5024" y1="1.27" x2="-6.5024" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<smd name="1" x="-5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="-0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="17" x="-1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="18" x="-3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="19" x="-4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="20" x="-5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.81" y="-1.778" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="-3.175" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-5.969" y1="-3.8608" x2="-5.461" y2="-3.7338" layer="51"/>
<rectangle x1="-5.969" y1="-5.334" x2="-5.461" y2="-3.8608" layer="51"/>
<rectangle x1="-4.699" y1="-3.8608" x2="-4.191" y2="-3.7338" layer="51"/>
<rectangle x1="-4.699" y1="-5.334" x2="-4.191" y2="-3.8608" layer="51"/>
<rectangle x1="-3.429" y1="-3.8608" x2="-2.921" y2="-3.7338" layer="51"/>
<rectangle x1="-3.429" y1="-5.334" x2="-2.921" y2="-3.8608" layer="51"/>
<rectangle x1="-2.159" y1="-3.8608" x2="-1.651" y2="-3.7338" layer="51"/>
<rectangle x1="-2.159" y1="-5.334" x2="-1.651" y2="-3.8608" layer="51"/>
<rectangle x1="-0.889" y1="-5.334" x2="-0.381" y2="-3.8608" layer="51"/>
<rectangle x1="-0.889" y1="-3.8608" x2="-0.381" y2="-3.7338" layer="51"/>
<rectangle x1="0.381" y1="-3.8608" x2="0.889" y2="-3.7338" layer="51"/>
<rectangle x1="0.381" y1="-5.334" x2="0.889" y2="-3.8608" layer="51"/>
<rectangle x1="1.651" y1="-3.8608" x2="2.159" y2="-3.7338" layer="51"/>
<rectangle x1="1.651" y1="-5.334" x2="2.159" y2="-3.8608" layer="51"/>
<rectangle x1="2.921" y1="-3.8608" x2="3.429" y2="-3.7338" layer="51"/>
<rectangle x1="2.921" y1="-5.334" x2="3.429" y2="-3.8608" layer="51"/>
<rectangle x1="-5.969" y1="3.8608" x2="-5.461" y2="5.334" layer="51"/>
<rectangle x1="-5.969" y1="3.7338" x2="-5.461" y2="3.8608" layer="51"/>
<rectangle x1="-4.699" y1="3.7338" x2="-4.191" y2="3.8608" layer="51"/>
<rectangle x1="-4.699" y1="3.8608" x2="-4.191" y2="5.334" layer="51"/>
<rectangle x1="-3.429" y1="3.7338" x2="-2.921" y2="3.8608" layer="51"/>
<rectangle x1="-3.429" y1="3.8608" x2="-2.921" y2="5.334" layer="51"/>
<rectangle x1="-2.159" y1="3.7338" x2="-1.651" y2="3.8608" layer="51"/>
<rectangle x1="-2.159" y1="3.8608" x2="-1.651" y2="5.334" layer="51"/>
<rectangle x1="-0.889" y1="3.7338" x2="-0.381" y2="3.8608" layer="51"/>
<rectangle x1="-0.889" y1="3.8608" x2="-0.381" y2="5.334" layer="51"/>
<rectangle x1="0.381" y1="3.7338" x2="0.889" y2="3.8608" layer="51"/>
<rectangle x1="0.381" y1="3.8608" x2="0.889" y2="5.334" layer="51"/>
<rectangle x1="1.651" y1="3.7338" x2="2.159" y2="3.8608" layer="51"/>
<rectangle x1="1.651" y1="3.8608" x2="2.159" y2="5.334" layer="51"/>
<rectangle x1="2.921" y1="3.7338" x2="3.429" y2="3.8608" layer="51"/>
<rectangle x1="2.921" y1="3.8608" x2="3.429" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="3.7338" x2="4.699" y2="3.8608" layer="51"/>
<rectangle x1="5.461" y1="3.7338" x2="5.969" y2="3.8608" layer="51"/>
<rectangle x1="4.191" y1="3.8608" x2="4.699" y2="5.334" layer="51"/>
<rectangle x1="5.461" y1="3.8608" x2="5.969" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="-3.8608" x2="4.699" y2="-3.7338" layer="51"/>
<rectangle x1="5.461" y1="-3.8608" x2="5.969" y2="-3.7338" layer="51"/>
<rectangle x1="4.191" y1="-5.334" x2="4.699" y2="-3.8608" layer="51"/>
<rectangle x1="5.461" y1="-5.334" x2="5.969" y2="-3.8608" layer="51"/>
</package>
<package name="LCC20">
<description>&lt;b&gt;Leadless Chip Carrier&lt;/b&gt;&lt;p&gt; Ceramic Package</description>
<wire x1="-0.4001" y1="4.4" x2="-0.87" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="4.3985" x2="0.4001" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.3985" x2="-0.8699" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="2.14" x2="-4.3985" y2="2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.9401" y1="4.4" x2="-3.3" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.4" x2="0.4001" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.3985" x2="1.67" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="3.3" x2="-4.4" y2="2.9401" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="2.14" x2="-4.4" y2="1.6701" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="0.87" x2="-4.3985" y2="1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-0.4001" x2="-4.3985" y2="0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-1.6701" x2="-4.3985" y2="-0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="0.87" x2="-4.4" y2="0.4001" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-0.4001" x2="-4.4" y2="-0.87" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-2.9401" x2="-4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="-4.4099" width="0.2032" layer="51"/>
<wire x1="2.14" y1="4.3985" x2="2.94" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.14" y1="4.4" x2="1.6701" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="4.4" x2="2.9401" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.4" x2="0.87" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="-4.3985" x2="0.4001" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="0.87" y1="-4.3985" x2="1.67" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-1.6701" y1="-4.3985" x2="-0.8699" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.9401" y1="-4.3985" x2="-2.1399" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.14" y1="-4.4" x2="-1.6701" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-2.9401" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="0.4001" x2="4.4" y2="0.87" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="0.4001" x2="4.3985" y2="-0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="1.6701" x2="4.3985" y2="0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="2.9401" x2="4.4" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-0.87" x2="4.4" y2="-0.4001" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="-0.87" x2="4.3985" y2="-1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="-2.14" x2="4.3985" y2="-2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="-2.14" x2="4.4" y2="-1.6701" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-2.9401" width="0.2032" layer="51"/>
<wire x1="-2.9401" y1="4.3985" x2="-2.1399" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.4" x2="-2.14" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="-2.9401" x2="-4.3985" y2="-2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="-1.6701" x2="-4.4" y2="-2.14" width="0.2032" layer="51"/>
<wire x1="1.6701" y1="-4.4" x2="2.14" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="2.14" y1="-4.3985" x2="2.94" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
<smd name="3" x="-2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="5" x="-4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="6" x="-4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="7" x="-4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="8" x="-4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="9" x="-2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="10" x="-1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="11" x="0" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="12" x="1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="13" x="2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="14" x="4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="15" x="4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="16" x="4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="17" x="4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="18" x="4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="19" x="2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="20" x="1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<text x="-3.4971" y="5.811" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.6871" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="74245">
<wire x1="-7.62" y1="-15.24" x2="7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="15.24" x2="-7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="15.24" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<text x="-7.62" y="15.875" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="DIR" x="-12.7" y="-10.16" length="middle" direction="in"/>
<pin name="A1" x="-12.7" y="12.7" length="middle"/>
<pin name="A2" x="-12.7" y="10.16" length="middle"/>
<pin name="A3" x="-12.7" y="7.62" length="middle"/>
<pin name="A4" x="-12.7" y="5.08" length="middle"/>
<pin name="A5" x="-12.7" y="2.54" length="middle"/>
<pin name="A6" x="-12.7" y="0" length="middle"/>
<pin name="A7" x="-12.7" y="-2.54" length="middle"/>
<pin name="A8" x="-12.7" y="-5.08" length="middle"/>
<pin name="B8" x="12.7" y="-5.08" length="middle" rot="R180"/>
<pin name="B7" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="B6" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="B5" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="B4" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="B3" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="B2" x="12.7" y="10.16" length="middle" rot="R180"/>
<pin name="B1" x="12.7" y="12.7" length="middle" rot="R180"/>
<pin name="G" x="-12.7" y="-12.7" length="middle" direction="in" function="dot"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-7.62" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="5.08" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-10.16" visible="pad" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="10.16" visible="pad" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*245" prefix="IC">
<description>Octal &lt;b&gt;BUS TRANSCEIVER&lt;/b&gt;, 3-state</description>
<gates>
<gate name="A" symbol="74245" x="20.32" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL20">
<connects>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="A3" pad="4"/>
<connect gate="A" pin="A4" pad="5"/>
<connect gate="A" pin="A5" pad="6"/>
<connect gate="A" pin="A6" pad="7"/>
<connect gate="A" pin="A7" pad="8"/>
<connect gate="A" pin="A8" pad="9"/>
<connect gate="A" pin="B1" pad="18"/>
<connect gate="A" pin="B2" pad="17"/>
<connect gate="A" pin="B3" pad="16"/>
<connect gate="A" pin="B4" pad="15"/>
<connect gate="A" pin="B5" pad="14"/>
<connect gate="A" pin="B6" pad="13"/>
<connect gate="A" pin="B7" pad="12"/>
<connect gate="A" pin="B8" pad="11"/>
<connect gate="A" pin="DIR" pad="1"/>
<connect gate="A" pin="G" pad="19"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="LS"/>
</technologies>
</device>
<device name="DW" package="SO20W">
<connects>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="A3" pad="4"/>
<connect gate="A" pin="A4" pad="5"/>
<connect gate="A" pin="A5" pad="6"/>
<connect gate="A" pin="A6" pad="7"/>
<connect gate="A" pin="A7" pad="8"/>
<connect gate="A" pin="A8" pad="9"/>
<connect gate="A" pin="B1" pad="18"/>
<connect gate="A" pin="B2" pad="17"/>
<connect gate="A" pin="B3" pad="16"/>
<connect gate="A" pin="B4" pad="15"/>
<connect gate="A" pin="B5" pad="14"/>
<connect gate="A" pin="B6" pad="13"/>
<connect gate="A" pin="B7" pad="12"/>
<connect gate="A" pin="B8" pad="11"/>
<connect gate="A" pin="DIR" pad="1"/>
<connect gate="A" pin="G" pad="19"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="LS"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="A3" pad="4"/>
<connect gate="A" pin="A4" pad="5"/>
<connect gate="A" pin="A5" pad="6"/>
<connect gate="A" pin="A6" pad="7"/>
<connect gate="A" pin="A7" pad="8"/>
<connect gate="A" pin="A8" pad="9"/>
<connect gate="A" pin="B1" pad="18"/>
<connect gate="A" pin="B2" pad="17"/>
<connect gate="A" pin="B3" pad="16"/>
<connect gate="A" pin="B4" pad="15"/>
<connect gate="A" pin="B5" pad="14"/>
<connect gate="A" pin="B6" pad="13"/>
<connect gate="A" pin="B7" pad="12"/>
<connect gate="A" pin="B8" pad="11"/>
<connect gate="A" pin="DIR" pad="1"/>
<connect gate="A" pin="G" pad="19"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="LS"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X40">
<description>&lt;b&gt;PIN HEADER 40 pol.&lt;/b&gt; Grid 2.54mm&lt;p&gt;</description>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-1.27" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-1.27" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="1.27" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-0.635" x2="-18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="1.27" x2="-15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="1.27" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-0.635" x2="-15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-1.27" x2="-17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="-1.27" x2="-17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="0.635" x2="-22.225" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="1.27" x2="-20.955" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="1.27" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-0.635" x2="-20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="-1.27" x2="-22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="-1.27" x2="-22.86" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-0.635" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-1.27" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-27.305" y1="1.27" x2="-26.035" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-26.035" y1="1.27" x2="-25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-0.635" x2="-26.035" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="0.635" x2="-24.765" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-24.765" y1="1.27" x2="-23.495" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="1.27" x2="-22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-0.635" x2="-23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="-1.27" x2="-24.765" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-24.765" y1="-1.27" x2="-25.4" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-30.48" y1="0.635" x2="-29.845" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-29.845" y1="1.27" x2="-28.575" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-28.575" y1="1.27" x2="-27.94" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-27.94" y1="-0.635" x2="-28.575" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-28.575" y1="-1.27" x2="-29.845" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-29.845" y1="-1.27" x2="-30.48" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-27.305" y1="1.27" x2="-27.94" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-27.94" y1="-0.635" x2="-27.305" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-26.035" y1="-1.27" x2="-27.305" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-34.925" y1="1.27" x2="-33.655" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-33.655" y1="1.27" x2="-33.02" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-33.02" y1="-0.635" x2="-33.655" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-33.02" y1="0.635" x2="-32.385" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-32.385" y1="1.27" x2="-31.115" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-31.115" y1="1.27" x2="-30.48" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-30.48" y1="-0.635" x2="-31.115" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-31.115" y1="-1.27" x2="-32.385" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-32.385" y1="-1.27" x2="-33.02" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-38.1" y1="0.635" x2="-37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-37.465" y1="1.27" x2="-36.195" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-36.195" y1="1.27" x2="-35.56" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-35.56" y1="-0.635" x2="-36.195" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-36.195" y1="-1.27" x2="-37.465" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-37.465" y1="-1.27" x2="-38.1" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-34.925" y1="1.27" x2="-35.56" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-35.56" y1="-0.635" x2="-34.925" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-33.655" y1="-1.27" x2="-34.925" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-42.545" y1="1.27" x2="-41.275" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-41.275" y1="1.27" x2="-40.64" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-40.64" y1="-0.635" x2="-41.275" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-40.64" y1="0.635" x2="-40.005" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-40.005" y1="1.27" x2="-38.735" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-38.735" y1="1.27" x2="-38.1" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-38.1" y1="-0.635" x2="-38.735" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-38.735" y1="-1.27" x2="-40.005" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-40.005" y1="-1.27" x2="-40.64" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-45.72" y1="0.635" x2="-45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-45.085" y1="1.27" x2="-43.815" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-43.815" y1="1.27" x2="-43.18" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-43.18" y1="-0.635" x2="-43.815" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-43.815" y1="-1.27" x2="-45.085" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-45.085" y1="-1.27" x2="-45.72" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-42.545" y1="1.27" x2="-43.18" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-43.18" y1="-0.635" x2="-42.545" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-41.275" y1="-1.27" x2="-42.545" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-50.165" y1="1.27" x2="-48.895" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-48.895" y1="1.27" x2="-48.26" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-48.26" y1="-0.635" x2="-48.895" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-48.26" y1="0.635" x2="-47.625" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-47.625" y1="1.27" x2="-46.355" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-46.355" y1="1.27" x2="-45.72" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-45.72" y1="-0.635" x2="-46.355" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-46.355" y1="-1.27" x2="-47.625" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-47.625" y1="-1.27" x2="-48.26" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-50.8" y1="0.635" x2="-50.8" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-50.165" y1="1.27" x2="-50.8" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-50.8" y1="-0.635" x2="-50.165" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-48.895" y1="-1.27" x2="-50.165" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="1.27" x2="17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="1.27" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-0.635" x2="17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-1.27" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="1.27" x2="19.685" y2="1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="1.27" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-0.635" x2="19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="1.27" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-0.635" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-1.27" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.955" y1="1.27" x2="22.225" y2="1.27" width="0.1524" layer="21"/>
<wire x1="22.225" y1="1.27" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-0.635" x2="22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.955" y1="1.27" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-0.635" x2="20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="22.225" y1="-1.27" x2="20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="23.495" y1="1.27" x2="24.765" y2="1.27" width="0.1524" layer="21"/>
<wire x1="24.765" y1="1.27" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-0.635" x2="24.765" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="23.495" y1="1.27" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-0.635" x2="23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="24.765" y1="-1.27" x2="23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="48.895" y1="1.27" x2="50.165" y2="1.27" width="0.1524" layer="21"/>
<wire x1="45.72" y1="0.635" x2="46.355" y2="1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="1.27" x2="47.625" y2="1.27" width="0.1524" layer="21"/>
<wire x1="47.625" y1="1.27" x2="48.26" y2="0.635" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-0.635" x2="47.625" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="47.625" y1="-1.27" x2="46.355" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-1.27" x2="45.72" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="48.895" y1="1.27" x2="48.26" y2="0.635" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-0.635" x2="48.895" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="50.165" y1="-1.27" x2="48.895" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="41.275" y1="1.27" x2="42.545" y2="1.27" width="0.1524" layer="21"/>
<wire x1="42.545" y1="1.27" x2="43.18" y2="0.635" width="0.1524" layer="21"/>
<wire x1="43.18" y1="-0.635" x2="42.545" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="43.18" y1="0.635" x2="43.815" y2="1.27" width="0.1524" layer="21"/>
<wire x1="43.815" y1="1.27" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="45.085" y1="1.27" x2="45.72" y2="0.635" width="0.1524" layer="21"/>
<wire x1="45.72" y1="-0.635" x2="45.085" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="45.085" y1="-1.27" x2="43.815" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="43.815" y1="-1.27" x2="43.18" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="38.1" y1="0.635" x2="38.735" y2="1.27" width="0.1524" layer="21"/>
<wire x1="38.735" y1="1.27" x2="40.005" y2="1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="1.27" x2="40.64" y2="0.635" width="0.1524" layer="21"/>
<wire x1="40.64" y1="-0.635" x2="40.005" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="-1.27" x2="38.735" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="38.735" y1="-1.27" x2="38.1" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="41.275" y1="1.27" x2="40.64" y2="0.635" width="0.1524" layer="21"/>
<wire x1="40.64" y1="-0.635" x2="41.275" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-1.27" x2="41.275" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="33.655" y1="1.27" x2="34.925" y2="1.27" width="0.1524" layer="21"/>
<wire x1="34.925" y1="1.27" x2="35.56" y2="0.635" width="0.1524" layer="21"/>
<wire x1="35.56" y1="-0.635" x2="34.925" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="35.56" y1="0.635" x2="36.195" y2="1.27" width="0.1524" layer="21"/>
<wire x1="36.195" y1="1.27" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="37.465" y1="1.27" x2="38.1" y2="0.635" width="0.1524" layer="21"/>
<wire x1="38.1" y1="-0.635" x2="37.465" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="37.465" y1="-1.27" x2="36.195" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="36.195" y1="-1.27" x2="35.56" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="30.48" y1="0.635" x2="31.115" y2="1.27" width="0.1524" layer="21"/>
<wire x1="31.115" y1="1.27" x2="32.385" y2="1.27" width="0.1524" layer="21"/>
<wire x1="32.385" y1="1.27" x2="33.02" y2="0.635" width="0.1524" layer="21"/>
<wire x1="33.02" y1="-0.635" x2="32.385" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="32.385" y1="-1.27" x2="31.115" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="31.115" y1="-1.27" x2="30.48" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="33.655" y1="1.27" x2="33.02" y2="0.635" width="0.1524" layer="21"/>
<wire x1="33.02" y1="-0.635" x2="33.655" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="34.925" y1="-1.27" x2="33.655" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="26.035" y1="1.27" x2="27.305" y2="1.27" width="0.1524" layer="21"/>
<wire x1="27.305" y1="1.27" x2="27.94" y2="0.635" width="0.1524" layer="21"/>
<wire x1="27.94" y1="-0.635" x2="27.305" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="27.94" y1="0.635" x2="28.575" y2="1.27" width="0.1524" layer="21"/>
<wire x1="28.575" y1="1.27" x2="29.845" y2="1.27" width="0.1524" layer="21"/>
<wire x1="29.845" y1="1.27" x2="30.48" y2="0.635" width="0.1524" layer="21"/>
<wire x1="30.48" y1="-0.635" x2="29.845" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="29.845" y1="-1.27" x2="28.575" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="28.575" y1="-1.27" x2="27.94" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="26.035" y1="1.27" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-0.635" x2="26.035" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="27.305" y1="-1.27" x2="26.035" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-49.53" y="0" drill="1.016" rot="R90"/>
<pad name="2" x="-46.99" y="0" drill="1.016" rot="R90"/>
<pad name="3" x="-44.45" y="0" drill="1.016" rot="R90"/>
<pad name="4" x="-41.91" y="0" drill="1.016" rot="R90"/>
<pad name="5" x="-39.37" y="0" drill="1.016" rot="R90"/>
<pad name="6" x="-36.83" y="0" drill="1.016" rot="R90"/>
<pad name="7" x="-34.29" y="0" drill="1.016" rot="R90"/>
<pad name="8" x="-31.75" y="0" drill="1.016" rot="R90"/>
<pad name="9" x="-29.21" y="0" drill="1.016" rot="R90"/>
<pad name="10" x="-26.67" y="0" drill="1.016" rot="R90"/>
<pad name="11" x="-24.13" y="0" drill="1.016" rot="R90"/>
<pad name="12" x="-21.59" y="0" drill="1.016" rot="R90"/>
<pad name="13" x="-19.05" y="0" drill="1.016" rot="R90"/>
<pad name="14" x="-16.51" y="0" drill="1.016" rot="R90"/>
<pad name="15" x="-13.97" y="0" drill="1.016" rot="R90"/>
<pad name="16" x="-11.43" y="0" drill="1.016" rot="R90"/>
<pad name="17" x="-8.89" y="0" drill="1.016" rot="R90"/>
<pad name="18" x="-6.35" y="0" drill="1.016" rot="R90"/>
<pad name="19" x="-3.81" y="0" drill="1.016" rot="R90"/>
<pad name="20" x="-1.27" y="0" drill="1.016" rot="R90"/>
<pad name="21" x="1.27" y="0" drill="1.016" rot="R90"/>
<pad name="22" x="3.81" y="0" drill="1.016" rot="R90"/>
<pad name="23" x="6.35" y="0" drill="1.016" rot="R90"/>
<pad name="24" x="8.89" y="0" drill="1.016" rot="R90"/>
<pad name="25" x="11.43" y="0" drill="1.016" rot="R90"/>
<pad name="26" x="13.97" y="0" drill="1.016" rot="R90"/>
<pad name="27" x="16.51" y="0" drill="1.016" rot="R90"/>
<pad name="28" x="19.05" y="0" drill="1.016" rot="R90"/>
<pad name="29" x="21.59" y="0" drill="1.016" rot="R90"/>
<pad name="30" x="24.13" y="0" drill="1.016" rot="R90"/>
<pad name="31" x="26.67" y="0" drill="1.016" rot="R90"/>
<pad name="32" x="29.21" y="0" drill="1.016" rot="R90"/>
<pad name="33" x="31.75" y="0" drill="1.016" rot="R90"/>
<pad name="34" x="34.29" y="0" drill="1.016" rot="R90"/>
<pad name="35" x="36.83" y="0" drill="1.016" rot="R90"/>
<pad name="36" x="39.37" y="0" drill="1.016" rot="R90"/>
<pad name="37" x="41.91" y="0" drill="1.016" rot="R90"/>
<pad name="38" x="44.45" y="0" drill="1.016" rot="R90"/>
<pad name="39" x="46.99" y="0" drill="1.016" rot="R90"/>
<pad name="40" x="49.53" y="0" drill="1.016" rot="R90"/>
<text x="-50.8762" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-50.8" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="-16.764" y1="-0.254" x2="-16.256" y2="0.254" layer="51"/>
<rectangle x1="-19.304" y1="-0.254" x2="-18.796" y2="0.254" layer="51"/>
<rectangle x1="-21.844" y1="-0.254" x2="-21.336" y2="0.254" layer="51"/>
<rectangle x1="-24.384" y1="-0.254" x2="-23.876" y2="0.254" layer="51"/>
<rectangle x1="-26.924" y1="-0.254" x2="-26.416" y2="0.254" layer="51"/>
<rectangle x1="-29.464" y1="-0.254" x2="-28.956" y2="0.254" layer="51"/>
<rectangle x1="-32.004" y1="-0.254" x2="-31.496" y2="0.254" layer="51"/>
<rectangle x1="-34.544" y1="-0.254" x2="-34.036" y2="0.254" layer="51"/>
<rectangle x1="-37.084" y1="-0.254" x2="-36.576" y2="0.254" layer="51"/>
<rectangle x1="-39.624" y1="-0.254" x2="-39.116" y2="0.254" layer="51"/>
<rectangle x1="-42.164" y1="-0.254" x2="-41.656" y2="0.254" layer="51"/>
<rectangle x1="-44.704" y1="-0.254" x2="-44.196" y2="0.254" layer="51"/>
<rectangle x1="-47.244" y1="-0.254" x2="-46.736" y2="0.254" layer="51"/>
<rectangle x1="-49.784" y1="-0.254" x2="-49.276" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
<rectangle x1="16.256" y1="-0.254" x2="16.764" y2="0.254" layer="51"/>
<rectangle x1="18.796" y1="-0.254" x2="19.304" y2="0.254" layer="51"/>
<rectangle x1="21.336" y1="-0.254" x2="21.844" y2="0.254" layer="51"/>
<rectangle x1="23.876" y1="-0.254" x2="24.384" y2="0.254" layer="51"/>
<rectangle x1="49.276" y1="-0.254" x2="49.784" y2="0.254" layer="51"/>
<rectangle x1="46.736" y1="-0.254" x2="47.244" y2="0.254" layer="51"/>
<rectangle x1="44.196" y1="-0.254" x2="44.704" y2="0.254" layer="51"/>
<rectangle x1="41.656" y1="-0.254" x2="42.164" y2="0.254" layer="51"/>
<rectangle x1="39.116" y1="-0.254" x2="39.624" y2="0.254" layer="51"/>
<rectangle x1="36.576" y1="-0.254" x2="37.084" y2="0.254" layer="51"/>
<rectangle x1="34.036" y1="-0.254" x2="34.544" y2="0.254" layer="51"/>
<rectangle x1="31.496" y1="-0.254" x2="32.004" y2="0.254" layer="51"/>
<rectangle x1="28.956" y1="-0.254" x2="29.464" y2="0.254" layer="51"/>
<rectangle x1="26.416" y1="-0.254" x2="26.924" y2="0.254" layer="51"/>
<wire x1="50.8" y1="0.635" x2="50.8" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="50.165" y1="1.27" x2="50.8" y2="0.635" width="0.1524" layer="21"/>
<wire x1="50.8" y1="-0.635" x2="50.165" y2="-1.27" width="0.1524" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD40">
<wire x1="-6.35" y1="-53.34" x2="1.27" y2="-53.34" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-53.34" x2="1.27" y2="50.8" width="0.4064" layer="94"/>
<wire x1="1.27" y1="50.8" x2="-6.35" y2="50.8" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="50.8" x2="-6.35" y2="-53.34" width="0.4064" layer="94"/>
<text x="-6.35" y="51.435" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-55.88" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="48.26" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="45.72" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="43.18" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="40.64" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="38.1" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="35.56" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="33.02" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="30.48" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="27.94" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="25.4" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="-2.54" y="22.86" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="-2.54" y="20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="13" x="-2.54" y="17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="-2.54" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="15" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="17" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="18" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="19" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="20" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="21" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="22" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="23" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="24" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="25" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="26" x="-2.54" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="27" x="-2.54" y="-17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="28" x="-2.54" y="-20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="29" x="-2.54" y="-22.86" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="30" x="-2.54" y="-25.4" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="31" x="-2.54" y="-27.94" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="32" x="-2.54" y="-30.48" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="33" x="-2.54" y="-33.02" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="34" x="-2.54" y="-35.56" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="35" x="-2.54" y="-38.1" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="36" x="-2.54" y="-40.64" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="37" x="-2.54" y="-43.18" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="38" x="-2.54" y="-45.72" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="39" x="-2.54" y="-48.26" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="40" x="-2.54" y="-50.8" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X40" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="PINHD40" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X40">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="16" pad="16"/>
<connect gate="-1" pin="17" pad="17"/>
<connect gate="-1" pin="18" pad="18"/>
<connect gate="-1" pin="19" pad="19"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="20" pad="20"/>
<connect gate="-1" pin="21" pad="21"/>
<connect gate="-1" pin="22" pad="22"/>
<connect gate="-1" pin="23" pad="23"/>
<connect gate="-1" pin="24" pad="24"/>
<connect gate="-1" pin="25" pad="25"/>
<connect gate="-1" pin="26" pad="26"/>
<connect gate="-1" pin="27" pad="27"/>
<connect gate="-1" pin="28" pad="28"/>
<connect gate="-1" pin="29" pad="29"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="30" pad="30"/>
<connect gate="-1" pin="31" pad="31"/>
<connect gate="-1" pin="32" pad="32"/>
<connect gate="-1" pin="33" pad="33"/>
<connect gate="-1" pin="34" pad="34"/>
<connect gate="-1" pin="35" pad="35"/>
<connect gate="-1" pin="36" pad="36"/>
<connect gate="-1" pin="37" pad="37"/>
<connect gate="-1" pin="38" pad="38"/>
<connect gate="-1" pin="39" pad="39"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="40" pad="40"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74ttl-din">
<description>&lt;b&gt;TTL Devices with DIN Symbols&lt;/b&gt;&lt;p&gt;
CadSoft and the author do not warrant that this library is free from error
or will meet your specific requirements.&lt;p&gt;
&lt;author&gt;Created by Holger Bettenbühl, hol.bet.@rhein-main.net&lt;/author&gt;</description>
<packages>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="+UB">
<circle x="0" y="-0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="-1.27" size="1.524" layer="95">&gt;NAME</text>
<pin name="+UB" x="0" y="2.54" visible="pad" length="short" direction="pwr" rot="R270"/>
</symbol>
<symbol name="-UB">
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0" layer="94"/>
<wire x1="0.635" y1="0" x2="-0.635" y2="0" width="0" layer="94"/>
<circle x="0" y="0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="0" size="1.524" layer="95">&gt;NAME</text>
<pin name="-UB" x="0" y="-2.54" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
<symbol name="04">
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="1.27" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="5.08" y2="1.27" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<text x="-5.08" y="5.715" size="2.032" layer="95">&gt;NAME</text>
<text x="-5.08" y="-8.255" size="2.032" layer="96">&gt;VALUE</text>
<text x="-0.3302" y="1.905" size="2.032" layer="94">1</text>
<pin name="A" x="-10.16" y="0" visible="pad" length="short" direction="in" swaplevel="1"/>
<pin name="Y" x="10.16" y="0" visible="pad" length="short" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*04" prefix="V">
<description>Hex &lt;b&gt;INVERTER&lt;/b&gt;</description>
<gates>
<gate name="/+UB" symbol="+UB" x="15.24" y="12.7" addlevel="request"/>
<gate name="/-UB" symbol="-UB" x="15.24" y="5.08" addlevel="request"/>
<gate name="/1" symbol="04" x="0" y="0" swaplevel="1"/>
<gate name="/2" symbol="04" x="0" y="17.78" swaplevel="1"/>
<gate name="/3" symbol="04" x="0" y="35.56" swaplevel="1"/>
<gate name="/4" symbol="04" x="-25.4" y="0" swaplevel="1"/>
<gate name="/5" symbol="04" x="-25.4" y="17.78" swaplevel="1"/>
<gate name="/6" symbol="04" x="-25.4" y="35.56" swaplevel="1"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="/+UB" pin="+UB" pad="14"/>
<connect gate="/-UB" pin="-UB" pad="7"/>
<connect gate="/1" pin="A" pad="1"/>
<connect gate="/1" pin="Y" pad="2"/>
<connect gate="/2" pin="A" pad="3"/>
<connect gate="/2" pin="Y" pad="4"/>
<connect gate="/3" pin="A" pad="5"/>
<connect gate="/3" pin="Y" pad="6"/>
<connect gate="/4" pin="A" pad="9"/>
<connect gate="/4" pin="Y" pad="8"/>
<connect gate="/5" pin="A" pad="11"/>
<connect gate="/5" pin="Y" pad="10"/>
<connect gate="/6" pin="A" pad="13"/>
<connect gate="/6" pin="Y" pad="12"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="zilog" deviceset="Z80CPU" device=""/>
<part name="IC2" library="74xx-us" deviceset="74*245" device="N" technology="LS"/>
<part name="JP1" library="pinhead" deviceset="PINHD-1X40" device=""/>
<part name="IC3" library="74xx-us" deviceset="74*245" device="N" technology="LS"/>
<part name="IC4" library="74xx-us" deviceset="74*245" device="N" technology="LS"/>
<part name="V4" library="74ttl-din" deviceset="74*04" device="N"/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="1" x="63.5" y="68.58"/>
<instance part="IC2" gate="A" x="109.22" y="33.02" rot="R180"/>
<instance part="JP1" gate="-1" x="175.26" y="2.54" rot="MR270"/>
<instance part="IC3" gate="A" x="109.22" y="109.22" rot="R180"/>
<instance part="IC4" gate="A" x="109.22" y="71.12" rot="R180"/>
<instance part="V4" gate="/1" x="66.04" y="129.54"/>
<instance part="P+1" gate="1" x="127" y="15.24"/>
<instance part="GND1" gate="1" x="226.06" y="-5.08"/>
<instance part="GND2" gate="1" x="40.64" y="27.94"/>
<instance part="P+2" gate="1" x="43.18" y="38.1"/>
<instance part="GND3" gate="1" x="124.46" y="116.84"/>
<instance part="GND4" gate="1" x="124.46" y="78.74"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="1" pin="D0"/>
<pinref part="IC2" gate="A" pin="B8"/>
<wire x1="81.28" y1="53.34" x2="96.52" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="1" pin="D1"/>
<pinref part="IC2" gate="A" pin="B7"/>
<wire x1="81.28" y1="50.8" x2="96.52" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="1" pin="D2"/>
<pinref part="IC2" gate="A" pin="B6"/>
<wire x1="81.28" y1="48.26" x2="96.52" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="1" pin="D3"/>
<pinref part="IC2" gate="A" pin="B5"/>
<wire x1="81.28" y1="45.72" x2="96.52" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="1" pin="D4"/>
<pinref part="IC2" gate="A" pin="B4"/>
<wire x1="81.28" y1="43.18" x2="96.52" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="1" pin="D5"/>
<pinref part="IC2" gate="A" pin="B3"/>
<wire x1="81.28" y1="40.64" x2="96.52" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC1" gate="1" pin="D6"/>
<pinref part="IC2" gate="A" pin="B2"/>
<wire x1="81.28" y1="38.1" x2="96.52" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC1" gate="1" pin="D7"/>
<pinref part="IC2" gate="A" pin="B1"/>
<wire x1="81.28" y1="35.56" x2="96.52" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC2" gate="A" pin="A1"/>
<pinref part="JP1" gate="-1" pin="2"/>
<wire x1="121.92" y1="20.32" x2="129.54" y2="20.32" width="0.1524" layer="91"/>
<wire x1="129.54" y1="20.32" x2="129.54" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC2" gate="A" pin="A2"/>
<pinref part="JP1" gate="-1" pin="3"/>
<wire x1="121.92" y1="22.86" x2="132.08" y2="22.86" width="0.1524" layer="91"/>
<wire x1="132.08" y1="22.86" x2="132.08" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC2" gate="A" pin="A3"/>
<pinref part="JP1" gate="-1" pin="4"/>
<wire x1="121.92" y1="25.4" x2="134.62" y2="25.4" width="0.1524" layer="91"/>
<wire x1="134.62" y1="25.4" x2="134.62" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC2" gate="A" pin="A4"/>
<pinref part="JP1" gate="-1" pin="5"/>
<wire x1="121.92" y1="27.94" x2="137.16" y2="27.94" width="0.1524" layer="91"/>
<wire x1="137.16" y1="27.94" x2="137.16" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC2" gate="A" pin="A5"/>
<pinref part="JP1" gate="-1" pin="6"/>
<wire x1="121.92" y1="30.48" x2="139.7" y2="30.48" width="0.1524" layer="91"/>
<wire x1="139.7" y1="30.48" x2="139.7" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC2" gate="A" pin="A6"/>
<pinref part="JP1" gate="-1" pin="7"/>
<wire x1="121.92" y1="33.02" x2="142.24" y2="33.02" width="0.1524" layer="91"/>
<wire x1="142.24" y1="33.02" x2="142.24" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC2" gate="A" pin="A7"/>
<pinref part="JP1" gate="-1" pin="8"/>
<wire x1="121.92" y1="35.56" x2="144.78" y2="35.56" width="0.1524" layer="91"/>
<wire x1="144.78" y1="35.56" x2="144.78" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC2" gate="A" pin="A8"/>
<pinref part="JP1" gate="-1" pin="9"/>
<wire x1="121.92" y1="38.1" x2="147.32" y2="38.1" width="0.1524" layer="91"/>
<wire x1="147.32" y1="38.1" x2="147.32" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="P+1" gate="1" pin="+5V"/>
<pinref part="JP1" gate="-1" pin="1"/>
<wire x1="127" y1="12.7" x2="127" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="1" pin="VCC"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="43.18" y1="35.56" x2="45.72" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="JP1" gate="-1" pin="40"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="226.06" y1="5.08" x2="226.06" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="IC1" gate="1" pin="GND"/>
<wire x1="40.64" y1="30.48" x2="40.64" y2="40.64" width="0.1524" layer="91"/>
<wire x1="40.64" y1="40.64" x2="45.72" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="A" pin="DIR"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="124.46" y1="119.38" x2="121.92" y2="119.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="A" pin="DIR"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="124.46" y1="81.28" x2="121.92" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A0"/>
<pinref part="IC3" gate="A" pin="B8"/>
<wire x1="81.28" y1="96.52" x2="96.52" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A1"/>
<pinref part="IC3" gate="A" pin="B7"/>
<wire x1="81.28" y1="93.98" x2="96.52" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A2"/>
<pinref part="IC3" gate="A" pin="B6"/>
<wire x1="81.28" y1="91.44" x2="96.52" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A3"/>
<pinref part="IC3" gate="A" pin="B5"/>
<wire x1="81.28" y1="88.9" x2="96.52" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A4"/>
<pinref part="IC3" gate="A" pin="B4"/>
<wire x1="81.28" y1="86.36" x2="96.52" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A5"/>
<pinref part="IC3" gate="A" pin="B3"/>
<wire x1="81.28" y1="83.82" x2="96.52" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A6"/>
<pinref part="IC3" gate="A" pin="B2"/>
<wire x1="81.28" y1="81.28" x2="96.52" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A7"/>
<pinref part="IC3" gate="A" pin="B1"/>
<wire x1="81.28" y1="78.74" x2="96.52" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A8"/>
<pinref part="IC4" gate="A" pin="B8"/>
<wire x1="81.28" y1="76.2" x2="96.52" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A9"/>
<pinref part="IC4" gate="A" pin="B7"/>
<wire x1="81.28" y1="73.66" x2="96.52" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A10"/>
<pinref part="IC4" gate="A" pin="B6"/>
<wire x1="81.28" y1="71.12" x2="96.52" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A11"/>
<pinref part="IC4" gate="A" pin="B5"/>
<wire x1="81.28" y1="68.58" x2="96.52" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A12"/>
<pinref part="IC4" gate="A" pin="B4"/>
<wire x1="81.28" y1="66.04" x2="96.52" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A13"/>
<pinref part="IC4" gate="A" pin="B3"/>
<wire x1="81.28" y1="63.5" x2="96.52" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A14"/>
<pinref part="IC4" gate="A" pin="B2"/>
<wire x1="81.28" y1="60.96" x2="96.52" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="IC1" gate="1" pin="A15"/>
<pinref part="IC4" gate="A" pin="B1"/>
<wire x1="81.28" y1="58.42" x2="96.52" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="IC3" gate="A" pin="A8"/>
<pinref part="JP1" gate="-1" pin="10"/>
<wire x1="121.92" y1="114.3" x2="149.86" y2="114.3" width="0.1524" layer="91"/>
<wire x1="149.86" y1="114.3" x2="149.86" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="IC3" gate="A" pin="A7"/>
<pinref part="JP1" gate="-1" pin="11"/>
<wire x1="121.92" y1="111.76" x2="152.4" y2="111.76" width="0.1524" layer="91"/>
<wire x1="152.4" y1="111.76" x2="152.4" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="IC3" gate="A" pin="A6"/>
<pinref part="JP1" gate="-1" pin="12"/>
<wire x1="121.92" y1="109.22" x2="154.94" y2="109.22" width="0.1524" layer="91"/>
<wire x1="154.94" y1="109.22" x2="154.94" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="IC3" gate="A" pin="A5"/>
<pinref part="JP1" gate="-1" pin="13"/>
<wire x1="121.92" y1="106.68" x2="157.48" y2="106.68" width="0.1524" layer="91"/>
<wire x1="157.48" y1="106.68" x2="157.48" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="IC3" gate="A" pin="A4"/>
<pinref part="JP1" gate="-1" pin="14"/>
<wire x1="121.92" y1="104.14" x2="160.02" y2="104.14" width="0.1524" layer="91"/>
<wire x1="160.02" y1="104.14" x2="160.02" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="IC3" gate="A" pin="A3"/>
<pinref part="JP1" gate="-1" pin="15"/>
<wire x1="121.92" y1="101.6" x2="162.56" y2="101.6" width="0.1524" layer="91"/>
<wire x1="162.56" y1="101.6" x2="162.56" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="IC3" gate="A" pin="A2"/>
<pinref part="JP1" gate="-1" pin="16"/>
<wire x1="121.92" y1="99.06" x2="165.1" y2="99.06" width="0.1524" layer="91"/>
<wire x1="165.1" y1="99.06" x2="165.1" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="IC3" gate="A" pin="A1"/>
<pinref part="JP1" gate="-1" pin="17"/>
<wire x1="121.92" y1="96.52" x2="167.64" y2="96.52" width="0.1524" layer="91"/>
<wire x1="167.64" y1="96.52" x2="167.64" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="IC4" gate="A" pin="A8"/>
<pinref part="JP1" gate="-1" pin="18"/>
<wire x1="121.92" y1="76.2" x2="170.18" y2="76.2" width="0.1524" layer="91"/>
<wire x1="170.18" y1="76.2" x2="170.18" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="IC4" gate="A" pin="A7"/>
<pinref part="JP1" gate="-1" pin="19"/>
<wire x1="121.92" y1="73.66" x2="172.72" y2="73.66" width="0.1524" layer="91"/>
<wire x1="172.72" y1="73.66" x2="172.72" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="IC4" gate="A" pin="A6"/>
<pinref part="JP1" gate="-1" pin="20"/>
<wire x1="121.92" y1="71.12" x2="175.26" y2="71.12" width="0.1524" layer="91"/>
<wire x1="175.26" y1="71.12" x2="175.26" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="IC4" gate="A" pin="A5"/>
<pinref part="JP1" gate="-1" pin="21"/>
<wire x1="121.92" y1="68.58" x2="177.8" y2="68.58" width="0.1524" layer="91"/>
<wire x1="177.8" y1="68.58" x2="177.8" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="IC4" gate="A" pin="A4"/>
<pinref part="JP1" gate="-1" pin="22"/>
<wire x1="121.92" y1="66.04" x2="180.34" y2="66.04" width="0.1524" layer="91"/>
<wire x1="180.34" y1="66.04" x2="180.34" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="IC4" gate="A" pin="A3"/>
<pinref part="JP1" gate="-1" pin="23"/>
<wire x1="121.92" y1="63.5" x2="182.88" y2="63.5" width="0.1524" layer="91"/>
<wire x1="182.88" y1="63.5" x2="182.88" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="IC4" gate="A" pin="A2"/>
<pinref part="JP1" gate="-1" pin="24"/>
<wire x1="121.92" y1="60.96" x2="185.42" y2="60.96" width="0.1524" layer="91"/>
<wire x1="185.42" y1="60.96" x2="185.42" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="JP1" gate="-1" pin="25"/>
<wire x1="119.38" y1="58.42" x2="187.96" y2="58.42" width="0.1524" layer="91"/>
<wire x1="187.96" y1="58.42" x2="187.96" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="IC1" gate="1" pin="IORQ"/>
<wire x1="45.72" y1="91.44" x2="10.16" y2="91.44" width="0.1524" layer="91"/>
<wire x1="10.16" y1="91.44" x2="10.16" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="26"/>
<wire x1="10.16" y1="-30.48" x2="190.5" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-30.48" x2="190.5" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="IC1" gate="1" pin="MREQ"/>
<wire x1="45.72" y1="93.98" x2="12.7" y2="93.98" width="0.1524" layer="91"/>
<wire x1="12.7" y1="93.98" x2="12.7" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="27"/>
<wire x1="12.7" y1="-27.94" x2="193.04" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-27.94" x2="193.04" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="IC1" gate="1" pin="NMI"/>
<wire x1="45.72" y1="63.5" x2="15.24" y2="63.5" width="0.1524" layer="91"/>
<wire x1="15.24" y1="63.5" x2="15.24" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="28"/>
<wire x1="15.24" y1="-25.4" x2="195.58" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-25.4" x2="195.58" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="IC1" gate="1" pin="INT"/>
<wire x1="45.72" y1="66.04" x2="17.78" y2="66.04" width="0.1524" layer="91"/>
<wire x1="17.78" y1="66.04" x2="17.78" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="29"/>
<wire x1="17.78" y1="-22.86" x2="198.12" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-22.86" x2="198.12" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="IC1" gate="1" pin="CLK"/>
<wire x1="45.72" y1="45.72" x2="20.32" y2="45.72" width="0.1524" layer="91"/>
<wire x1="20.32" y1="45.72" x2="20.32" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="30"/>
<wire x1="20.32" y1="-20.32" x2="200.66" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="200.66" y1="-20.32" x2="200.66" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="IC1" gate="1" pin="RD"/>
<wire x1="45.72" y1="88.9" x2="22.86" y2="88.9" width="0.1524" layer="91"/>
<wire x1="22.86" y1="88.9" x2="22.86" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="31"/>
<wire x1="22.86" y1="-17.78" x2="203.2" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-17.78" x2="203.2" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="IC1" gate="1" pin="WR"/>
<wire x1="45.72" y1="86.36" x2="25.4" y2="86.36" width="0.1524" layer="91"/>
<wire x1="25.4" y1="86.36" x2="25.4" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="32"/>
<wire x1="25.4" y1="-15.24" x2="121.92" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="121.92" y1="-15.24" x2="205.74" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="205.74" y1="-15.24" x2="205.74" y2="5.08" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="DIR"/>
<wire x1="121.92" y1="43.18" x2="121.92" y2="-15.24" width="0.1524" layer="91"/>
<junction x="121.92" y="-15.24"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="IC1" gate="1" pin="BUSAK"/>
<wire x1="45.72" y1="50.8" x2="27.94" y2="50.8" width="0.1524" layer="91"/>
<wire x1="27.94" y1="50.8" x2="27.94" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="33"/>
<wire x1="27.94" y1="-12.7" x2="208.28" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-12.7" x2="208.28" y2="5.08" width="0.1524" layer="91"/>
<wire x1="27.94" y1="50.8" x2="27.94" y2="129.54" width="0.1524" layer="91"/>
<junction x="27.94" y="50.8"/>
<pinref part="V4" gate="/1" pin="A"/>
<wire x1="27.94" y1="129.54" x2="55.88" y2="129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="IC1" gate="1" pin="WAIT"/>
<wire x1="45.72" y1="71.12" x2="30.48" y2="71.12" width="0.1524" layer="91"/>
<wire x1="30.48" y1="71.12" x2="30.48" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="34"/>
<wire x1="30.48" y1="-10.16" x2="210.82" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-10.16" x2="210.82" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="IC1" gate="1" pin="BUSRQ"/>
<wire x1="45.72" y1="53.34" x2="33.02" y2="53.34" width="0.1524" layer="91"/>
<wire x1="33.02" y1="53.34" x2="33.02" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="35"/>
<wire x1="33.02" y1="-7.62" x2="213.36" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="213.36" y1="-7.62" x2="213.36" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="IC1" gate="1" pin="RESET"/>
<wire x1="45.72" y1="58.42" x2="35.56" y2="58.42" width="0.1524" layer="91"/>
<wire x1="35.56" y1="58.42" x2="35.56" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="36"/>
<wire x1="35.56" y1="-5.08" x2="215.9" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="215.9" y1="-5.08" x2="215.9" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="IC1" gate="1" pin="M1"/>
<wire x1="45.72" y1="96.52" x2="38.1" y2="96.52" width="0.1524" layer="91"/>
<wire x1="38.1" y1="96.52" x2="38.1" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="37"/>
<wire x1="38.1" y1="-2.54" x2="218.44" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-2.54" x2="218.44" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<pinref part="IC2" gate="A" pin="G"/>
<wire x1="129.54" y1="45.72" x2="121.92" y2="45.72" width="0.1524" layer="91"/>
<wire x1="129.54" y1="83.82" x2="129.54" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="G"/>
<wire x1="121.92" y1="83.82" x2="129.54" y2="83.82" width="0.1524" layer="91"/>
<junction x="129.54" y="83.82"/>
<wire x1="129.54" y1="121.92" x2="129.54" y2="83.82" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="G"/>
<wire x1="121.92" y1="121.92" x2="129.54" y2="121.92" width="0.1524" layer="91"/>
<junction x="129.54" y="121.92"/>
<pinref part="V4" gate="/1" pin="Y"/>
<wire x1="76.2" y1="129.54" x2="129.54" y2="129.54" width="0.1524" layer="91"/>
<wire x1="129.54" y1="129.54" x2="129.54" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>

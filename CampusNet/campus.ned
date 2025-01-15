

import inet.common.misc.ThruputMeteringChannel;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.bgp.BgpRouter;
import inet.node.ethernet.EtherSwitch;
import inet.node.inet.StandardHost;
import inet.node.ospfv2.OspfRouter;
import inet.visualizer.integrated.IntegratedCanvasVisualizer;


network CampusNetwork
{
    types:
        channel LINK_100 extends ThruputMeteringChannel
        {
            parameters:
                delay = 50us;
                datarate = 100Mbps;
                displayAsTooltip = true;
                thruputDisplayFormat = "#N";
        }
    submodules:
        visualizer: IntegratedCanvasVisualizer {
            parameters:
                @display("p=23,84;is=s");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                @display("p=23,25;is=s");
                config = xmldoc("IPConfig.xml");
                addStaticRoutes = false;
                addDefaultRoutes = false;
                addSubnetRoutes = false;
        }
        A: BgpRouter {
            parameters:
                @display("p=491,172");
            gates:
                pppg[7];
        }
        B: BgpRouter {
            parameters:
                @display("p=742,172");
            gates:
                pppg[5];
        }
        C: BgpRouter {
            parameters:
                @display("p=647,366");
            gates:
                pppg[3];
        }
        RA1: OspfRouter {
            parameters:
                @display("p=416,49;i=misc/desktoppc2");
            gates:
                pppg[2];
                ethg[1];
        }
        RA2: OspfRouter {
            parameters:
                @display("p=364,171;i=misc/desktoppc2");
            gates:
                pppg[2];
                ethg[1];
        }
        RB1: OspfRouter {
            parameters:
                @display("p=874,83;i=misc/house");
            gates:
                pppg[2];
                ethg[1];
        }
        RB2: OspfRouter {
            parameters:
                @display("p=933,215;i=misc/house");
            gates:
                pppg[2];
                ethg[1];
        }

        RB3: OspfRouter {
            parameters:
                @display("p=933,335;i=misc/house");
            gates:
                pppg[1];
                ethg[1];
        }
        RC1: OspfRouter {
            parameters:
                @display("p=608,523;i=misc/town2");
            gates:
                pppg[1];
                ethg[1];
        }
        PA1: EtherSwitch {
            parameters:
                @display("p=283,57;i=device/lan-bus");
            gates:
                ethg[3];
        }
        PA2: EtherSwitch {
            parameters:
                @display("p=229,171;i=device/lan-bus");
            gates:
                ethg[3];
        }
        PB1: EtherSwitch {
            parameters:
                @display("p=1004,72;i=device/lan-bus");
            gates:
                ethg[3];
        }
        PB2: EtherSwitch {
            parameters:
                @display("p=1043,171;i=device/lan-bus");
            gates:
                ethg[3];
        }
        PB3: EtherSwitch {
            parameters:
                @display("p=1060,335;i=device/lan-bus");
            gates:
                ethg[3];
        }
        PC1: EtherSwitch {
            parameters:
                @display("p=781,535;i=device/lan-bus");
            gates:
                ethg[3];
        }
        HA11: StandardHost {
            parameters:
                @display("p=156,31;i=device/laptop");
            gates:
                ethg[1];
        }
        HA12: StandardHost {
            parameters:
                @display("p=137,84;i=device/laptop");
            gates:
                ethg[1];
        }
        HA21: StandardHost {
            parameters:
                @display("p=109,241;i=device/laptop");
            gates:
                ethg[1];
        }
        HA22: StandardHost {
            parameters:
                @display("p=109,159;i=device/laptop");
            gates:
                ethg[1];
        }


        HA31: StandardHost {
            parameters:
                @display("p=98,356;i=device/laptop");
            gates:
                ethg[1];
        }
        HA32: StandardHost {
            parameters:
                @display("p=54,294;i=device/laptop");
            gates:
                ethg[1];
        }

        HA41: StandardHost {
            parameters:
                @display("p=148,497;i=device/laptop");
            gates:
                ethg[1];
        }
        HA42: StandardHost {
            parameters:
                @display("p=137,431;i=device/laptop");
            gates:
                ethg[1];
        }

        HA51: StandardHost {
            parameters:
                @display("p=229,619;i=device/laptop");
            gates:
                ethg[1];
        }
        HA52: StandardHost {
            parameters:
                @display("p=156,560;i=device/laptop");
            gates:
                ethg[1];
        }



        HB11: StandardHost {
            parameters:
                @display("p=1112,40;i=device/laptop");
            gates:
                ethg[1];
        }
        HB12: StandardHost {
            parameters:
                @display("p=1120,113;i=device/laptop");
            gates:
                ethg[1];
        }
        HB21: StandardHost {
            parameters:
                @display("p=1130,194;i=device/laptop");
            gates:
                ethg[1];
        }
        HB22: StandardHost {
            parameters:
                @display("p=1130,259;i=device/laptop");
            gates:
                ethg[1];
        }

        HB31: StandardHost {
            parameters:
                @display("p=1142,338;i=device/laptop");
            gates:
                ethg[1];
        }
        HB32: StandardHost {
            parameters:
                @display("p=1130,411;i=device/laptop");
            gates:
                ethg[1];
        }

        HC11: StandardHost {
            parameters:
                @display("p=958,592;i=device/laptop");
            gates:
                ethg[1];
        }
        HC12: StandardHost {
            parameters:
                @display("p=947,499;i=device/laptop");
            gates:
                ethg[1];
        }
        PA3: EtherSwitch {
            parameters:
                @display("p=212,305;i=device/lan-bus");
            gates:
                ethg[3];
        }
        PA4: EtherSwitch {
            parameters:
                @display("p=304,413;i=device/lan-bus");
            gates:
                ethg[3];
        }
        PA5: EtherSwitch {
            parameters:
                @display("p=408,546;i=device/lan-bus");
            gates:
                ethg[3];
        }
        RA3: OspfRouter {
            parameters:
                @display("p=327,261;i=misc/desktoppc2");
            gates:
                pppg[1];
                ethg[1];
        }
        RA4: OspfRouter {
            parameters:
                @display("p=393,353;i=misc/desktoppc2");
            gates:
                pppg[1];
                ethg[1];
        }
        RA5: OspfRouter {
            parameters:
                @display("p=478,430;i=misc/desktoppc2");
            gates:
                pppg[1];
                ethg[1];
        }
    connections:
        //LAN A1 et A2
        HA11.ethg[0] <--> LINK_100 <--> PA1.ethg[0];
        HA12.ethg[0] <--> LINK_100 <--> PA1.ethg[1];
        HA21.ethg[0] <--> LINK_100 <--> PA2.ethg[0];
        HA22.ethg[0] <--> LINK_100 <--> PA2.ethg[1];
        HA31.ethg[0] <--> LINK_100 <--> PA3.ethg[0];
        HA32.ethg[0] <--> LINK_100 <--> PA3.ethg[1];
        HA41.ethg[0] <--> LINK_100 <--> PA4.ethg[0];
        HA42.ethg[0] <--> LINK_100 <--> PA4.ethg[1];
        HA51.ethg[0] <--> LINK_100 <--> PA5.ethg[0];
        HA52.ethg[0] <--> LINK_100 <--> PA5.ethg[1];
        PA1.ethg[2] <--> LINK_100 <--> RA1.ethg[0];
        PA2.ethg[2] <--> LINK_100 <--> RA2.ethg[0];
        PA3.ethg[2] <--> LINK_100 <--> RA3.ethg[0];
        PA4.ethg[2] <--> LINK_100 <--> RA4.ethg[0];
        PA5.ethg[2] <--> LINK_100 <--> RA5.ethg[0];

        //LAN B1 et B2
        HB11.ethg[0] <--> LINK_100 <--> PB1.ethg[0];
        HB12.ethg[0] <--> LINK_100 <--> PB1.ethg[1];
        HB21.ethg[0] <--> LINK_100 <--> PB2.ethg[0];
        HB22.ethg[0] <--> LINK_100 <--> PB2.ethg[1];
        HB31.ethg[0] <--> LINK_100 <--> PB3.ethg[0];
        HB32.ethg[0] <--> LINK_100 <--> PB3.ethg[1];
        PB1.ethg[2] <--> LINK_100 <--> RB1.ethg[0];
        PB2.ethg[2] <--> LINK_100 <--> RB2.ethg[0];
        PB3.ethg[2] <--> LINK_100 <--> RB3.ethg[0];

        //LAN C1 et C2
        HC11.ethg[0] <--> LINK_100 <--> PC1.ethg[0];
        HC12.ethg[0] <--> LINK_100 <--> PC1.ethg[1];
        PC1.ethg[2] <--> LINK_100 <--> RC1.ethg[0];
        //OSPF A
        RA1.pppg[1] <--> LINK_100 <--> RA2.pppg[1];
        RA1.pppg[0] <--> LINK_100 <--> A.pppg[2];
        RA2.pppg[0] <--> LINK_100 <--> A.pppg[3];
        RA3.pppg[0] <--> LINK_100 <--> A.pppg[4];
        RA4.pppg[0] <--> LINK_100 <--> A.pppg[5];
        RA5.pppg[0] <--> LINK_100 <--> A.pppg[6];

        //OSPF B
        RB1.pppg[1] <--> LINK_100 <--> RB2.pppg[1];
        RB1.pppg[0] <--> LINK_100 <--> B.pppg[2];
        RB2.pppg[0] <--> LINK_100 <--> B.pppg[3];
        RB3.pppg[0] <--> LINK_100 <--> B.pppg[4];

        RC1.pppg[0] <--> LINK_100 <--> C.pppg[2];
        //BGP
        A.pppg[0] <--> LINK_100 <--> B.pppg[0];
        A.pppg[1] <--> LINK_100 <--> C.pppg[0];
        B.pppg[1] <--> LINK_100 <--> C.pppg[1];

}


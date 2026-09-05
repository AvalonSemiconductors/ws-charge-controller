// SPDX-FileCopyrightText: © 2025 Project Template Contributors
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

`include "generated_defines.svh"
`include "slot_defines.svh"

`ifdef SRAM_gf180mcu_ocd_ip_sram
`define gf180mcu_xxx_ip_sram__sram512x8m8wm1 gf180mcu_ocd_ip_sram__sram512x8m8wm1
`else
`define gf180mcu_xxx_ip_sram__sram512x8m8wm1 gf180mcu_fd_ip_sram__sram512x8m8wm1
`endif

`ifdef PAD_gf180mcu_ocd_io
`define gf180mcu_xxx_io__vdd gf180mcu_ocd_io__vdd
`define gf180mcu_xxx_io__vss gf180mcu_ocd_io__vss
`define gf180mcu_xxx_io__dvdd gf180mcu_ocd_io__dvdd
`define gf180mcu_xxx_io__dvss gf180mcu_ocd_io__dvss
`define gf180mcu_xxx_io__in_s gf180mcu_ocd_io__in_s
`define gf180mcu_xxx_io__in_c gf180mcu_ocd_io__in_c
`define gf180mcu_xxx_io__bi_24t gf180mcu_ocd_io__bi_24t
`define gf180mcu_xxx_io__asig_5p0 gf180mcu_ocd_io__asig_5p0
`else
`define gf180mcu_xxx_io__vdd gf180mcu_fd_io__dvdd
`define gf180mcu_xxx_io__vss gf180mcu_fd_io__dvss
`define gf180mcu_xxx_io__dvdd gf180mcu_fd_io__dvdd
`define gf180mcu_xxx_io__dvss gf180mcu_fd_io__dvss
`define gf180mcu_xxx_io__in_s gf180mcu_fd_io__in_s
`define gf180mcu_xxx_io__in_c gf180mcu_fd_io__in_c
`define gf180mcu_xxx_io__bi_24t gf180mcu_fd_io__bi_24t
`define gf180mcu_xxx_io__asig_5p0 gf180mcu_fd_io__asig_5p0
`endif

module chip_top #(
    // Power/ground pads for I/O
    parameter NUM_DVDD_PADS = `NUM_DVDD_PADS,
    parameter NUM_DVSS_PADS = `NUM_DVSS_PADS,

    // Power/ground pads for core
    parameter NUM_VDD_PADS = `NUM_VDD_PADS,
    parameter NUM_VSS_PADS = `NUM_VSS_PADS
    )(
    `ifdef USE_POWER_PINS
    inout  wire VDD,
    inout  wire VSS,
    inout  wire DVDD,
    inout  wire DVSS,
    `endif

    inout dummy_0p,
    inout dummy_1p,
    inout dummy_2p,
    inout dummy_3p,
    inout dummy_4p,
    inout dummy_5p,
    inout dummy_6p,
    inout dummy_7p,
    inout dummy_8p,
    inout dummy_9p,
    inout dummy_10p,
    inout dummy_11p,
    inout dummy_12p,
    inout dummy_13p,
    inout dummy_14p,
    inout dummy_15p,
    inout dummy_16p,
    inout dummy_17p,
    inout dummy_18p,
    inout dummy_19p,
    inout dummy_20p,
    
    input s0p_pad,
    input s1p_pad,
    input s0_pad,
    input s1_pad,
    output safe_pad,
    output pwrenb_pad,
    input lenb_pad,
    input ce_pad,
    output chrg_pad,
    output done_pad,
    inout prog_pad,
    
    inout [11:0] bat_pad
);

    // In the foundry pads, the I/O and
    // core voltage domains are shorted
    `ifdef USE_POWER_PINS
    `ifdef PAD_gf180mcu_fd_io
    assign VDD = DVDD;
    assign VSS = DVSS;
    `endif
    `endif

    // Power/ground pad instances
    generate
    for (genvar i=0; i<NUM_DVDD_PADS; i++) begin : dvdd_pads
        (* keep *)
        `gf180mcu_xxx_io__dvdd pad (
            `ifdef USE_POWER_PINS
            .DVDD   (DVDD),
            .DVSS   (DVSS),
            .VDD    (VDD),
            .VSS    (VSS)
            `endif
        );
    end
    for (genvar i=0; i<NUM_DVSS_PADS; i++) begin : dvss_pads
        (* keep *)
        `gf180mcu_xxx_io__dvss pad (
            `ifdef USE_POWER_PINS
            .DVDD   (DVDD),
            .DVSS   (DVSS),
            .VDD    (VDD),
            .VSS    (VSS)
            `endif
        );
    end
    for (genvar i=0; i<NUM_VDD_PADS; i++) begin : vdd_pads
        (* keep *)
        `gf180mcu_xxx_io__vdd pad (
            `ifdef USE_POWER_PINS
            .DVDD   (DVDD),
            .DVSS   (DVSS),
            .VDD    (VDD),
            .VSS    (VSS)
            `endif
        );
    end
    for (genvar i=0; i<NUM_VSS_PADS; i++) begin : vss_pads
        (* keep *)
        `gf180mcu_xxx_io__vss pad (
            `ifdef USE_POWER_PINS
            .DVDD   (DVDD),
            .DVSS   (DVSS),
            .VDD    (VDD),
            .VSS    (VSS)
            `endif
        );
    end
    for (genvar i=0; i<12; i++) begin : bat
        (* keep *)
        `gf180mcu_xxx_io__asig_5p0 pad (
            `ifdef USE_POWER_PINS
            .DVDD   (DVDD),
            .DVSS   (DVSS),
            .VDD    (VDD),
            .VSS    (VSS),
            `endif
            .ASIG5V(bat_pad[i])
        );
    end
    for (genvar i=0; i<12; i++) begin : bvdd
        (* keep *)
        `gf180mcu_xxx_io__dvdd pad (
            `ifdef USE_POWER_PINS
            .DVDD   (DVDD),
            .DVSS   (DVSS),
            .VDD    (VDD),
            .VSS    (VSS)
            `endif
        );
    end
    endgenerate

    // Signal IO pad instances
    
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 prog (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (prog_pad)
    );
    
    wire i_lenb;
    (* keep *)
    `gf180mcu_xxx_io__in_s lenb (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y      (i_lenb),
        .PAD    (lenb_pad),
        
        .PU     (1'b1),
        .PD     (1'b0)
    );
    
    wire i_ce;
    (* keep *)
    `gf180mcu_xxx_io__in_s ce (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y      (i_ce),
        .PAD    (ce_pad),
        
        .PU     (1'b1),
        .PD     (1'b0)
    );
    
    wire i_s1p;
    (* keep *)
    `gf180mcu_xxx_io__in_s s1p (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y      (i_s1p),
        .PAD    (s1p_pad),
        
        .PU     (1'b1),
        .PD     (1'b0)
    );
    
    wire i_s0p;
    (* keep *)
    `gf180mcu_xxx_io__in_s s0p (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y      (i_s0p),
        .PAD    (s0p_pad),
        
        .PU     (1'b1),
        .PD     (1'b0)
    );
    
    wire i_s1;
    (* keep *)
    `gf180mcu_xxx_io__in_s s1 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y      (i_s1),
        .PAD    (s1_pad),
        
        .PU     (1'b1),
        .PD     (1'b0)
    );
    
    wire i_s0;
    (* keep *)
    `gf180mcu_xxx_io__in_s s0 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y      (i_s0),
        .PAD    (s0_pad),
        
        .PU     (1'b1),
        .PD     (1'b0)
    );

    wire i_pwrenb = (i_s0 ^ i_s1) | i_s0p & i_s1p;
    (* keep *)
    `gf180mcu_xxx_io__bi_24t pwrenb (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .A      (i_pwrenb),
        .OE     (1'b1),
        .Y      (),
        .PAD    (pwrenb_pad),
        
        .CS     (1'b0),
        .SL     (1'b0),
        .IE     (1'b0),

        .PU     (1'b0),
        .PD     (1'b0)
    );    

    wire i_done = (i_s0 ^ i_s1) & i_s0p | i_s1p;
    (* keep *)
    `gf180mcu_xxx_io__bi_24t done (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .A      (i_done),
        .OE     (1'b1),
        .Y      (),
        .PAD    (done_pad),
        
        .CS     (1'b0),
        .SL     (1'b0),
        .IE     (1'b0),

        .PU     (1'b0),
        .PD     (1'b0)
    );
    
    wire i_chrg = i_lenb + i_s0 + i_s1 + i_done >= 3;
    (* keep *)
    `gf180mcu_xxx_io__bi_24t chrg (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .A      (i_chrg),
        .OE     (1'b1),
        .Y      (),
        .PAD    (chrg_pad),
        
        .CS     (1'b0),
        .SL     (1'b0),
        .IE     (1'b0),

        .PU     (1'b0),
        .PD     (1'b0)
    );
    
    wire i_safe = i_s0p & i_s1p;
    (* keep *)
    `gf180mcu_xxx_io__bi_24t safe (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .A      (i_safe),
        .OE     (1'b1),
        .Y      (),
        .PAD    (safe_pad),
        
        .CS     (1'b0),
        .SL     (1'b0),
        .IE     (1'b0),

        .PU     (1'b0),
        .PD     (1'b0)
    );

    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_0 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_0p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_1 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_1p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_2 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_2p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_3 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_3p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_4 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_4p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_5 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_5p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_6 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_6p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_7 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_7p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_8 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_8p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_9 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_9p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_10 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_10p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_11 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_11p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_12 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_12p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_13 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_13p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_14 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_14p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_15 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_15p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_16 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_16p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_17 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_17p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_18 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_18p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_19 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_19p)
    );
    (* keep *)
    `gf180mcu_xxx_io__asig_5p0 dummy_20 (
        `ifdef USE_POWER_PINS
        .DVDD   (DVDD),
        .DVSS   (DVSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
        .ASIG5V (dummy_20p)
    );
    
    // Do not remove, necessary for tapeout
    (* keep *) gf180mcu_ws_ip__qrcode_id qrcode_id ();
    (* keep *) gf180mcu_ws_ip__shuttle_id shuttle_id ();
    (* keep *) gf180mcu_ws_ip__project_id project_id ();
    (* keep *) gf180mcu_ws_ip__marker marker ();
    
    // wafer.space logo - can be removed if desired
    (* keep *) gf180mcu_ws_ip__logo wafer_space_logo ();

endmodule

`default_nettype wire

// DE10_Standard_VIP_Qsys_alt_vip_cl_cvi_0.v

// This file was auto-generated from alt_vip_cl_cvi_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 16.1 200

`timescale 1 ps / 1 ps
module DE10_Standard_VIP_Qsys_alt_vip_cl_cvi_0 #(
		parameter BPS                           = 8,
		parameter NUMBER_OF_COLOUR_PLANES       = 2,
		parameter COLOUR_PLANES_ARE_IN_PARALLEL = 0,
		parameter SYNC_TO                       = 0,
		parameter MATCH_CTRLDATA_PKT_CLIP_BASIC = 0,
		parameter MATCH_CTRLDATA_PKT_PAD_ADV    = 0,
		parameter OVERFLOW_HANDLING             = 0,
		parameter USE_EMBEDDED_SYNCS            = 1,
		parameter USE_HDMI_DEPRICATION          = 0,
		parameter GENERATE_VID_F                = 0,
		parameter USE_STD                       = 0,
		parameter STD_WIDTH                     = 1,
		parameter GENERATE_ANC                  = 0,
		parameter ANC_DEPTH                     = 1,
		parameter EXTRACT_TOTAL_RESOLUTION      = 1,
		parameter INTERLACED                    = 1,
		parameter H_ACTIVE_PIXELS_F0            = 720,
		parameter V_ACTIVE_LINES_F0             = 288,
		parameter V_ACTIVE_LINES_F1             = 288,
		parameter FIFO_DEPTH                    = 2048,
		parameter CLOCKS_ARE_SAME               = 0,
		parameter USE_CONTROL                   = 0
	) (
		input  wire       main_clock_clk,                   //    main_clock.clk
		input  wire       main_reset_reset,                 //    main_reset.reset
		output wire [7:0] dout_0_data,                      //        dout_0.data
		output wire       dout_0_valid,                     //              .valid
		output wire       dout_0_startofpacket,             //              .startofpacket
		output wire       dout_0_endofpacket,               //              .endofpacket
		input  wire       dout_0_ready,                     //              .ready
		input  wire       clocked_video_vid_clk,            // clocked_video.vid_clk
		input  wire [7:0] clocked_video_vid_data,           //              .vid_data
		input  wire       clocked_video_vid_de,             //              .vid_de
		input  wire       clocked_video_vid_datavalid,      //              .vid_datavalid
		input  wire       clocked_video_vid_locked,         //              .vid_locked
		input  wire       clocked_video_vid_f,              //              .vid_f
		input  wire       clocked_video_vid_v_sync,         //              .vid_v_sync
		input  wire       clocked_video_vid_h_sync,         //              .vid_h_sync
		input  wire [7:0] clocked_video_vid_color_encoding, //              .vid_color_encoding
		input  wire [7:0] clocked_video_vid_bit_width,      //              .vid_bit_width
		output wire       clocked_video_sof,                //              .sof
		output wire       clocked_video_sof_locked,         //              .sof_locked
		output wire       clocked_video_refclk_div,         //              .refclk_div
		output wire       clocked_video_clipping,           //              .clipping
		output wire       clocked_video_padding,            //              .padding
		output wire       clocked_video_overflow            //              .overflow
	);

	wire         cvi_core_dout_valid;         // cvi_core:av_st_dout_valid -> video_out:av_st_din_valid
	wire   [8:0] cvi_core_dout_data;          // cvi_core:av_st_dout_data -> video_out:av_st_din_data
	wire         cvi_core_dout_ready;         // video_out:av_st_din_ready -> cvi_core:av_st_dout_ready
	wire         cvi_core_dout_startofpacket; // cvi_core:av_st_dout_startofpacket -> video_out:av_st_din_startofpacket
	wire         cvi_core_dout_endofpacket;   // cvi_core:av_st_dout_endofpacket -> video_out:av_st_din_endofpacket
	wire         cvi_core_cmd_valid;          // cvi_core:av_st_cmd_valid -> video_out:av_st_cmd_valid
	wire  [32:0] cvi_core_cmd_data;           // cvi_core:av_st_cmd_data -> video_out:av_st_cmd_data
	wire         cvi_core_cmd_ready;          // video_out:av_st_cmd_ready -> cvi_core:av_st_cmd_ready
	wire         cvi_core_cmd_startofpacket;  // cvi_core:av_st_cmd_startofpacket -> video_out:av_st_cmd_startofpacket
	wire         cvi_core_cmd_endofpacket;    // cvi_core:av_st_cmd_endofpacket -> video_out:av_st_cmd_endofpacket

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (BPS != 8)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					bps_check ( .error(1'b1) );
		end
		if (NUMBER_OF_COLOUR_PLANES != 2)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					number_of_colour_planes_check ( .error(1'b1) );
		end
		if (COLOUR_PLANES_ARE_IN_PARALLEL != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					colour_planes_are_in_parallel_check ( .error(1'b1) );
		end
		if (SYNC_TO != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					sync_to_check ( .error(1'b1) );
		end
		if (MATCH_CTRLDATA_PKT_CLIP_BASIC != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					match_ctrldata_pkt_clip_basic_check ( .error(1'b1) );
		end
		if (MATCH_CTRLDATA_PKT_PAD_ADV != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					match_ctrldata_pkt_pad_adv_check ( .error(1'b1) );
		end
		if (OVERFLOW_HANDLING != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					overflow_handling_check ( .error(1'b1) );
		end
		if (USE_EMBEDDED_SYNCS != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					use_embedded_syncs_check ( .error(1'b1) );
		end
		if (USE_HDMI_DEPRICATION != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					use_hdmi_deprication_check ( .error(1'b1) );
		end
		if (GENERATE_VID_F != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					generate_vid_f_check ( .error(1'b1) );
		end
		if (USE_STD != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					use_std_check ( .error(1'b1) );
		end
		if (STD_WIDTH != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					std_width_check ( .error(1'b1) );
		end
		if (GENERATE_ANC != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					generate_anc_check ( .error(1'b1) );
		end
		if (ANC_DEPTH != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					anc_depth_check ( .error(1'b1) );
		end
		if (EXTRACT_TOTAL_RESOLUTION != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					extract_total_resolution_check ( .error(1'b1) );
		end
		if (INTERLACED != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					interlaced_check ( .error(1'b1) );
		end
		if (H_ACTIVE_PIXELS_F0 != 720)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					h_active_pixels_f0_check ( .error(1'b1) );
		end
		if (V_ACTIVE_LINES_F0 != 288)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					v_active_lines_f0_check ( .error(1'b1) );
		end
		if (V_ACTIVE_LINES_F1 != 288)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					v_active_lines_f1_check ( .error(1'b1) );
		end
		if (FIFO_DEPTH != 2048)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					fifo_depth_check ( .error(1'b1) );
		end
		if (CLOCKS_ARE_SAME != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					clocks_are_same_check ( .error(1'b1) );
		end
		if (USE_CONTROL != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					use_control_check ( .error(1'b1) );
		end
	endgenerate

	alt_vip_cvi_core #(
		.USE_EMBEDDED_SYNCS            (1),
		.USE_STD                       (0),
		.STD_WIDTH                     (1),
		.BPS                           (8),
		.GENERATE_ANC                  (0),
		.GENERATE_VID_F                (0),
		.CLOCKS_ARE_SAME               (0),
		.NUMBER_OF_COLOUR_PLANES       (2),
		.COLOUR_PLANES_ARE_IN_PARALLEL (0),
		.PIXELS_IN_PARALLEL            (1),
		.FIFO_DEPTH                    (2048),
		.FAMILY                        ("Cyclone V"),
		.INTERLACED                    (1),
		.H_ACTIVE_PIXELS               (720),
		.V_ACTIVE_LINES_F0             (288),
		.V_ACTIVE_LINES_F1             (288),
		.SYNC_TO                       (0),
		.MATCH_CTRLDATA_PKT_CLIP_BASIC (0),
		.MATCH_CTRLDATA_PKT_PAD_ADV    (0),
		.OVERFLOW_HANDLING             (0),
		.USE_CHANNEL                   (0),
		.CHANNEL_WIDTH                 (1),
		.ANC_DEPTH                     (1),
		.USE_CONTROL                   (0),
		.SEND_LINES                    (0),
		.EXTRACT_TOTAL_RESOLUTION      (1),
		.USE_HDMI_DEPRICATION          (0)
	) cvi_core (
		.is_clk                   (main_clock_clk),                       //    main_clock.clk
		.rst                      (main_reset_reset),                     //    main_reset.reset
		.av_st_dout_data          (cvi_core_dout_data),                   //          dout.data
		.av_st_dout_valid         (cvi_core_dout_valid),                  //              .valid
		.av_st_dout_ready         (cvi_core_dout_ready),                  //              .ready
		.av_st_dout_startofpacket (cvi_core_dout_startofpacket),          //              .startofpacket
		.av_st_dout_endofpacket   (cvi_core_dout_endofpacket),            //              .endofpacket
		.av_st_cmd_data           (cvi_core_cmd_data),                    //           cmd.data
		.av_st_cmd_valid          (cvi_core_cmd_valid),                   //              .valid
		.av_st_cmd_ready          (cvi_core_cmd_ready),                   //              .ready
		.av_st_cmd_startofpacket  (cvi_core_cmd_startofpacket),           //              .startofpacket
		.av_st_cmd_endofpacket    (cvi_core_cmd_endofpacket),             //              .endofpacket
		.vid_clk                  (clocked_video_vid_clk),                // clocked_video.vid_clk
		.vid_data                 (clocked_video_vid_data),               //              .vid_data
		.vid_de                   (clocked_video_vid_de),                 //              .vid_de
		.vid_datavalid            (clocked_video_vid_datavalid),          //              .vid_datavalid
		.vid_locked               (clocked_video_vid_locked),             //              .vid_locked
		.vid_f                    (clocked_video_vid_f),                  //              .vid_f
		.vid_v_sync               (clocked_video_vid_v_sync),             //              .vid_v_sync
		.vid_h_sync               (clocked_video_vid_h_sync),             //              .vid_h_sync
		.vid_color_encoding       (clocked_video_vid_color_encoding),     //              .vid_color_encoding
		.vid_bit_width            (clocked_video_vid_bit_width),          //              .vid_bit_width
		.sof                      (clocked_video_sof),                    //              .sof
		.sof_locked               (clocked_video_sof_locked),             //              .sof_locked
		.refclk_div               (clocked_video_refclk_div),             //              .refclk_div
		.clipping                 (clocked_video_clipping),               //              .clipping
		.padding                  (clocked_video_padding),                //              .padding
		.overflow                 (clocked_video_overflow),               //              .overflow
		.av_address               (5'b00000),                             //   (terminated)
		.av_read                  (1'b0),                                 //   (terminated)
		.av_readdata              (),                                     //   (terminated)
		.av_write                 (1'b0),                                 //   (terminated)
		.av_writedata             (32'b00000000000000000000000000000000), //   (terminated)
		.av_byteenable            (4'b0000),                              //   (terminated)
		.av_waitrequest           (),                                     //   (terminated)
		.status_update_int        (),                                     //   (terminated)
		.av_st_dout_channel       (),                                     //   (terminated)
		.vid_channel              (1'b0),                                 //   (terminated)
		.vid_hd_sdn               (1'b0),                                 //   (terminated)
		.vid_std                  (1'b0),                                 //   (terminated)
		.vid_total_sample_count   (16'b0000000000000000),                 //   (terminated)
		.vid_total_line_count     (16'b0000000000000000),                 //   (terminated)
		.vid_hdmi_duplication     (4'b0000)                               //   (terminated)
	);

	alt_vip_video_output_bridge #(
		.BITS_PER_SYMBOL              (8),
		.NUMBER_OF_COLOR_PLANES       (2),
		.COLOR_PLANES_ARE_IN_PARALLEL (0),
		.PIXELS_IN_PARALLEL           (1),
		.VIDEO_PROTOCOL_NO            (1),
		.READY_LATENCY_1              (1),
		.SOP_PRE_ALIGNED              (1),
		.MULTI_CONTEXT_SUPPORT        (0),
		.NO_CONCATENATION             (0),
		.PIPELINE_READY               (0),
		.SRC_WIDTH                    (0),
		.DST_WIDTH                    (0),
		.CONTEXT_WIDTH                (0),
		.TASK_WIDTH                   (1),
		.LOW_LATENCY_COMMAND_MODE     (1)
	) video_out (
		.clock                        (main_clock_clk),              //     main_clock.clk
		.reset                        (main_reset_reset),            //     main_reset.reset
		.av_st_cmd_valid              (cvi_core_cmd_valid),          //      av_st_cmd.valid
		.av_st_cmd_startofpacket      (cvi_core_cmd_startofpacket),  //               .startofpacket
		.av_st_cmd_endofpacket        (cvi_core_cmd_endofpacket),    //               .endofpacket
		.av_st_cmd_data               (cvi_core_cmd_data),           //               .data
		.av_st_cmd_ready              (cvi_core_cmd_ready),          //               .ready
		.av_st_din_valid              (cvi_core_dout_valid),         //      av_st_din.valid
		.av_st_din_startofpacket      (cvi_core_dout_startofpacket), //               .startofpacket
		.av_st_din_endofpacket        (cvi_core_dout_endofpacket),   //               .endofpacket
		.av_st_din_data               (cvi_core_dout_data),          //               .data
		.av_st_din_ready              (cvi_core_dout_ready),         //               .ready
		.av_st_vid_dout_data          (dout_0_data),                 // av_st_vid_dout.data
		.av_st_vid_dout_valid         (dout_0_valid),                //               .valid
		.av_st_vid_dout_startofpacket (dout_0_startofpacket),        //               .startofpacket
		.av_st_vid_dout_endofpacket   (dout_0_endofpacket),          //               .endofpacket
		.av_st_vid_dout_ready         (dout_0_ready)                 //               .ready
	);

endmodule

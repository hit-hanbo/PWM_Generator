`timescale 1ns / 1ps

module top_module(clk, Key_Up, Key_Switch, SEG_A, SEG_D, PWM1, PWM2, clk_1MHz, clk_1KHz, clk_50Hz);
	input clk, Key_Up, Key_Switch;
	output [3:0] SEG_A;
	output [7:0] SEG_D;
	output PWM1, PWM2;
	output clk_1MHz, clk_1KHz, clk_50Hz;
	wire clk_1MHz, clk_1KHz, clk_50Hz;
	reg [4:0] duty1 = 0;
	reg [4:0] duty2 = 0;
	reg Channel = 0;
	
	always @(posedge Key_Switch)
	begin
		Channel <= ~Channel;
	end

	always @(posedge Key_Up)
	begin
		if(Channel)
		begin
			if(duty1 == 5'd20)
				duty1 <= 5'd0;
			else
				duty1 <= duty1 + 5'd1;
		end
		else
		begin
			if(duty2 == 5'd20)
				duty2 <= 5'd0;
			else
				duty2 <= duty2 + 5'd1;
		end
	end
	
	clks clk_divs(clk, clk_1MHz, clk_1KHz, clk_50Hz);
	PWM_dual_generator pwm1(clk_1KHz, duty1, duty2, SEG_A, SEG_D, PWM1, PWM2, Channel);
endmodule

module clks(clk, clk_1MHz, clk_1KHz, clk_50Hz);
	input clk;
	output clk_1MHz, clk_1KHz, clk_50Hz;
	
	reg [7:0] clk_1MHz_cnt;
	reg [15:0] clk_1KHz_cnt;
	reg [7:0]  clk_50Hz_cnt;
	reg clk_1MHz, clk_1KHz, clk_50Hz;
	
	always @(posedge clk)
	begin
		if(clk_1MHz_cnt == 8'd24)
		begin
			clk_1MHz_cnt <= 8'd00;
			clk_1MHz <= ~clk_1MHz;
		end
		
		else
		begin
			clk_1MHz_cnt <= clk_1MHz_cnt + 8'd1;
		end
	end
	
	always @(posedge clk)
	begin	
	 if(clk_1KHz_cnt >= 16'd24999)
		begin
			clk_1KHz_cnt <= 16'd0;
			clk_1KHz <= ~clk_1KHz;
		end
		
		else
		begin
			clk_1KHz_cnt <= clk_1KHz_cnt + 16'd1;
		end
	end

	always @(posedge clk_1KHz)
	begin		
		if(clk_50Hz_cnt == 8'd9)
		begin
			clk_50Hz_cnt <= 8'd0;
			clk_50Hz <= ~clk_50Hz;
		end
		
		else
		begin
			clk_50Hz_cnt <= clk_50Hz_cnt + 8'd1;
		end
	end
endmodule


module SEG_display(clk, data, SEG_A, SEG_D);
	input clk;
	input [15:0] data;
	output [3:0] SEG_A;
	output [7:0] SEG_D;
	reg [3:0] SEG_A;
	reg [7:0] SEG_D;
	reg [3:0] num = 4'b0000;
	reg [1:0] pos = 2'b00;
	
	always @(posedge clk)
	begin
		case(pos)
			2'b00: begin num <= data[3:0]; SEG_A <= 4'b1110;end
			2'b01: begin num <= data[7:4]; SEG_A <= 4'b1101;end
			2'b10: begin num <= data[11:8];SEG_A <= 4'b1011;end
			2'b11: begin num <= data[15:12]; SEG_A <= 4'b0111;end
		endcase
		pos <= pos + 2'b01;
	end
	
	always 
	begin
		case(num)
			4'h0: SEG_D = 8'h03;
			4'h1: SEG_D = 8'h9f;
			4'h2: SEG_D = 8'h25;
			4'h3: SEG_D = 8'h0d;
			4'h4: SEG_D = 8'h99;
			4'h5: SEG_D = 8'h49;
			4'h6: SEG_D = 8'h41;
			4'h7: SEG_D = 8'h1b;
			4'h8: SEG_D = 8'h01;
			4'h9: SEG_D = 8'h09;
			4'ha: SEG_D = 8'h11;
			4'hb: SEG_D = 8'hc1;
			4'hc: SEG_D = 8'h63;
			4'hd: SEG_D = 8'h85;
			4'he: SEG_D = 8'h61;
			4'hf: SEG_D = 8'hfd;
			default: SEG_D = 8'hff;
		endcase
	end
endmodule

module PWM_dual_generator(clk, duty1, duty2, SEG_A, SEG_D, PWM1, PWM2, Channel);
	input clk, Channel;
	input [7:0] duty1;
	input [7:0] duty2;
	output PWM1, PWM2;
	
	output [3:0] SEG_A;
	output [7:0] SEG_D;
	
	reg [7:0] PWM1_CNT, PWM2_CNT;
	reg PWM1, PWM2;
	reg [15:0] SEG_data = 16'h0f00;
	reg [7:0] duty1_level;
	reg [7:0] duty2_level;
	parameter PWM_cycle = 5'd19;
	
	always
	begin
		if(Channel)
		begin
			SEG_data [15:12] = 4'ha;
		end
		else
		begin
			SEG_data [15:12] = 4'hb;
		end
	end
	
	always @(posedge clk)
	begin
		if(PWM1_CNT >= PWM_cycle)
		begin
			PWM1_CNT <= 0;
		end
		else
		begin
			PWM1_CNT <= PWM1_CNT + 1;
		end
		if(PWM2_CNT >= PWM_cycle)
		begin
			PWM2_CNT <= 0;
		end
		else
		begin
			PWM2_CNT <= PWM2_CNT + 1;
		end
	end
	
	always
	begin
		if(PWM1_CNT >= duty1)
		begin
			PWM1 <= 0;
		end
		else
		begin
			PWM1 <= 1;
		end
		if(PWM2_CNT >= duty2)
		begin
			PWM2 <= 0;
		end
		else
		begin
			PWM2 <= 1;
		end
	end

	always
	begin
		if(Channel)
		begin
			SEG_data [7:0] = duty1_level;
		end
		else
		begin
			SEG_data [7:0] = duty2_level;
		end
		case(duty1)
			5'd0:   duty1_level = 8'h00;
			5'd1:   duty1_level = 8'h01;
			5'd2:   duty1_level = 8'h02;
			5'd3:   duty1_level = 8'h03;
			5'd4:   duty1_level = 8'h04;
			5'd5:   duty1_level = 8'h05;
			5'd6:   duty1_level = 8'h06;
			5'd7:   duty1_level = 8'h07;
			5'd8:   duty1_level = 8'h08;
			5'd9:   duty1_level = 8'h09;
			5'd10:  duty1_level = 8'h10;
			5'd11:  duty1_level = 8'h11;
			5'd12:  duty1_level = 8'h12;
			5'd13:  duty1_level = 8'h13;
			5'd14:  duty1_level = 8'h14;
			5'd15:  duty1_level = 8'h15;
			5'd16:  duty1_level = 8'h16;
			5'd17:  duty1_level = 8'h17;
			5'd18:  duty1_level = 8'h18;
			5'd19:  duty1_level = 8'h19;
			5'd20:  duty1_level = 8'h20;
			default: duty1_level = 8'hff;
		endcase
		case(duty2)
			5'd0:   duty2_level = 8'h00;
			5'd1:   duty2_level = 8'h01;
			5'd2:   duty2_level = 8'h02;
			5'd3:   duty2_level = 8'h03;
			5'd4:   duty2_level = 8'h04;
			5'd5:   duty2_level = 8'h05;
			5'd6:   duty2_level = 8'h06;
			5'd7:   duty2_level = 8'h07;
			5'd8:   duty2_level = 8'h08;
			5'd9:   duty2_level = 8'h09;
			5'd10:  duty2_level = 8'h10;
			5'd11:  duty2_level = 8'h11;
			5'd12:  duty2_level = 8'h12;
			5'd13:  duty2_level = 8'h13;
			5'd14:  duty2_level = 8'h14;
			5'd15:  duty2_level = 8'h15;
			5'd16:  duty2_level = 8'h16;
			5'd17:  duty2_level = 8'h17;
			5'd18:  duty2_level = 8'h18;
			5'd19:  duty2_level = 8'h19;
			5'd20:  duty2_level = 8'h20;
			default: duty2_level = 8'hff;
		endcase
	end
	SEG_display seg7(clk, SEG_data, SEG_A, SEG_D);
endmodule

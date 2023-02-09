`timescale 1ns / 1ps 
module lab3_2(
			input[4:0] smartCode,
			input CLK, 
			input lab, //0:Digital, 1:Mera
			input [1:0] mode, //00:exit, 01:enter, 1x: idle 
			output reg [5:0] numOfStuInMera,
			output reg [5:0] numOfStuInDigital,
			output reg restrictionWarnMera,//1:show warning, 0:do not show warning
			output reg isFullMera, //1:full, 0:not full
			output reg isEmptyMera, //1: empty, 0:not empty
			output reg unlockMera,	//1:door is open, 0:closed
			output reg restrictionWarnDigital,//1:show warning, 0:do not show warning
			output reg isFullDigital, //1:full, 0:not full
			output reg isEmptyDigital, //1: empty, 0:not empty
			output reg unlockDigital //1:door is open, 0:closed
	);
	 
	// You may declare your variables below	
	
	initial begin
			numOfStuInMera=0;
			numOfStuInDigital=0;
			restrictionWarnMera=0;
			isFullMera=0;
			isEmptyMera=1'b1;
			unlockMera=0;		
			restrictionWarnDigital=0;
			isFullDigital=0;
			isEmptyDigital=1'b1;
			unlockDigital=0;
	end
	//Modify the lines below to implement your design
	always @(posedge CLK) begin
	unlockDigital=0;
	unlockMera=0;
	restrictionWarnDigital=0;
	restrictionWarnMera=0;
	if (mode==01) begin
		if (lab==0) begin
			if (numOfStuInDigital<30)begin
				if(numOfStuInDigital<15) begin
					unlockDigital=1;
					numOfStuInDigital=numOfStuInDigital+1;
					isEmptyDigital=0;
				end
				else begin
				    if(smartCode==1) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==1) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==4) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==7) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==8) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==11) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==13) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==14) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==16) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==19) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==21) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==22) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==25) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==26) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==28) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else if(smartCode==31) begin
				    unlockDigital=1;
				    numOfStuInDigital=numOfStuInDigital+1;
				    end
				    else begin
				    unlockDigital=0;
				    restrictionWarnDigital=1;
				    end
				    
				    
				end    
				if (numOfStuInDigital==30) begin
				isFullDigital=1;
				end
			end
			else begin
			isFullDigital=1;
			unlockDigital=0;
			end
		end		
		if (lab==1) begin
		    if (numOfStuInMera<30)begin
				if(numOfStuInMera<15) begin
					unlockMera=1;
					numOfStuInMera=numOfStuInMera+1;
					isEmptyMera=0;
				end
				else begin
				    if(smartCode==0) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==3) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==5) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==6) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==9) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==10) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==12) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==15) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==17) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==18) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==20) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==23) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==24) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==27) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==29) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else if(smartCode==30) begin
				    unlockMera=1;
				    numOfStuInMera=numOfStuInMera+1;
				    end
				    else begin
				    unlockMera=0;
				    restrictionWarnMera=1;
				    end
				    
				    
				end    
				if (numOfStuInMera==30) begin
				isFullMera=1;
				end
			end
			else begin
			isFullMera=1;
			unlockMera=0;
			end
				
		
		
		end
	end					
	if (mode==00) begin
	    if(lab==0) begin
	        if(numOfStuInDigital>0) begin
	        unlockDigital=1;
	        numOfStuInDigital=numOfStuInDigital-1;
	            if(numOfStuInDigital==0) begin
	            isEmptyDigital=1;
	            end
	        end
	        else begin
	        isEmptyDigital=1;
	        end
	    end   
	    else begin
	        if(numOfStuInMera>0) begin
	        unlockMera=1;
	        numOfStuInMera=numOfStuInMera-1;
	            if(numOfStuInMera==0) begin
	            isEmptyMera=1;
	            end
	        end
	        else begin
	        isEmptyMera=1;
	        end
	    end  
	end
			
	if (mode==10) begin
	unlockDigital=0;
	unlockMera=0;
	restrictionWarnDigital=0;
	restrictionWarnMera=0;
	end
	if (mode==11) begin
	unlockDigital=0;
	unlockMera=0;
	restrictionWarnDigital=0;
	restrictionWarnMera=0;
	end
end	
	
	
endmodule
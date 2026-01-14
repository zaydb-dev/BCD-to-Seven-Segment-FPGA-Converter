// Zayd Boutaleb
// BCD to 7-Segment Display Converter

module lab3_part1(
    input w, x, y, z,           // 4-bit BCD input 
    output a, b, c, d, e, f, g  // 7-segment outputs 
);

    // Data-flow modeling using simplified Boolean expressions derived from K-maps
    
    assign a = (x & ~y & ~z) | (~w & ~x & y & z);           // Segment a 
    assign b = (x & ~y & z) | (x & y & ~z);                 // Segment b 
    assign c = (~x & y & ~z);                               // Segment c 
    assign d = (~x & y & z) | (x & ~y & ~z) | (x & y & z);  // Segment d
    assign e = (x & ~y) | z;                                // Segment e 
    assign f = (~w & ~x & z) | (y & z) | (~x & y);          // Segment f
    assign g = (w & ~x & ~y) | (x & y & z);                 // Segment g 

endmodule

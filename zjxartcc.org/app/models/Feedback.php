<?php

class Feedback extends Eloquent {

    public static $Positions = [
     'CHI_CTR' => 'Enroute (Chicago Center)',
     'APP' => '-------- APPROACH/DEPARTURE --------',
     'ALO_APP' => '(ALO) Waterloo Approach/Departure', 
     'AZO_APP' => '(AZO) Kalamazoo Approach/Departure', 
     'CID_APP' => '(CID) Cedar Rapids Approach/Departure',
     'CMI_APP' => '(CMI) Champaign Approach/Departure',
     'FWA_APP' => '(FWA) Fort Wayne Approach/Departure',
     'GRR_APP' => '(GRR) Grand Rapids Approach.Departure',
     'MKE_APP' => '(MKE) Milwaukee Approach/Departure',
     'MKG_APP' => '(MKG) Muskegon Approach/Departure', 
     'MLI_APP' => '(MLI) Quad City Approach/Departure', 
     'MSN_APP' => '(MSN) Madison Approach/Departure',
     'PIA_APP' => '(PIA) Peoria Approach/Departure',
     'RFD_APP' => '(RFD) Rockford Approach/Departure',
     'SBN_APP' => '(SBN) South Bend Approach/Departure',
     'TWR' => '-------------- TOWER --------------',
     'ALO_TWR' => '(ALO) Waterloo Tower', 
     'AZO_TWR' => '(AZO) Kalamazoo Tower', 
     'CID_TWR' => '(CID) Cedar Rapids Tower',
     'CMI_TWR' => '(CMI) Champaign Tower',
     'FWA_TWR' => '(FWA) Fort Wayne Tower',
     'GRR_TWR' => '(GRR) Grand Rapids Tower',
     'MKE_TWR' => '(MKE) Milwaukee Tower',
     'MKG_TWR' => '(MKG) Muskegon Tower', 
     'MLI_TWR' => '(MLI) Quad City Tower', 
     'MSN_TWR' => '(MSN) Madison Tower',
     'PIA_TWR' => '(PIA) Peoria Tower',
     'RFD_TWR' => '(RFD) Rockford Tower',
     'SBN_TWR' => '(SBN) South Bend Tower',
        
     'ALO_TWR' => '(MLI) Quad City Tower',        
     'ARR_TWR' => '(ALO) Waterloo Tower', 
     'AZO_TWR' => '(AZO) Kalamazoo Tower', 
     'BTL_TWR' => '(CID) Cedar Rapids Tower',
     'DPA_TWR' => '(CMI) Champaign Tower',
     'ENW_TWR' => '(FWA) Fort Wayne Tower',
     'UGN_TWR' => '(GRR) Grand Rapids Tower',
     'GYY_TWR' => '(MKE) Milwaukee Tower',
     'OSH_TWR' => '(MKG) Muskegon Tower', 
     'JVL_TWR' => '(MSN) Madison Tower',
     'GUS_TWR' => '(PIA) Peoria Tower',
     'LAF_TWR' => '(RFD) Rockford Tower',
     'GND' => '-------------- GROUND --------------',
     'CAE_GND' => '(CAE) Columbia Ground', 
     'CHS_GND' => '(CHS) Charleston Ground', 
     'DAB_GND' => '(DAB) Daytona Beach Ground',
     'FLO_GND' => '(FLO) Florence Ground',
     'JAX_GND' => '(JAX) Jacksonville Ground',
     'MCO_GND' => '(MCO) Orlando Ground',
     'MYR_GND' => '(MYR) Myrtle Beach Ground',
     'NBC_GND' => '(NBC) Beaufort Ground', 
     'OZR_GND' => '(OZR) Cairns Ground', 
     'PAM_GND' => '(PAM) Tyndall Ground',
     'PNS_GND' => '(PNS) Pensacola Ground',
     'SAV_GND' => '(SAV) Savannah Ground',
     'TLH_GND' => '(TLH) Tallahassee Ground',
     'VLD_GND' => '(VLD) Valdosta Ground',
     'VPS_GND' => '(VPS) Eglin Ground',
     'DEL' => '------------ DELIVERY ------------',
     'CAE_DEL' => '(CAE) Columbia Clearance Delivery', 
     'CHS_DEL' => '(CHS) Charleston Clearance Delivery', 
     'DAB_DEL' => '(DAB) Daytona Beach Clearance Delivery',
     'FLO_DEL' => '(FLO) Florence Clearance Delivery',
     'JAX_DEL' => '(JAX) Jacksonville Clearance Delivery',
     'MCO_DEL' => '(MCO) Orlando Clearance Delivery',
     'MYR_DEL' => '(MYR) Myrtle Beach Clearance Delivery',
     'NBC_DEL' => '(NBC) Beaufort Clearance Delivery', 
     'OZR_DEL' => '(OZR) Cairns Clearance Delivery', 
     'PAM_DEL' => '(PAM) Tyndall Clearance Delivery',
     'PNS_DEL' => '(PNS) Pensacola Clearance Delivery',
     'SAV_DEL' => '(SAV) Savannah Clearance Delivery',
     'TLH_DEL' => '(TLH) Tallahassee Clearance Delivery',
     'VLD_DEL' => '(VLD) Valdosta Clearance Delivery',
     'VPS_DEL' => '(VPS) Eglin Clearance Delivery',
     'UNKNOWN' => 'Unknown'
    ];

    protected $table = 'feedback';

    protected $fillable = array('controller_id', 'position', 'level', 'comments', 'staff_comments', 'pilot_name', 'pilot_id', 'pilot_email', 'flight_callsign', 'status');

    public function controller() {
        return $this->hasOne('User', 'id', 'controller_id');
    }

    public function getLevelTextAttribute()
    {
    	switch($this->level)
    	{
    		case 0: return "Unsatisfactory";
    		case 1: return "Poor";
    		case 2: return "Fair";
    		case 3: return "Good";
    		case 4: return "Excellent";
    	}
    }

    public function getFeedbackPosAttribute()
    {
        foreach (Feedback::$Positions as $id => $Long) {
            if ($this->position == $id) {
                return $Long;
            }
        }

        return "";
    }

    public function sendPilotEmail()
    {
        return Mail::send('emails.feedbackpilot', ['feedback' => $this], function($message){
            $message->from('atm@zauartcc.org', 'ZAU ATM');
            $message->to($this->pilot_email);
            $message->subject('ZAU - Feedback Response');
        });
    }

    public function sendControllerEmail()
    {
        return Mail::send('emails.feedbackcontroller', ['feedback' => $this], function($message){
            $message->from('atm@zauartcc.org', 'ZAU ATM');
            $message->to($this->controller->email);
            $message->subject('ZAU - New Feedback');
        });
    }

}

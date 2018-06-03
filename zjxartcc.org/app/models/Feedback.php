<?php

class Feedback extends Eloquent {

    public static $Positions = [
     'JAX_CTR' => 'Enroute (Jacksonville Center)',
     'APP' => '-------- APPROACH/DEPARTURE --------',
     'CAE_APP' => '(CAE) Columbia Approach/Departure', 
     'CHS_APP' => '(CHS) Charleston Approach/Departure', 
     'DAB_APP' => '(DAB) Daytona Beach Approach/Departure',
     'FLO_APP' => '(FLO) Florence Approach/Departure',
     'JAX_APP' => '(JAX) Jacksonville Approach/Departure',
     'MCO_APP' => '(MCO) Orlando Approach.Departure',
     'MYR_APP' => '(MYR) Myrtle Beach Approach/Departure',
     'NBC_APP' => '(NBC) Beaufort Approach/Departure', 
     'OZR_APP' => '(OZR) Cairns Approach/Departure', 
     'PAM_APP' => '(PAM) Tyndall Approach/Departure',
     'PNS_APP' => '(PNS) Pensacola Approach/Departure',
     'SAV_APP' => '(SAV) Savannah Approach/Departure',
     'TLH_APP' => '(TLH) Tallahassee Approach/Departure',
     'VLD_APP' => '(VLD) Valdosta Approach/Departure',
     'VPS_APP' => '(VPS) Eglin Approach/Departure',
     'TWR' => '-------------- TOWER --------------',
     'CAE_TWR' => '(CAE) Columbia Tower', 
     'CHS_TWR' => '(CHS) Charleston Tower', 
     'DAB_TWR' => '(DAB) Daytona Beach Tower',
     'FLO_TWR' => '(FLO) Florence Tower',
     'JAX_TWR' => '(JAX) Jacksonville Tower',
     'MCO_TWR' => '(MCO) Orlando Tower',
     'MYR_TWR' => '(MYR) Myrtle Beach Tower',
     'NBC_TWR' => '(NBC) Beaufort Tower', 
     'OZR_TWR' => '(OZR) Cairns Tower', 
     'PAM_TWR' => '(PAM) Tyndall Tower',
     'PNS_TWR' => '(PNS) Pensacola Tower',
     'SAV_TWR' => '(SAV) Savannah Tower',
     'TLH_TWR' => '(TLH) Tallahassee Tower',
     'VLD_TWR' => '(VLD) Valdosta Tower',
     'VPS_TWR' => '(VPS) Eglin Tower',
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
            $message->from('no-reply@zjxartcc.org', 'ZJX No-Reply');
            $message->to($this->pilot_email);
            $message->subject('ZJX - Feedback Response');
        });
    }

    public function sendControllerEmail()
    {
        return Mail::send('emails.feedbackcontroller', ['feedback' => $this], function($message){
            $message->from('no-reply@zjxartcc.org', 'ZJX No-Reply');
            $message->to($this->controller->email);
            $message->subject('ZJX - New Feedback');
        });
    }

}
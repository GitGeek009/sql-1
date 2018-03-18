﻿create or replace function expand_road(n varchar) RETURNS varchar as $$
DECLARE
  r varchar;
BEGIN
    SELECT INTO r
	CASE upper(n)
		WHEN	'ACRD' THEN 'Access Road'
		WHEN	'AL' THEN 'Alley'
		WHEN    'ALY' THEN 'Alley'
		WHEN    'ARC' THEN 'Arcade'
		WHEN	'AV' THEN 'Avenue'
		WHEN    'AVE' THEN 'Avenue'
		WHEN    'BLF' THEN 'Bluff'
		WHEN    'BLVD' THEN 'Boulevard'
		WHEN    'BR' THEN 'Bridge'
		WHEN    'BRG' THEN 'Bridge'
		WHEN    'BYP' THEN 'Bypass'
		WHEN    'CIR' THEN 'Circle'
		WHEN	'CMNS' THEN 'Commons'
		WHEN	'CONC' THEN 'Concession'
		WHEN    'CRES' THEN 'Crescent'
		WHEN	'CRST' THEN 'Crest'
		WHEN    'CSWY' THEN 'Crossway'
		WHEN    'CT' THEN 'Court'
		WHEN    'CTR' THEN 'Center'
		WHEN    'CV' THEN 'Cove'
		WHEN    'DR' THEN 'Drive'
		WHEN	'ET' THEN 'ET'
		WHEN    'EXPWY' THEN 'Expressway'
		WHEN    'EXPY' THEN 'Expressway'
		WHEN	'EXT' THEN 'Extension'
		WHEN    'FMRD' THEN 'Farm to Market Road'
		WHEN    'FWY' THEN 'Freeway'
		WHEN    'GRD' THEN 'Grade'
		WHEN    'HBR' THEN 'Harbor'
		WHEN    'HOLW' THEN 'Hollow'
		WHEN    'HWY' THEN 'Highway'
		WHEN    'HTS' THEN 'Hights'
		WHEN	'KY' THEN 'Key'
		WHEN    'LNDG' THEN 'Landing'
		WHEN    'LN' THEN 'Lane'
		WHEN    'LOOP' THEN 'Loop'
		WHEN    'MALL' THEN 'Mall'
		WHEN    'MAL' THEN 'Mall'
		WHEN    'MTWY' THEN 'Motorway'
		WHEN    'OVAL' THEN 'Oval'
		WHEN    'OPAS' THEN 'Overpass'
		WHEN    'OVPS' THEN 'Overpass'
		WHEN	'PARK' THEN 'Park'
		WHEN    'PASS' THEN 'Pass'
		WHEN    'PATH' THEN 'Path'
		WHEN    'PIKE' THEN 'Pike'
		WHEN    'PKWY' THEN 'Parkway'
		WHEN    'PKY' THEN 'Parkway'
		WHEN    'PL' THEN 'Place'
		WHEN    'PLZ' THEN 'Plaza'
		WHEN	'PSGE' THEN 'Passage'
		WHEN	'PT' THEN 'Point'
		WHEN    'RAMP' THEN 'Ramp'
		WHEN    'RDG' THEN 'Ridge'
		WHEN    'RD' THEN 'Road'
		WHEN    'RMRD' THEN 'Ranch to Market Road'
		WHEN	'RNCH' THEN 'Ranch'
		WHEN    'ROW' THEN 'Row'
		WHEN    'RTE' THEN 'Route'
		WHEN    'RUE' THEN 'Rue'
		WHEN    'RUN' THEN 'Run'
		WHEN    'SKWY' THEN 'Skyway'
		WHEN    'SPUR' THEN 'Spur'
		WHEN    'SQ' THEN 'Square'
		WHEN	'SR' THEN 'State Route'
		WHEN	'STCT' THEN 'Street Court'
		WHEN    'ST' THEN 'Street'
		WHEN    'STR' THEN 'Stravenue'
		WHEN    'TER' THEN 'Terrace'
		WHEN    'TFWY' THEN 'Trafficway'
		WHEN    'THFR' THEN 'Thoroughfare'
		WHEN    'THWY' THEN 'Thruway'
		WHEN    'TPKE' THEN 'Turnpike'
		WHEN    'TRCE' THEN 'Trace'
		WHEN    'TRL'  THEN 'Trail'
		WHEN	'TRL' THEN 'Trail'
		WHEN    'TUNL' THEN 'Tunnel'
		WHEN    'UNP' THEN 'Underpass'
		WHEN	'VIA' THEN 'Viaduct'
		WHEN	'VIS' THEN 'Vista'
		WHEN    'WALK' THEN 'Walk'
		WHEN    'WAY' THEN 'Way'
		WHEN    'WKWY' THEN 'Walkway'
		WHEN    'XING' THEN 'Crossing'
		ELSE n
		
		END;
	RETURN r;
END;
$$ LANGUAGE plpgsql;

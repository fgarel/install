<?xml version="1.0" encoding="UTF-8"?>
<!--Sample XML file generated by XMLSpy v2016 rel. 2 sp1 (x64) (http://www.altova.com)-->
<PlanCorpsRueSimplifie xmlns="http://cnig.gouv.fr/pcrs" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" gml:id="SchemaPCRSv2"  xsi:schemaLocation="http://cnig.gouv.fr/pcrs CNIG_PCRS_v2.0.xsd">	
<featureMember>
		<Commune gml:id="Commune.67582">
			<codeINSEE>67582</codeINSEE>
			<geometrie>
				<gml:MultiSurface gml:id="MultiSurface.67582">
					<gml:surfaceMembers>
						<gml:Polygon gml:id="Polygon.67582" srsName="EPSG:3948">
							<gml:exterior>
								<gml:LinearRing>
									<gml:coordinates>2051681.367702676,7273982.3354081837 2051084.047,7273984.409 2050982.858,7273985.078 2050979.054,7273993.495 2050982.987,7274316.365 2050989.834,7274427.423 2050991.326,7274436.773 2051001.8609540344,7274464.8494248213 2051106.2674284296,7274485.0386759816 2051164.7448333399,7274493.8245426938 2051196.71,7274497.683 2051266.587,7274503.191 2051298.11,7274504.538 2051344.64,7274506.452 2051400.064,7274506.781 2051418.467,7274505.988 2051505.566,7274494.698 2051547.366,7274484.218 2051659.039,7274442.099 2051678.242,7274423.611 2051723.089,7274371.921 2051713.619,7274180.167 2051694.290208841,7274020.1531207385 2051681.367702676,7273982.3354081837</gml:coordinates>
								</gml:LinearRing>
							</gml:exterior>
						</gml:Polygon>
					</gml:surfaceMembers>
				</gml:MultiSurface>
			</geometrie>
			<reference/>
		</Commune>
	</featureMember>
	<featureMember>
		<EmpriseEchangePCRS gml:id="EmprisePublicationPCRS.0">
			<gml:boundedBy>
				<gml:Envelope srsName="EPSG:3948">
					<gml:lowerCorner>2050979.054 7273982.335408184</gml:lowerCorner>
					<gml:upperCorner>2051723.089 7274506.781</gml:upperCorner>
				</gml:Envelope>
			</gml:boundedBy>
			<geometrie>
				<gml:MultiSurface gml:id="EmprisePublicationPCRS.geom.0" srsName="EPSG:3948">
					<gml:surfaceMembers>
						<gml:Polygon gml:id="EmprisePublicationPCRS.geom.1">
							<gml:exterior>
								<gml:LinearRing>
									<gml:coordinates>2051681.367702676,7273982.3354081837 2051084.047,7273984.409 2050982.858,7273985.078 2050979.054,7273993.495 2050982.987,7274316.365 2050989.834,7274427.423 2050991.326,7274436.773 2051001.8609540344,7274464.8494248213 2051106.2674284296,7274485.0386759816 2051164.7448333399,7274493.8245426938 2051196.71,7274497.683 2051266.587,7274503.191 2051298.11,7274504.538 2051344.64,7274506.452 2051400.064,7274506.781 2051418.467,7274505.988 2051505.566,7274494.698 2051547.366,7274484.218 2051659.039,7274442.099 2051678.242,7274423.611 2051723.089,7274371.921 2051713.619,7274180.167 2051694.290208841,7274020.1531207385 2051681.367702676,7273982.3354081837</gml:coordinates>
								</gml:LinearRing>
							</gml:exterior>
						</gml:Polygon>
					</gml:surfaceMembers>
				</gml:MultiSurface>
			</geometrie>
			<idEmprise>String</idEmprise>
			<objet xlink:href="#AffleurantEnveloppePCRS.0"/>
			<objet xlink:href="#AffleurantSymbolePCRS.0"/>
			<objet xlink:href="#ArbrePCRS.0"/>
			<objet xlink:href="#BordurePCRS.992"/>
			<commune xlink:href="#Commune.67582">
			</commune>
			<gestionnaire>PCRS-GT3</gestionnaire>
			<datePublication>1967-08-13</datePublication>
			<type>couloir</type>
		</EmpriseEchangePCRS>
	</featureMember>
	<featureMember>
		<AffleurantEnveloppePCRS gml:id="AffleurantEnveloppePCRS.0">
			<idObjet>50130</idObjet>
			<thematique>10</thematique>
			<qualiteCategorisation>01</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>010</precisionAltimetrique>
			<producteur>ENEDIS</producteur>
			<gestionnaire>PCRS-GT3</gestionnaire>
			<nature>03</nature>
			<reseau>ELEC</reseau>
			<idSource>50130</idSource>
			<autreRepresentation xlink:href="#AffleurantSymbolePCRS.0"></autreRepresentation>
			<geometrie gml:id="Enveloppe.0" srsName="EPSG:3948" >
					<gml:exterior >
						<gml:LinearRing >
							<gml:coordinates >2051601.0101150721,7274380.1782374671 2051600.6292484482,7274378.9768194668 2051601.0948188482,7274378.8218365442 2051601.4768869441,7274380.0232545445 2051601.0101150721,7274380.1782374671</gml:coordinates>
						</gml:LinearRing>
					</gml:exterior>
			</geometrie>
		</AffleurantEnveloppePCRS>
	</featureMember>
	<featureMember>
		<AffleurantSymbolePCRS gml:id="AffleurantSymbolePCRS.0">
			<idObjet>919</idObjet>
			<thematique>10</thematique>
			<qualiteCategorisation>01</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>010</precisionAltimetrique>
			<producteur>ERDF</producteur>
			<gestionnaire>PCRS-GT3</gestionnaire>
			<nature>06</nature>
			<reseau>GAZ</reseau>
			<idSource>919</idSource>
			<geometrie>
				<gml:Point srsName="EPSG:3948" gml:id="Point.AffleurantSymbolePCRS.0">
					<gml:coordinates>2051001.8900949121,7274290.4010759983</gml:coordinates>
				</gml:Point>
			</geometrie>
			<reference>REF-SUP_CATENAIRE</reference>
			<angleRotation>0.0</angleRotation>
			<longueur>1.0</longueur>
			<largeur>1.0</largeur>
		</AffleurantSymbolePCRS>
	</featureMember>
	<featureMember>
		<ArbrePCRS gml:id="ArbrePCRS.0">
			<idObjet>123500</idObjet>
			<thematique>06</thematique>
			<qualiteCategorisation>02</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>999</precisionAltimetrique>
			<producteur>ENEDIS</producteur>
			<geometrie>
				<gml:Point srsName="EPSG:3948" gml:id="Point.ArbrePCRS.0">
					<gml:coordinates>2051686.036,7274455.338</gml:coordinates>
				</gml:Point>
			</geometrie>
			<reference>REF-ARBRE</reference>
			<type>01</type>
		</ArbrePCRS>
	</featureMember>
	<featureMember>
		<BordurePCRS gml:id="BordurePCRS.992">
			<idObjet>161654</idObjet>
			<thematique>03</thematique>
			<qualiteCategorisation>02</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>999</precisionAltimetrique>
			<producteur>Ville de Strasbourg</producteur>
			<geometrie>
				<gml:Curve gml:id="Line.BordurePCRS.992" srsName="EPSG:3948">
					<gml:segments>
						<gml:LineStringSegment>
							<gml:coordinates>2051138.426,7274079.63 2051137.697,7274081.643</gml:coordinates>
						</gml:LineStringSegment>
					</gml:segments>
				</gml:Curve>
			</geometrie>
			<nature>01</nature>
		</BordurePCRS>
	</featureMember>
	<featureMember>
		<ChangementRevetementPCRS gml:id="ChangementRevetementPCRS.993">
			<idObjet>314037</idObjet>
			<thematique>02</thematique>
			<qualiteCategorisation>03</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>999</precisionAltimetrique>
			<producteur>Ville de Strasbourg</producteur>
			<geometrie>
				<gml:Curve srsName="EPSG:3948" gml:id="Point.ChangementRevetementPCRS.993">
					<gml:segments>
						<gml:LineStringSegment>
							<gml:coordinates>2051151.315,7274086.986 2051137.697,7274081.643</gml:coordinates>
						</gml:LineStringSegment>
					</gml:segments>
				</gml:Curve>
			</geometrie>
		</ChangementRevetementPCRS>
	</featureMember>
	<featureMember>
		<FacadePCRS gml:id="FacadePCRS.0">
			<idObjet>142341</idObjet>
			<thematique>02</thematique>
			<qualiteCategorisation>02</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>999</precisionAltimetrique>
			<producteur>Ville de Strasbourg</producteur>
			<geometrie>
				<gml:Curve srsName="EPSG:3948" gml:id="Curve.FacadePCRS.0">
					<gml:segments>
						<gml:LineStringSegment>
							<gml:coordinates>2051719.0520053131,7274359.9127305597 2051720.195,7274363.887 2051720.671,7274363.764 2051723.089,7274371.921 2051719.138,7274373.091 2051719.823,7274375.525 2051716.049,7274376.625 2051716.71,7274378.852 2051702.877,7274382.951 2051701.689467896,7274378.9207949499</gml:coordinates>
						</gml:LineStringSegment>
					</gml:segments>
				</gml:Curve>
			</geometrie>
		</FacadePCRS>
	</featureMember>
	<featureMember>
		<MurPCRS gml:id="MurPCRS.0">
			<idObjet>123883</idObjet>
			<thematique>02</thematique>
			<qualiteCategorisation>02</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>999</precisionAltimetrique>
			<producteur>Ville de Strasbourg</producteur>
			<geometrie>
				<gml:Curve srsName="EPSG:3948" gml:id="Curve.MurPCRS.0">
					<gml:segments>
						<gml:LineStringSegment>
							<gml:coordinates>2051196.665,7274499.168 2051196.593,7274497.8 2051196.792,7274497.789 2051196.864,7274499.157 2051196.665,7274499.168</gml:coordinates>
						</gml:LineStringSegment>
					</gml:segments>
				</gml:Curve>
			</geometrie>
			<typeMur>04</typeMur>
		</MurPCRS>
	</featureMember>
	<featureMember>
		<PilierParticulierPCRS gml:id="PilierParticulierPCRS.200">
			<idObjet>25206</idObjet>
			<thematique>05</thematique>
			<qualiteCategorisation>02</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>999</precisionAltimetrique>
			<producteur>Ville de Strasbourg</producteur>
			<geometrie>
				<gml:Curve srsName="EPSG:3948" gml:id="LineString.PilierParticulierPCRS.200">
					<gml:segments>
						<gml:LineStringSegment>
							<gml:coordinates>2051241.098,7274096.622 2051241.265,7274096.963 2051240.977,7274097.104 2051240.811,7274096.762 2051241.098,7274096.622</gml:coordinates>
						</gml:LineStringSegment>
					</gml:segments>
				</gml:Curve>
			</geometrie>
		</PilierParticulierPCRS>
	</featureMember>
	<featureMember>
		<PilierRegulierPCRS gml:id="PilierRegulierPCRS.54">
			<idObjet>25206</idObjet>
			<thematique>05</thematique>
			<qualiteCategorisation>02</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>999</precisionAltimetrique>
			<producteur>Ville de Strasbourg</producteur>
			<pointLeve xlink:href="#PointLeve.01"/>
			<geometrie>
				<gml:Point srsName="EPSG:3948" gml:id="Point.PilierRegulierPCRS.54">
					<gml:pos>7274134.884 2051488.862
						</gml:pos>
				</gml:Point>
			</geometrie>
			<section>01</section>
			<angleRotation>12</angleRotation>
			<longueur>10</longueur>
			<largeur>15</largeur>
		</PilierRegulierPCRS>
	</featureMember>
	<featureMember>
		<PointLevePCRS gml:id="PointLeve.01">
			<geometrie>
				<gml:Point gml:id="Point.PointLeve.01" srsName="EPSG:3948">
					<gml:pos>2051488.774 7274134.884</gml:pos>
				</gml:Point>
			</geometrie>
			<numeroPoint>12231</numeroPoint>
			<precisionXY>010</precisionXY>
			<producteur>GT3</producteur>
		</PointLevePCRS>
	</featureMember>
	<featureMember>
		<PointCanevasPCRS gml:id="PointCanevas.01">
			<idObjet>112</idObjet>
			<thematique>00</thematique>
			<qualiteCategorisation>02</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>010</precisionAltimetrique>
			<producteur>Ville de Strasbourg</producteur>
			<geometrie>
				<gml:Point gml:id="Point.PointCanevas.01" srsName="EPSG:3948">
					<gml:pos>2051488.874 7274135.894</gml:pos>
				</gml:Point>
			</geometrie>
		</PointCanevasPCRS>
	</featureMember>
	<featureMember>
		<RailPCRS gml:id="RailPCRS.2">
			<idObjet>1036</idObjet>
			<thematique>02</thematique>
			<qualiteCategorisation>02</qualiteCategorisation>
			<precisionPlanimetrique>010</precisionPlanimetrique>
			<precisionAltimetrique>999</precisionAltimetrique>
			<producteur>Ville de Strasbourg</producteur>
			<geometrie>
				<gml:Curve srsName="EPSG:3948" gml:id="Point.RailPCRS.2">
					<gml:segments>
						<gml:LineStringSegment>
							<gml:coordinates>2051314.615,7274179.207 2051312.7631103571,7274179.9371567369 2051310.9418111839,7274180.7405827958 2051309.154,7274181.616 2051307.4075490383,7274182.559169325 2051305.699982093,7274183.5710361442 2051304.034,7274184.65 2051302.334689464,7274185.7555751521 2051300.7360902168,7274187.0023442386 2051299.249901528,7274188.3811828438 2051297.887,7274189.882 2051296.6574695921,7274191.4936548322 2051295.5701720584,7274193.2044909997 2051294.6330632309,7274195.0019901982 2051293.853,7274196.873 2051293.2696545955,7274198.484973344 2051292.8143884183,7274200.1376931127 2051292.49,7274201.821 2051292.2984690792,7274203.5247427132 2051292.241018,7274205.2382545155 2051292.318,7274206.951 2051292.5505006721,7274208.9405860547 2051292.869368749,7274210.9181685131 2051293.274,7274212.88 2051293.7636272276,7274214.8223613501 2051294.3373229303,7274216.7415736038 2051294.994,7274218.634</gml:coordinates>
						</gml:LineStringSegment>
					</gml:segments>
				</gml:Curve>
			</geometrie>
		</RailPCRS>
	</featureMember>
	<featureMember>
		<RasterPCRS gml:id="Raster.15">
			<nomImage>ORTHO223234556.jp2</nomImage>
			<typeImage>image/jp2</typeImage>
			<geometrie>
				<gml:PolygonPatch>
					<gml:exterior>
						<gml:LinearRing>
							<gml:coordinates>2051681.367702676,7273982.3354081837 2051084.047,7273984.409 2050982.858,7273985.078 2050979.054,7273993.495 2050982.987,7274316.365 2050989.834,7274427.423 2050991.326,7274436.773 2051001.8609540344,7274464.8494248213 2051106.2674284296,7274485.0386759816 2051164.7448333399,7274493.8245426938 2051196.71,7274497.683 2051266.587,7274503.191 2051298.11,7274504.538 2051344.64,7274506.452 2051400.064,7274506.781 2051418.467,7274505.988 2051505.566,7274494.698 2051547.366,7274484.218 2051659.039,7274442.099 2051678.242,7274423.611 2051723.089,7274371.921 2051713.619,7274180.167 2051694.290208841,7274020.1531207385 2051681.367702676,7273982.3354081837</gml:coordinates>
						</gml:LinearRing>
					</gml:exterior>
				</gml:PolygonPatch>
			</geometrie>
			<idPCRS>15</idPCRS>
			<resolution>1</resolution>
			<dateAcquisition>2017-02-22</dateAcquisition>
			<dateRecette>2017-04-15</dateRecette>
			<precisionPlanimetriqueIN>005</precisionPlanimetriqueIN>
			<precisionPlanimetriqueOUT>010</precisionPlanimetriqueOUT>
			<descriptionElementsQualite>Devers maximal de ... et aérotrigulation...</descriptionElementsQualite>
			<masque xlink:href=""/>
		</RasterPCRS>
	</featureMember>
	<featureMember>
		<MasqueOpacitePCRS gml:id="Masque.01">
			<idHabillage>Masque.01</idHabillage>
			<thematique>10</thematique>
			<transparence>10</transparence>
			<geometrie>
				<gml:Polygon gml:id="Masque.01.geom.0" srsName="EPSG:3948">
					<gml:exterior>
						<gml:LinearRing>
							<gml:coordinates>2051681.367702676,7273982.3354081837 2051084.047,7273984.409 2050982.858,7273985.078 2050979.054,7273993.495 2050982.987,7274316.365 2050989.834,7274427.423 2050991.326,7274436.773 2051001.8609540344,7274464.8494248213 2051106.2674284296,7274485.0386759816 2051164.7448333399,7274493.8245426938 2051196.71,7274497.683 2051266.587,7274503.191 2051298.11,7274504.538 2051344.64,7274506.452 2051400.064,7274506.781 2051418.467,7274505.988 2051505.566,7274494.698 2051547.366,7274484.218 2051659.039,7274442.099 2051678.242,7274423.611 2051723.089,7274371.921 2051713.619,7274180.167 2051694.290208841,7274020.1531207385 2051681.367702676,7273982.3354081837</gml:coordinates>
						</gml:LinearRing>
					</gml:exterior>
				</gml:Polygon>
			</geometrie>
			<raster xlink:href="#Raster.15"/>
		</MasqueOpacitePCRS>
	</featureMember>
</PlanCorpsRueSimplifie>

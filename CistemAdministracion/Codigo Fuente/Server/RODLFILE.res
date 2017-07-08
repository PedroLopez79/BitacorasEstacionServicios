        ��  ��                  � 0   ��
 R O D L F I L E                     <?xml version="1.0" encoding="utf-8"?>
<Library Name="LibraryEmpresas" UID="{BE2DC080-021D-4410-AE12-47322D2F0A40}" DontCodeGen="1" Version="3.0">
<Services>
<Service Name="DataAbstractService" UID="{709489E3-3AFE-4449-84C3-305C2862B348}" Abstract="1" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Interfaces>
<Interface Name="Default" UID="{4C2EC238-4FB4-434E-8CFF-ED25EEFF1525}">
<Documentation><![CDATA[   Service WinFormsDAServerService. This service has been automatically generated using the RODL template you can find in the Templates directory.]]></Documentation>
<Operations>
<Operation Name="GetSchema" UID="{684994AA-6829-4497-A054-0ACB6647E24F}">
<Parameters>
<Parameter Name="Result" DataType="Utf8String" Flag="Result">
</Parameter>
<Parameter Name="aFilter" DataType="Utf8String" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GetData" UID="{7C394D25-2B02-4CC9-838B-7099B06F857C}">
<Parameters>
<Parameter Name="Result" DataType="Binary" Flag="Result">
</Parameter>
<Parameter Name="aTableNameArray" DataType="StringArray" Flag="In" >
</Parameter>
<Parameter Name="aTableRequestInfoArray" DataType="TableRequestInfoArray" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="UpdateData" UID="{8FBDE1AF-A3DA-487A-9E08-FB7F446F8DC6}">
<Parameters>
<Parameter Name="Result" DataType="Binary" Flag="Result">
</Parameter>
<Parameter Name="aDelta" DataType="Binary" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ExecuteCommand" UID="{BEBB190E-A511-4808-9424-5594CB5B5F58}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="aCommandName" DataType="Utf8String" Flag="In" >
</Parameter>
<Parameter Name="aParameterArray" DataType="DataParameterArray" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ExecuteCommandEx" UID="{B2C8E6DA-F233-4365-9F56-1590C0583604}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="aCommandName" DataType="Utf8String" Flag="In" >
</Parameter>
<Parameter Name="aInputParameters" DataType="DataParameterArray" Flag="In" >
</Parameter>
<Parameter Name="aOutputParameters" DataType="DataParameterArray" Flag="Out" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GetTableSchema" UID="{CFD45BA0-FD52-40C5-951A-08FF71CF5059}">
<Parameters>
<Parameter Name="Result" DataType="Utf8String" Flag="Result">
</Parameter>
<Parameter Name="aTableNameArray" DataType="StringArray" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GetCommandSchema" UID="{15345F7D-9962-485C-B383-BCB0397DD50A}">
<Parameters>
<Parameter Name="Result" DataType="Utf8String" Flag="Result">
</Parameter>
<Parameter Name="aCommandNameArray" DataType="StringArray" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="SQLGetData" UID="{F3A01874-E954-48F5-9DB3-315F248A0E08}">
<Parameters>
<Parameter Name="Result" DataType="Binary" Flag="Result">
</Parameter>
<Parameter Name="aSQLText" DataType="Utf8String" Flag="In" >
</Parameter>
<Parameter Name="aIncludeSchema" DataType="Boolean" Flag="In" >
</Parameter>
<Parameter Name="aMaxRecords" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="SQLGetDataEx" UID="{025A6E0D-8583-44C7-8F5F-6ADE175E446F}">
<Parameters>
<Parameter Name="Result" DataType="Binary" Flag="Result">
</Parameter>
<Parameter Name="aSQLText" DataType="Utf8String" Flag="In" >
</Parameter>
<Parameter Name="aIncludeSchema" DataType="Boolean" Flag="In" >
</Parameter>
<Parameter Name="aMaxRecords" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="aDynamicWhereXML" DataType="Widestring" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="SQLExecuteCommand" UID="{C2525BDB-0CBA-4258-8016-37EB75C24BD7}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="aSQLText" DataType="Utf8String" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="SQLExecuteCommandEx" UID="{284F296C-A86B-410E-8A91-72D6E0DA86B9}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="aSQLText" DataType="Utf8String" Flag="In" >
</Parameter>
<Parameter Name="aDynamicWhereXML" DataType="Widestring" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GetDatasetScripts" UID="{1025B82B-49FD-4D62-ACE1-908BAA8D330C}">
<Parameters>
<Parameter Name="Result" DataType="Utf8String" Flag="Result">
</Parameter>
<Parameter Name="DatasetNames" DataType="Utf8String" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="RegisterForDataChangeNotification" UID="{3BFC17C7-6676-4B43-A90D-ABEC10072B48}">
<Parameters>
<Parameter Name="aTableName" DataType="Utf8String" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="UnregisterForDataChangeNotification" UID="{F3D1B5FB-42FA-46B4-8528-16CF915D4B4D}">
<Parameters>
<Parameter Name="aTableName" DataType="Utf8String" Flag="In" >
</Parameter>
</Parameters>
</Operation>
</Operations>
</Interface>
</Interfaces>
</Service>
<Service Name="SimpleLoginService" UID="{4DD93F46-E044-47B9-A0F6-B45CD60A233A}" Ancestor="BaseLoginService" Abstract="1" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Interfaces>
<Interface Name="Default" UID="{B186853B-168B-4E33-B798-467444BFC8C6}">
<Operations>
<Operation Name="Login" UID="{87E7258D-59B1-4E76-8619-BF46780562F0}">
<Parameters>
<Parameter Name="Result" DataType="Boolean" Flag="Result">
</Parameter>
<Parameter Name="aUserID" DataType="Utf8String" Flag="In" >
</Parameter>
<Parameter Name="aPassword" DataType="Utf8String" Flag="In" >
</Parameter>
<Parameter Name="aUserInfo" DataType="UserInfo" Flag="Out" >
</Parameter>
</Parameters>
</Operation>
</Operations>
</Interface>
</Interfaces>
</Service>
<Service Name="BaseLoginService" UID="{745EED14-581E-47FC-B2BB-D4FAA6005B4F}" Abstract="1" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Interfaces>
<Interface Name="Default" UID="{C349DB54-9DFB-454E-AD23-6F2166A624A6}">
<Operations>
<Operation Name="LoginEx" UID="{2D036C75-65DC-42B0-B5AB-EC414F54B106}">
<Parameters>
<Parameter Name="Result" DataType="Boolean" Flag="Result">
</Parameter>
<Parameter Name="aLoginString" DataType="Utf8String" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="Logout" UID="{866D0287-09D7-4368-AA5A-D4718CF698AF}">
<Parameters>
</Parameters>
</Operation>
</Operations>
</Interface>
</Interfaces>
</Service>
<Service Name="MultiDbLoginService" UID="{78596023-A368-4490-8BE4-224987698117}" Ancestor="BaseLoginService" Abstract="1" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Interfaces>
<Interface Name="Default" UID="{2C6D5764-01CE-447A-8264-27210B2C7371}">
<Operations>
<Operation Name="Login" UID="{64F02AE6-1EFD-40FD-979E-D0CC21320CCB}">
<Parameters>
<Parameter Name="Result" DataType="Boolean" Flag="Result">
</Parameter>
<Parameter Name="aUserID" DataType="Utf8String" Flag="In" >
</Parameter>
<Parameter Name="aPassword" DataType="Utf8String" Flag="In" >
</Parameter>
<Parameter Name="aConnectionName" DataType="Utf8String" Flag="In" >
</Parameter>
<Parameter Name="aUserInfo" DataType="UserInfo" Flag="Out" >
</Parameter>
</Parameters>
</Operation>
</Operations>
</Interface>
</Interfaces>
</Service>
<Service Name="MultiDbLoginServiceV5" UID="{059B0FA5-5980-4811-8C8E-790402D62C62}" Ancestor="MultiDbLoginService" Abstract="1" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Interfaces>
<Interface Name="Default" UID="{5A78AB01-2097-4473-A4D5-78980FFD90E4}">
<Operations>
<Operation Name="GetConnectionNames" UID="{BF3AE66F-A496-4B4D-AEDC-A484F8E2B20E}">
<Parameters>
<Parameter Name="Result" DataType="StringArray" Flag="Result">
</Parameter>
</Parameters>
</Operation>
<Operation Name="GetDefaultConnectionName" UID="{BA63F191-03A5-48FB-99D7-F48B150CB1C6}">
<Parameters>
<Parameter Name="Result" DataType="Utf8String" Flag="Result">
</Parameter>
</Parameters>
</Operation>
</Operations>
</Interface>
</Interfaces>
</Service>
<Service Name="ServiceEmpresas" UID="{83D4FEFA-78E1-4D69-8D65-FA277E16F7C4}" Ancestor="DataAbstractService">
<Interfaces>
<Interface Name="Default" UID="{762597B5-7713-4971-8C5A-32F68BB623AB}">
<Operations>
<Operation Name="AbreDataSetReporte" UID="{715DFA1F-2BD7-4281-853B-B0F88DA15CBE}">
<Parameters>
<Parameter Name="Result" DataType="Binary" Flag="Result">
</Parameter>
<Parameter Name="SQL" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Parametros" DataType="TParametros" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ActualizaCupon" UID="{6A2F2FE7-9D30-4D19-ACDB-789701C5B13E}">
<Parameters>
<Parameter Name="Barras" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="DiaConsumo" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="EjercicioConsumo" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="FechaConsumo" DataType="DateTime" Flag="In" >
</Parameter>
<Parameter Name="PeriodoConsumo" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Secuencia" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Ticket" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Liquidacion" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ActualizaCuponConReferencia" UID="{CC659FD3-8E0D-4794-81D7-C80397A1FB9F}">
<Parameters>
<Parameter Name="Barras" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="DiaConsumo" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="EjercicioConsumo" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="FechaConsumo" DataType="DateTime" Flag="In" >
</Parameter>
<Parameter Name="PeriodoConsumo" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Secuencia" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Ticket" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Referencia" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ActualizaLiquidacionCorte" UID="{4B6E22B9-7E5F-4432-8BD3-AC7E11AE9B9C}">
<Parameters>
<Parameter Name="Liquidacion" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Secuencia" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="AgrupacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ActualizarStatusValeCredito" UID="{5ABC71C4-B8FD-4564-9E30-1A95F3C20D4B}">
<Parameters>
<Parameter Name="CarteraValeCreditoID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Status" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="FacturaID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ActualizaStatusCupon" UID="{18851B84-E652-422D-8ABF-FC82B497E6E5}">
<Parameters>
<Parameter Name="Barras" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="DiaConsumo" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="EjercicioConsumo" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="FechaConsumo" DataType="DateTime" Flag="In" >
</Parameter>
<Parameter Name="LiquidacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="PeriodoConsumo" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Secuencia" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GeneraFactura" UID="{1FC3F289-CA2F-45C9-B14F-E577B335BFB1}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="FechaCorte" DataType="DateTime" Flag="In" >
</Parameter>
<Parameter Name="ClienteID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="UsuarioID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="BuscaReporte" UID="{A55653C3-F1E4-47F2-8030-7A36A9416CFC}">
<Parameters>
<Parameter Name="Result" DataType="TReporte" Flag="Result">
</Parameter>
<Parameter Name="Nombre" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="TipoTemplate" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="CambiaFolioFactura" UID="{BE4F9996-B799-49C1-AB67-B472643CD18D}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Folio" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="NewSerie" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="NewFolio" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="CancelaFactura" UID="{BAEA726F-ABB6-4065-B92F-FC62C6C4ED43}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="Folio" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Fecha" DataType="DateTime" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="UsuarioID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="CierraLiquidacion" UID="{50C562EF-61E8-4EA2-9C0B-5AFFE7AABFB2}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="LiquidacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="CostoProducto" UID="{52889D87-BC65-497D-BDF9-817DAF568AE8}">
<Parameters>
<Parameter Name="Result" DataType="Double" Flag="Result">
</Parameter>
<Parameter Name="ProductoID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="DatosCliente" UID="{8ACBBA19-8238-498B-93AC-249677B24614}">
<Parameters>
<Parameter Name="Result" DataType="TDatosCliente" Flag="Result">
</Parameter>
<Parameter Name="ClienteID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Referencia" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="Existencia" UID="{AC437883-CEAF-4A09-BF1C-BA7562EA9B96}">
<Parameters>
<Parameter Name="Result" DataType="Double" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="AlmacenID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="ProductoID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Fecha" DataType="DateTime" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="FacturaExpress" UID="{1D90F97F-B2B2-42F0-A3AB-C767A230791D}">
<Parameters>
<Parameter Name="Result" DataType="TFacturaExpress" Flag="Result">
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Folio" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="FacturaID" UID="{0BD9502C-E8EE-4C5C-A648-BE830CA01119}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Folio" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="FacturaYLiquidacion" UID="{7C0F542D-FE79-40E1-B110-9993A8F324E8}">
<Parameters>
<Parameter Name="Result" DataType="Boolean" Flag="Result">
</Parameter>
<Parameter Name="ClienteID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="Fecha" UID="{7A0F4F1E-91E5-4A33-B956-306E6F8324D4}">
<Parameters>
<Parameter Name="Result" DataType="DateTime" Flag="Result">
</Parameter>
</Parameters>
</Operation>
<Operation Name="Folio" UID="{5CDCA5BF-83BD-4494-92DE-E33E9CE772C4}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="Campo" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="FolioActual" UID="{42D83C56-1098-4525-ADB2-113A8F151460}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="Campo" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="FolioActual2" UID="{4D4010EC-1CAC-463C-B4F7-0D7FA479F799}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="Campo" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GuardaAccesos" UID="{810F1AB2-6A5A-4A31-B0B0-29FDD072FA44}">
<Parameters>
<Parameter Name="UsuarioID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Lista" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GuardaConsumoExpress" UID="{305FC7E1-DD80-4186-81E2-3C2886D7D251}">
<Parameters>
<Parameter Name="Result" DataType="Boolean" Flag="Result">
</Parameter>
<Parameter Name="Consumo" DataType="TConsumoExpress" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GuardaLimiteFactura" UID="{DAAA3BC6-F502-45B3-953D-628409A4E905}">
<Parameters>
<Parameter Name="UsuarioID" DataType="Int64" Flag="In" >
</Parameter>
<Parameter Name="Cantidad" DataType="Double" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GuardarDatosFactura" UID="{49B3A261-E66B-46C5-980E-4B756F616E7A}">
<Parameters>
<Parameter Name="DatosFactura" DataType="TDatosFactura" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GuardarDatosLiquidacion" UID="{7A6B7F7B-FFD0-4072-AEF7-7A72D461B1D6}">
<Parameters>
<Parameter Name="DatosLiquidacion" DataType="TDatosLiquidacion" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GuardarDatosReciboPago" UID="{A118E8E6-E70E-449A-B94A-6B92391EBFAC}">
<Parameters>
<Parameter Name="DatosReciboPago" DataType="TDatosReciboPago" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GuardarFacturaExpress" UID="{DF232927-057C-463E-B863-876EC266083F}">
<Parameters>
<Parameter Name="Result" DataType="TFacturaExpress" Flag="Result">
</Parameter>
<Parameter Name="ClienteID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="TicketID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="InsertaDeposito" UID="{6084D539-214B-4E6D-868C-A7989735FC06}">
<Parameters>
<Parameter Name="DepositoID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Cantidad" DataType="Double" Flag="In" >
</Parameter>
<Parameter Name="Usuario" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Fecha" DataType="DateTime" Flag="In" >
</Parameter>
<Parameter Name="Secuencia" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Descripcion" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Ejercicio" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Periodo" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Dia" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="InsertaProductoPrecio" UID="{0D506BCC-F20F-4CD0-B2B1-6129C6D37903}">
<Parameters>
<Parameter Name="ProductoID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Precio" DataType="Double" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="Login" UID="{2CF09414-081B-4BC1-9D3F-B02E22473B4E}">
<Parameters>
<Parameter Name="Result" DataType="TLoginInfo" Flag="Result">
</Parameter>
<Parameter Name="Usuario" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Clave" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ModificarFolioActual" UID="{1749EA83-9F01-492F-B9B5-376FB628C200}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="Campo" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Folio" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ObtenerStatusCupon" UID="{59E46A2D-175F-4579-9F39-FDA138C686D3}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="Barras" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ObtenerTipoCambioIDPorEstacion" UID="{8490155B-8D33-4448-ABE8-5A547A7D945F}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ObtenerTipoCambioPorEstacion" UID="{0E779BDF-2218-40DD-9861-35C30FB57661}">
<Parameters>
<Parameter Name="Result" DataType="Double" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="PrecioProducto" UID="{1E51878D-4D45-4256-8269-660BEEB36D09}">
<Parameters>
<Parameter Name="Result" DataType="Double" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="ProductoID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="StatusTicket" UID="{8BE52EEA-C514-4FF1-A017-E4EB03B27810}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="TicketID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="SumaAnticipo" UID="{9D94FC06-B056-4EB5-940C-3735C3DBA6E4}">
<Parameters>
<Parameter Name="Result" DataType="Double" Flag="Result">
</Parameter>
<Parameter Name="Estacion" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Secuencia" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="SumaVentasCorte" UID="{C7249CFA-3FC2-40D8-A904-EE2CA200B8E5}">
<Parameters>
<Parameter Name="Result" DataType="Double" Flag="Result">
</Parameter>
<Parameter Name="Estacion" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Secuencia" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="AgrupacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ValoresTurno" UID="{3EA41BF8-4AC2-440F-817B-421516DE124B}">
<Parameters>
<Parameter Name="Result" DataType="TValoresTurno" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="TurnoID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="VersionServer" UID="{BC84116A-0BAB-43E8-B5E3-38E269F98EB5}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
</Parameters>
</Operation>
<Operation Name="LiquidacionCerrada" UID="{E414EBD1-A3BB-4284-A9AB-622643722EC7}">
<Parameters>
<Parameter Name="Result" DataType="Boolean" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="TurnoID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ClienteValido" UID="{E3BDBF3E-E046-4552-9666-38DE907E41EE}">
<Parameters>
<Parameter Name="Result" DataType="Boolean" Flag="Result">
</Parameter>
<Parameter Name="ClienteID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="NewClienteID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="BuscaOtroProducto" UID="{89AA429F-3DF6-4C46-B3A2-630A732595B6}">
<Parameters>
<Parameter Name="Result" DataType="TOtroProducto" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Codigo" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="TurnoALiquidacionID" UID="{E97A9B3E-84CE-44AA-A47C-ADCFB3C9E7F4}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="TurnoID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="BuscaSagarpa" UID="{9F3844FD-1335-4E45-91BD-6758580EB660}">
<Parameters>
<Parameter Name="Result" DataType="TSagarpa" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="PuntosCalculaSaldo" UID="{22FFD0EF-F720-423A-AD6C-42229CA09E3A}">
<Parameters>
<Parameter Name="Result" DataType="Double" Flag="Result">
</Parameter>
<Parameter Name="ClienteID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="PuntosCalculaPuntos" UID="{50D99D4A-2468-4B13-9B1F-4763190CFE95}">
<Parameters>
<Parameter Name="Result" DataType="Double" Flag="Result">
</Parameter>
<Parameter Name="ClienteID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="ProductoID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Volumen" DataType="Double" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="PuntosGuardaDatos" UID="{421C4D38-03A1-47CB-9DF1-B1E5A5FC2EB5}">
<Parameters>
<Parameter Name="Datos" DataType="TDatosPuntos" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="PuntosDatos" UID="{6809CB40-D40B-48EF-AE16-AC645895FEFF}">
<Parameters>
<Parameter Name="Result" DataType="TDatosPuntos" Flag="Result">
</Parameter>
<Parameter Name="ClienteID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="EliminaAutomaticosLiquidacion" UID="{7C312A2B-6ADE-4FBE-AFB5-7A45B88DB50B}">
<Parameters>
<Parameter Name="Result" DataType="Boolean" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="TurnoID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="BuscaDespachadorLiquidacion" UID="{F2667AAF-A70D-4B6D-9410-F4D7DA442A5A}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="BombaID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="TurnoID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="EntregaPremio" UID="{F9C62137-7EB8-4859-BB1F-30BEEF79DFCE}">
<Parameters>
<Parameter Name="Result" DataType="TEntregaPremio" Flag="Result">
</Parameter>
<Parameter Name="ClienteID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="PremioID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Cantidad" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="DatosPremio" UID="{41E6801B-2778-4DDB-9213-E63DB1AEAEE5}">
<Parameters>
<Parameter Name="Result" DataType="TDatosPremio" Flag="Result">
</Parameter>
<Parameter Name="PremioID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ValidaConsumo" UID="{C041476C-E61C-4EDA-B8B7-9CC3DBCB7690}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="Consumo" DataType="TConsumoExpress" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="AgrupacionesBomba" UID="{1D21AD59-C957-4AB5-8AD4-97E84DD90726}">
<Parameters>
<Parameter Name="Result" DataType="AAgrupacion" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="DatosCerrarLiquidacion" UID="{020C9A5A-00E3-4E1D-AEEF-B2B88E2BAD1E}">
<Parameters>
<Parameter Name="Result" DataType="TDatosCerrarLiquidacion" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="TurnoID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ProcesaVentasLiquidacion" UID="{41D6967D-6E12-4D47-B89A-2FA5B3436DF3}">
<Parameters>
<Parameter Name="Datos" DataType="TDatosCerrarLiquidacion" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="TicketsLiquidacion" UID="{2A38D369-38E0-4064-ACC1-171630256E9A}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="LiquidacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ValidaFolioFactura" UID="{25E493AE-5D32-451A-9ED3-D2A3CFCFF73A}">
<Parameters>
<Parameter Name="Result" DataType="Boolean" Flag="Result">
</Parameter>
<Parameter Name="Serie" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Folio" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="PuntosGuardaCriterios" UID="{935C81F9-A634-4DA8-966D-C3FB2BE541FA}">
<Parameters>
<Parameter Name="PuntosCriterioID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Datos" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="DatosFacturaElectronica" UID="{95616F7C-82E3-43D4-893B-21AEB97F8BCA}">
<Parameters>
<Parameter Name="Result" DataType="TFacturaElectronica" Flag="Result">
</Parameter>
<Parameter Name="FacturaID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="LlavePrivaCertificado" UID="{6EFEC68A-5325-4FE2-9F69-7A19D830C2E4}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="LlavePrivada" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="Certificado" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="GasolineroID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Password" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="SELLOPEMs" UID="{DA40DEFD-7320-419D-83E5-BE6A244A9B21}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="Texto" DataType="Widestring" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="CERs" UID="{A492C900-05E6-4872-BFBE-2D93ED63E5C0}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="DIR" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ValidaLiquidacionDespachador" UID="{4B7DB86D-3523-4987-85A3-2BC398CFD305}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="LiquidacionID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ActualizaLiquidacionProd" UID="{96252117-94BD-44E0-B5C2-7774FEFFF52B}">
<Parameters>
<Parameter Name="Result" DataType="Boolean" Flag="Result">
</Parameter>
<Parameter Name="Estacion" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="FechaIni" DataType="DateTime" Flag="In" >
</Parameter>
<Parameter Name="FechaFin" DataType="DateTime" Flag="In" >
</Parameter>
<Parameter Name="TurnoID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="PuntosDespachador" UID="{4411A343-5B6A-4C7B-B5C2-299844A28AFF}">
<Parameters>
<Parameter Name="TurnoID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="EstacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="UsuarioID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GuardarDatosFacturaPemex" UID="{F8B0D3F1-1C6D-4687-A567-602FC6D58F43}">
<Parameters>
<Parameter Name="DatosFacturaPemex" DataType="TDatosFacturaPemex" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="AfectaInventarios" UID="{1B13E870-1064-46CD-AA75-6EF520E5749D}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="LiquidacionID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="UsuarioID" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="InsertaFacturaElectronica" UID="{08468660-35DB-4662-A6F7-5088AD01C0FB}">
<Parameters>
<Parameter Name="FacturaElectronicaID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="CadenaOriginal" DataType="Widestring" Flag="In" >
</Parameter>
<Parameter Name="SelloDigital" DataType="Widestring" Flag="In" >
</Parameter>
<Parameter Name="FacturaID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="Vigencia" DataType="Boolean" Flag="In" >
</Parameter>
<Parameter Name="Enviado" DataType="Boolean" Flag="In" >
</Parameter>
<Parameter Name="NoCertificado" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="NoAprobacion" DataType="AnsiString" Flag="In" >
</Parameter>
<Parameter Name="FechaAprobacion" DataType="DateTime" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="CERsNUM" UID="{15C5A12E-3B1E-466C-9B68-7AF99553F30D}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="DIR" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ActualizaFirmaDefault" UID="{93445154-B3C2-42D4-8840-14711D7FE297}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="UsuarioID" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="FIRMA" DataType="Binary" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="obtendatosempleados" UID="{74C63BD7-3379-4C96-B667-C3C26775AE8C}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="EstacionID" DataType="AnsiString" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="ProgramaMantenimiento" UID="{45A8D3CC-4062-4622-9AE6-8EAF080E3F21}">
<Parameters>
<Parameter Name="IDPROGRAMAMANTENIMIENTO" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="IDESTACION" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="obtendatosActividadesProgramadas" UID="{1866ADF0-3020-4B55-ABDC-4CB4C54AD933}">
<Parameters>
<Parameter Name="Result" DataType="AnsiString" Flag="Result">
</Parameter>
<Parameter Name="IDESTACION" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="TIPO" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
</Operations>
</Interface>
</Interfaces>
</Service>
</Services>
<EventSinks>
<EventSink Name="DataChangeNotification" UID="{10309CDF-EA24-4F8B-9678-8D1EF426955F}" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Interfaces>
<Interface Name="Default" UID="{1309480C-AEF8-48E0-A27F-E6090F441B46}">
<Operations>
<Operation Name="OnDataTableChanged" UID="{61437AB0-DD71-44D3-967A-25199CE8C1CD}">
<Parameters>
<Parameter Name="aTableName" DataType="Utf8String" Flag="In">
</Parameter>
<Parameter Name="aDelta" DataType="Binary" Flag="In">
</Parameter>
</Parameters>
</Operation>
</Operations>
</Interface>
</Interfaces>
</EventSink>
</EventSinks>
<Structs>
<Struct Name="DataParameter" UID="{960C67F1-F39A-43EF-9D45-E091ACE04A86}" AutoCreateParams="1" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Elements>
<Element Name="Name" DataType="Utf8String">
</Element>
<Element Name="Value" DataType="Variant">
</Element>
</Elements>
</Struct>
<Struct Name="TableRequestInfo" UID="{AD4D327E-650E-42AF-8D57-1166124FB515}" AutoCreateParams="1" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Elements>
<Element Name="UserFilter" DataType="Utf8String">
</Element>
<Element Name="IncludeSchema" DataType="Boolean">
</Element>
<Element Name="MaxRecords" DataType="Integer">
<CustomAttributes>
<Default Value="-1" />
</CustomAttributes>
</Element>
<Element Name="Parameters" DataType="DataParameterArray">
</Element>
</Elements>
</Struct>
<Struct Name="UserInfo" UID="{C07A7008-F183-4015-9503-5C8FAE347E1C}" AutoCreateParams="1" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Elements>
<Element Name="SessionID" DataType="Utf8String">
</Element>
<Element Name="UserID" DataType="Utf8String">
</Element>
<Element Name="Privileges" DataType="StringArray">
</Element>
<Element Name="Attributes" DataType="VariantArray">
</Element>
<Element Name="UserData" DataType="Binary">
</Element>
</Elements>
</Struct>
<Struct Name="TableRequestInfoV5" UID="{F212B25A-167B-409C-BE99-23348E82AA5E}" AutoCreateParams="1" Ancestor="TableRequestInfo" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Elements>
<Element Name="WhereClause" DataType="Xml">
</Element>
<Element Name="DynamicSelectFieldNames" DataType="StringArray">
</Element>
<Element Name="Sorting" DataType="ColumnSorting">
</Element>
</Elements>
</Struct>
<Struct Name="ColumnSorting" UID="{81A8FAD7-B72D-4962-AD43-CD8E827DBC12}" AutoCreateParams="1" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Elements>
<Element Name="FieldName" DataType="Utf8String">
</Element>
<Element Name="SortDirection" DataType="ColumnSortDirection">
</Element>
</Elements>
</Struct>
<Struct Name="TableRequestInfoV6" UID="{9BC1458B-11F9-44EB-81D9-06198336F72D}" AutoCreateParams="1" Ancestor="TableRequestInfo" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Elements>
<Element Name="Sql" DataType="Widestring">
</Element>
</Elements>
</Struct>
<Struct Name="TParametros" UID="{B664AB96-6EA8-45AF-BDB1-9AA7CDEDE9E7}" AutoCreateParams="1">
<Elements>
<Element Name="FechaIni" DataType="DateTime">
</Element>
<Element Name="FechaFin" DataType="DateTime">
</Element>
<Element Name="ClienteIni" DataType="Integer">
</Element>
<Element Name="ClienteFin" DataType="Integer">
</Element>
<Element Name="Estacion" DataType="Integer">
</Element>
<Element Name="SecuenciaIni" DataType="Integer">
</Element>
<Element Name="SecuenciaFin" DataType="Integer">
</Element>
<Element Name="Factura" DataType="Integer">
</Element>
<Element Name="FolioFactura" DataType="Integer">
</Element>
<Element Name="Serie" DataType="AnsiString">
</Element>
<Element Name="Ejercicio" DataType="Integer">
</Element>
<Element Name="Periodo" DataType="Integer">
</Element>
<Element Name="Dia" DataType="Integer">
</Element>
<Element Name="EjercicioFin" DataType="Integer">
</Element>
<Element Name="PeriodoFin" DataType="Integer">
</Element>
<Element Name="DiaFin" DataType="Integer">
</Element>
<Element Name="Secuencia" DataType="AnsiString">
</Element>
<Element Name="Status" DataType="AnsiString">
</Element>
<Element Name="Agrupacion" DataType="Integer">
</Element>
<Element Name="Almacen" DataType="Integer">
</Element>
<Element Name="SecuenciaIniLiquidacion" DataType="Integer">
</Element>
<Element Name="SecuenciaFinLiquidacion" DataType="Integer">
</Element>
<Element Name="FacturasdeCompras" DataType="Integer">
</Element>
<Element Name="MontoFacturado" DataType="Double">
</Element>
<Element Name="Turno" DataType="Integer">
</Element>
<Element Name="EmpleadoIni" DataType="Integer">
</Element>
<Element Name="EmpleadoFin" DataType="Integer">
</Element>
<Element Name="EstacionIni" DataType="Integer">
</Element>
<Element Name="EstacionFin" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TFactura" UID="{B31B8161-4BE7-4B01-952B-86ECB5884DEE}" AutoCreateParams="1">
<Elements>
<Element Name="Serie" DataType="AnsiString">
</Element>
<Element Name="Fecha" DataType="DateTime">
</Element>
<Element Name="Subtotal" DataType="Double">
</Element>
<Element Name="Impuesto" DataType="Double">
</Element>
<Element Name="Total" DataType="Double">
</Element>
<Element Name="ImpuestoPorcentaje" DataType="Double">
</Element>
<Element Name="Turno" DataType="Integer">
</Element>
<Element Name="EstacionID" DataType="Integer">
</Element>
<Element Name="ClienteID" DataType="Integer">
</Element>
<Element Name="FormaPagoID" DataType="Integer">
</Element>
<Element Name="TipoFacturaID" DataType="Integer">
</Element>
<Element Name="FacturaID" DataType="Integer">
</Element>
<Element Name="Tickets" DataType="AnsiString">
</Element>
<Element Name="UsuarioID" DataType="Integer">
</Element>
<Element Name="ISR" DataType="Double">
</Element>
<Element Name="IVARTN" DataType="Double">
</Element>
</Elements>
</Struct>
<Struct Name="TDetalleFactura" UID="{B5434C9F-5BE9-4AF2-97B1-555504B98A2E}" AutoCreateParams="1">
<Elements>
<Element Name="Cantidad" DataType="Double">
</Element>
<Element Name="Precio" DataType="Double">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
<Element Name="FacturaID" DataType="Integer">
</Element>
<Element Name="ProductoID" DataType="Integer">
</Element>
<Element Name="Codigo" DataType="AnsiString">
</Element>
<Element Name="Descripcion" DataType="AnsiString">
</Element>
</Elements>
</Struct>
<Struct Name="TTicketFactura" UID="{F4051119-4F5E-4036-A4A0-CF7FE00E11DF}" AutoCreateParams="1">
<Elements>
<Element Name="TicketID" DataType="Integer">
</Element>
<Element Name="Fecha" DataType="DateTime">
</Element>
<Element Name="Volumen" DataType="Double">
</Element>
<Element Name="Precio" DataType="Double">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
<Element Name="ProductoID" DataType="Integer">
</Element>
<Element Name="FacturaID" DataType="Integer">
</Element>
<Element Name="EstacionID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDetalleCupon" UID="{E68FA1F8-5C4D-4F02-B3C8-7D1D1C19B636}" AutoCreateParams="1">
<Elements>
<Element Name="Denominacion" DataType="Double">
</Element>
<Element Name="Cantidad" DataType="Double">
</Element>
<Element Name="Referencia" DataType="AnsiString">
</Element>
<Element Name="FacturaID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDetalleValeCreditoFactura" UID="{91BF62CE-5972-415F-BD0C-19066C35B0D9}" AutoCreateParams="1">
<Elements>
<Element Name="NoVale" DataType="Integer">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
<Element Name="FacturaID" DataType="Integer">
</Element>
<Element Name="CarteraValeCreditoID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDatosFactura" UID="{3D12C0BB-28D5-408E-8189-3FCA719B47C6}" AutoCreateParams="1">
<Elements>
<Element Name="Factura" DataType="TFactura">
</Element>
<Element Name="Detalles" DataType="ATDetalleFactura">
</Element>
<Element Name="Tickets" DataType="ATTicketFactura">
</Element>
<Element Name="DetalleCupon" DataType="ATDetalleCupon">
</Element>
<Element Name="Vales" DataType="ATDetalleValeCreditoFactura">
</Element>
<Element Name="ValesS" DataType="AnsiString">
</Element>
<Element Name="Cliente" DataType="TDatosCliente">
</Element>
</Elements>
</Struct>
<Struct Name="TLiquidacion" UID="{D1610C9E-1026-42DD-9FDE-A1A88878831D}" AutoCreateParams="1">
<Elements>
<Element Name="LiquidacionID" DataType="Integer">
</Element>
<Element Name="Fecha" DataType="DateTime">
</Element>
<Element Name="VentasTotales" DataType="Double">
</Element>
<Element Name="Anticipos" DataType="Double">
</Element>
<Element Name="Diferencias" DataType="Double">
</Element>
<Element Name="Secuencia" DataType="Integer">
</Element>
<Element Name="EstacionID" DataType="Integer">
</Element>
<Element Name="DespachadorID" DataType="Integer">
</Element>
<Element Name="AgrupacionID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TLiquidacionDetalle" UID="{CE20A122-459B-416C-993D-E8F97B700A6B}" AutoCreateParams="1">
<Elements>
<Element Name="LiquidacionDetalleID" DataType="Integer">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
<Element Name="Secuencia" DataType="Integer">
</Element>
<Element Name="Referencia" DataType="AnsiString">
</Element>
<Element Name="Ticket" DataType="Integer">
</Element>
<Element Name="Cupon" DataType="AnsiString">
</Element>
<Element Name="LiquidacionID" DataType="Integer">
</Element>
<Element Name="TipoValorID" DataType="Integer">
</Element>
<Element Name="BancoID" DataType="Integer">
</Element>
<Element Name="SalidaID" DataType="Integer">
</Element>
<Element Name="ClienteID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TLiquidacionProducto" UID="{BBB54CE0-D87A-4865-8004-44993807AED5}" AutoCreateParams="1">
<Elements>
<Element Name="PrecioVenta" DataType="Double">
</Element>
<Element Name="InventarioInicial" DataType="Double">
</Element>
<Element Name="InventarioFinal" DataType="Double">
</Element>
<Element Name="Cantidad" DataType="Double">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
<Element Name="Secuencia" DataType="Integer">
</Element>
<Element Name="Traspasos" DataType="Double">
</Element>
<Element Name="ProductoID" DataType="Integer">
</Element>
<Element Name="BombaID" DataType="Integer">
</Element>
<Element Name="Costo" DataType="Double">
</Element>
</Elements>
</Struct>
<Struct Name="TTransaccion" UID="{F3ED0440-6BE4-461C-9C56-8220217C16A5}" AutoCreateParams="1">
<Elements>
<Element Name="TransaccionID" DataType="Integer">
</Element>
<Element Name="Folio" DataType="Integer">
</Element>
<Element Name="Tipo" DataType="AnsiString">
</Element>
<Element Name="Credito" DataType="Boolean">
</Element>
<Element Name="Referencia" DataType="AnsiString">
</Element>
<Element Name="Fecha" DataType="DateTime">
</Element>
<Element Name="Total" DataType="Double">
</Element>
<Element Name="Subtotal" DataType="Double">
</Element>
<Element Name="Impuesto" DataType="Double">
</Element>
<Element Name="Plazo" DataType="Integer">
</Element>
<Element Name="Secuencia" DataType="Integer">
</Element>
<Element Name="EstacionDestinoID" DataType="Integer">
</Element>
<Element Name="AlmacenDestinoID" DataType="Integer">
</Element>
<Element Name="EstacionID" DataType="Integer">
</Element>
<Element Name="ProveedorId" DataType="Integer">
</Element>
<Element Name="AlmacenID" DataType="Integer">
</Element>
<Element Name="MovimientoAlmacen" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDetalleTransaccion" UID="{55B2CAC1-C775-4AF9-8919-8D5BD24DE98C}" AutoCreateParams="1">
<Elements>
<Element Name="DetalleTransaccionID" DataType="Integer">
</Element>
<Element Name="Cantidad" DataType="Double">
</Element>
<Element Name="Costo" DataType="Double">
</Element>
<Element Name="TransaccionID" DataType="Integer">
</Element>
<Element Name="ProductoID" DataType="Integer">
</Element>
<Element Name="Tipo" DataType="AnsiString">
</Element>
<Element Name="Operador" DataType="Integer">
</Element>
<Element Name="MovimientoAlmacen" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TCarteraVale" UID="{AB983ACD-326A-4368-8AB9-908E876628EC}" AutoCreateParams="1">
<Elements>
<Element Name="CarteraValeCreditoID" DataType="Integer">
</Element>
<Element Name="NoVale" DataType="Integer">
</Element>
<Element Name="Ticket" DataType="Integer">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
<Element Name="Fecha" DataType="DateTime">
</Element>
<Element Name="Status" DataType="AnsiString">
</Element>
<Element Name="FacturaID" DataType="Integer">
</Element>
<Element Name="EstacionID" DataType="Integer">
</Element>
<Element Name="ClienteID" DataType="Integer">
</Element>
<Element Name="LiquidacionDetalleID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDatosLiquidacion" UID="{59437718-A327-4599-9305-0BE259476218}" AutoCreateParams="1">
<Elements>
<Element Name="Liquidacion" DataType="TLiquidacion">
</Element>
<Element Name="LiquidacionDetalle" DataType="ATLiquidacionDetalle">
</Element>
<Element Name="LiquidacionProducto" DataType="ATLiquidacionProducto">
</Element>
<Element Name="LiquidacionCombustible" DataType="ATLiquidacionProducto">
</Element>
<Element Name="Traspaso" DataType="TTransaccion">
</Element>
<Element Name="Venta" DataType="TTransaccion">
</Element>
<Element Name="DetalleTraspaso" DataType="ATDetalleTransaccion">
</Element>
<Element Name="DetalleVenta" DataType="ATDetalleTransaccion">
</Element>
<Element Name="CarteraVales" DataType="ATCarteraVale">
</Element>
</Elements>
</Struct>
<Struct Name="TReporte" UID="{3479E0C2-F654-43E9-BF91-07756FF774CF}" AutoCreateParams="1">
<Elements>
<Element Name="SQL1" DataType="AnsiString">
</Element>
<Element Name="SQL2" DataType="AnsiString">
</Element>
<Element Name="Template" DataType="AnsiString">
</Element>
<Element Name="CampoJoin" DataType="AnsiString">
</Element>
</Elements>
</Struct>
<Struct Name="TRecibo" UID="{60821E2F-9F32-4111-B22A-5608D2431024}" AutoCreateParams="1">
<Elements>
<Element Name="Serie" DataType="AnsiString">
</Element>
<Element Name="Folio" DataType="Integer">
</Element>
<Element Name="Fecha" DataType="DateTime">
</Element>
<Element Name="Subtotal" DataType="Double">
</Element>
<Element Name="Ejercicio" DataType="Integer">
</Element>
<Element Name="Periodo" DataType="Integer">
</Element>
<Element Name="Dia" DataType="Integer">
</Element>
<Element Name="Impuesto" DataType="Double">
</Element>
<Element Name="Total" DataType="Double">
</Element>
<Element Name="ClienteID" DataType="Integer">
</Element>
<Element Name="EstacionID" DataType="Integer">
</Element>
<Element Name="FormaPagoID" DataType="Integer">
</Element>
<Element Name="ReciboPagoID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDetalleReciboPago" UID="{C7172F4F-721C-444D-BC54-5B0E8A515A92}" AutoCreateParams="1">
<Elements>
<Element Name="FacturaID" DataType="Integer">
</Element>
<Element Name="Total" DataType="Double">
</Element>
<Element Name="ReciboID" DataType="Integer">
</Element>
<Element Name="ItemNo" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDatosReciboPago" UID="{355EA46E-DE01-4D28-AFED-E889B2FDE925}" AutoCreateParams="1">
<Elements>
<Element Name="Recibo" DataType="TRecibo">
</Element>
<Element Name="Detalles" DataType="ATDetalleRecibo">
</Element>
</Elements>
</Struct>
<Struct Name="TDatosRecibo" UID="{2F424F26-90A6-46F7-A64D-9D0A3D8D67ED}" AutoCreateParams="1">
<Elements>
<Element Name="Recibo" DataType="TRecibo">
</Element>
<Element Name="Detalles" DataType="ATDetalleRecibo">
</Element>
</Elements>
</Struct>
<Struct Name="TLoginInfo" UID="{17474518-A2DF-42AA-928A-CA82B12F946D}" AutoCreateParams="1">
<Elements>
<Element Name="Valida" DataType="Boolean">
</Element>
<Element Name="EmpleadoID" DataType="Integer">
</Element>
<Element Name="NombreEmpleado" DataType="AnsiString">
</Element>
<Element Name="Accesos" DataType="ArrayOpcion">
</Element>
</Elements>
</Struct>
<Struct Name="TOpcion" UID="{1915B1F0-A1DA-4341-9C0C-5F2F0AEF7216}" AutoCreateParams="1">
<Elements>
<Element Name="OpcionID" DataType="Integer">
</Element>
<Element Name="Nombre" DataType="AnsiString">
</Element>
</Elements>
</Struct>
<Struct Name="TConsumoExpress" UID="{C9E41850-1361-4423-AE20-BE82D72FFEC6}" AutoCreateParams="1">
<Elements>
<Element Name="Secuencia" DataType="Integer">
</Element>
<Element Name="EstacionID" DataType="Integer">
</Element>
<Element Name="ClienteID" DataType="Integer">
</Element>
<Element Name="Precio" DataType="Double">
</Element>
<Element Name="Volumen" DataType="Double">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
<Element Name="Facturado" DataType="Boolean">
</Element>
<Element Name="BombaID" DataType="Integer">
</Element>
<Element Name="ProductoID" DataType="Integer">
</Element>
<Element Name="FacturaID" DataType="Integer">
</Element>
<Element Name="FechaConsumo" DataType="DateTime">
</Element>
</Elements>
</Struct>
<Struct Name="TDatosCliente" UID="{EC11472B-0DA5-458B-8E6A-D0EF265F9B2B}" AutoCreateParams="1">
<Elements>
<Element Name="ClienteID" DataType="Integer">
</Element>
<Element Name="Nombre" DataType="AnsiString">
</Element>
<Element Name="RFC" DataType="AnsiString">
</Element>
<Element Name="Direccion" DataType="AnsiString">
</Element>
<Element Name="Telefono" DataType="AnsiString">
</Element>
<Element Name="CP" DataType="AnsiString">
</Element>
<Element Name="Ciudad" DataType="AnsiString">
</Element>
<Element Name="Colonia" DataType="AnsiString">
</Element>
<Element Name="Telefonos" DataType="AnsiString">
</Element>
<Element Name="FacturaExpress" DataType="Boolean">
</Element>
<Element Name="Saldo" DataType="Double">
</Element>
<Element Name="MsnError" DataType="AnsiString">
</Element>
</Elements>
</Struct>
<Struct Name="TFacturaExpress" UID="{3B01B8F2-39DE-4FB4-BB53-17BEA1172109}" AutoCreateParams="1">
<Elements>
<Element Name="FacturaID" DataType="Integer">
</Element>
<Element Name="Serie" DataType="AnsiString">
</Element>
<Element Name="Folio" DataType="Integer">
</Element>
<Element Name="Fecha" DataType="DateTime">
</Element>
<Element Name="Cliente" DataType="TDatosCliente">
</Element>
<Element Name="Subtotal" DataType="Double">
</Element>
<Element Name="IVA" DataType="Double">
</Element>
<Element Name="Total" DataType="Double">
</Element>
<Element Name="Impuesto" DataType="Double">
</Element>
<Element Name="Detalle" DataType="ADetalleExpress">
</Element>
</Elements>
</Struct>
<Struct Name="TDetalleExpress" UID="{B9E206CB-6B11-472C-9E1C-42F4DB133FFF}" AutoCreateParams="1">
<Elements>
<Element Name="Codigo" DataType="AnsiString">
</Element>
<Element Name="Descripcion" DataType="AnsiString">
</Element>
<Element Name="Cantidad" DataType="Double">
</Element>
<Element Name="Precio" DataType="Double">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
</Elements>
</Struct>
<Struct Name="TValoresTurno" UID="{576EFAA3-7BD2-46AF-8B2A-6462BD6E97D9}" AutoCreateParams="1">
<Elements>
<Element Name="Fecha" DataType="DateTime">
</Element>
<Element Name="Venta" DataType="Double">
</Element>
<Element Name="Efectivo" DataType="Double">
</Element>
<Element Name="Credito" DataType="Double">
</Element>
<Element Name="ConsumoInterno" DataType="Double">
</Element>
<Element Name="Calibraciones" DataType="Double">
</Element>
<Element Name="Faltantes" DataType="Double">
</Element>
<Element Name="Sobrantes" DataType="Double">
</Element>
</Elements>
</Struct>
<Struct Name="TOtroProducto" UID="{476EA983-2681-46F8-86F3-DB6D4E869D85}" AutoCreateParams="1">
<Elements>
<Element Name="ID" DataType="Integer">
</Element>
<Element Name="Nombre" DataType="AnsiString">
</Element>
<Element Name="Codigo" DataType="AnsiString">
</Element>
<Element Name="Barras" DataType="AnsiString">
</Element>
<Element Name="Precio" DataType="Double">
</Element>
</Elements>
</Struct>
<Struct Name="TAgrupacion" UID="{CC282C74-0677-4D64-A2C9-864C40656F2E}" AutoCreateParams="1">
<Elements>
<Element Name="AgrupacionID" DataType="Integer">
</Element>
<Element Name="Bombas" DataType="AAgrupacionBomba">
</Element>
</Elements>
</Struct>
<Struct Name="TSagarpa" UID="{6137A250-3A9B-47D5-A579-12FCE5BFD25F}" AutoCreateParams="1">
<Elements>
<Element Name="ClienteSagarpa" DataType="Integer">
</Element>
<Element Name="ClienteSagarpaPemex" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDatosPuntos" UID="{EE7B055C-4DC4-4E77-B283-2B3A874985AC}" AutoCreateParams="1">
<Elements>
<Element Name="ClienteID" DataType="Integer">
</Element>
<Element Name="ApellidoPaterno" DataType="AnsiString">
</Element>
<Element Name="ApellidoMaterno" DataType="AnsiString">
</Element>
<Element Name="Nombres" DataType="AnsiString">
</Element>
<Element Name="email" DataType="AnsiString">
</Element>
<Element Name="Nacimiento" DataType="DateTime">
</Element>
<Element Name="Referencia" DataType="AnsiString">
</Element>
<Element Name="Telefonos" DataType="AnsiString">
</Element>
<Element Name="FacturaExpress" DataType="Boolean">
</Element>
<Element Name="PuntosCategoriaID" DataType="Integer">
</Element>
<Element Name="Sexo" DataType="Integer">
</Element>
<Element Name="FechaRegistro" DataType="DateTime">
</Element>
<Element Name="UsuarioID" DataType="Integer">
</Element>
<Element Name="PuntosClubID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDatosCelular" UID="{AF131B05-B9FD-4CFE-9EED-F04DC0129E5E}" AutoCreateParams="1">
<Elements>
<Element Name="Telefono" DataType="AnsiString">
</Element>
<Element Name="Compania" DataType="Integer">
</Element>
<Element Name="Descripcion" DataType="AnsiString">
</Element>
</Elements>
</Struct>
<Struct Name="TEntregaPremio" UID="{AAC767BC-504D-49BF-970B-968862602ED5}" AutoCreateParams="1">
<Elements>
<Element Name="ClienteID" DataType="Integer">
</Element>
<Element Name="Cliente" DataType="AnsiString">
</Element>
<Element Name="Premio" DataType="AnsiString">
</Element>
<Element Name="Cantidad" DataType="Integer">
</Element>
<Element Name="Puntos" DataType="Double">
</Element>
<Element Name="Saldo" DataType="Double">
</Element>
<Element Name="Mensaje" DataType="AnsiString">
</Element>
<Element Name="Valido" DataType="Boolean">
</Element>
</Elements>
</Struct>
<Struct Name="TDatosPremio" UID="{D882564F-5A98-4740-8B61-095E00961F99}" AutoCreateParams="1">
<Elements>
<Element Name="PremioID" DataType="Integer">
</Element>
<Element Name="Nombre" DataType="AnsiString">
</Element>
<Element Name="Puntos" DataType="Double">
</Element>
</Elements>
</Struct>
<Struct Name="TConfirmaEnvioA" UID="{6C43C378-F613-483C-B180-20F779172C4A}" AutoCreateParams="1">
<Elements>
<Element Name="Consumo" DataType="TConsumoExpress">
</Element>
<Element Name="Host" DataType="AnsiString">
</Element>
<Element Name="Fecha" DataType="DateTime">
</Element>
</Elements>
</Struct>
<Struct Name="TDatosCerrarLiquidacion" UID="{014B7A27-6215-4A5E-9AC0-0A6C97BFD163}" AutoCreateParams="1">
<Elements>
<Element Name="LiquidacionID" DataType="Integer">
</Element>
<Element Name="VentasTotales" DataType="Double">
</Element>
<Element Name="Entregado" DataType="Double">
</Element>
<Element Name="Diferencia" DataType="Double">
</Element>
<Element Name="Despachadores" DataType="ADespachadorLiquidacion">
</Element>
<Element Name="Detalle" DataType="ADetalleLiquidacion">
</Element>
<Element Name="TipoValor" DataType="ATipoValor">
</Element>
<Element Name="EstacionID" DataType="Integer">
</Element>
<Element Name="TurnoID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDespachadorLiquidacion" UID="{BD294C3C-4192-4E4B-BAAF-D1F19337A0C9}" AutoCreateParams="1">
<Elements>
<Element Name="DespachadorLiquidacionID" DataType="Integer">
</Element>
<Element Name="DespachadorID" DataType="Integer">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
<Element Name="Entregado" DataType="Double">
</Element>
<Element Name="Diferencia" DataType="Double">
</Element>
<Element Name="AgrupacionID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDetalleLiquidacion" UID="{12D196E7-35C4-486B-9758-D68510A69116}" AutoCreateParams="1">
<Elements>
<Element Name="Cantidad" DataType="Double">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
<Element Name="Referencia" DataType="AnsiString">
</Element>
<Element Name="Ticket" DataType="Integer">
</Element>
<Element Name="Serie" DataType="AnsiString">
</Element>
<Element Name="CuponID" DataType="Integer">
</Element>
<Element Name="SalidaID" DataType="Integer">
</Element>
<Element Name="ClienteID" DataType="Integer">
</Element>
<Element Name="BancoID" DataType="Integer">
</Element>
<Element Name="ProductoID" DataType="Integer">
</Element>
<Element Name="AuxiliarID" DataType="Integer">
</Element>
<Element Name="DespachadorLiquidacionID" DataType="Integer">
</Element>
<Element Name="TipoValorID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TTipoValor" UID="{2E324C4C-F2FB-4044-A549-75C0EB495EAF}" AutoCreateParams="1">
<Elements>
<Element Name="TipoValorID" DataType="Integer">
</Element>
<Element Name="Nombre" DataType="AnsiString">
</Element>
<Element Name="Grupo" DataType="AnsiString">
</Element>
</Elements>
</Struct>
<Struct Name="TPerfilPuntos" UID="{8D6F3D00-17A2-47E2-BCAC-DF4DFF7FE85F}" AutoCreateParams="1">
<Elements>
<Element Name="FechaIni" DataType="DateTime">
</Element>
<Element Name="FechaFin" DataType="DateTime">
</Element>
<Element Name="Criterio" DataType="Double">
</Element>
<Element Name="NewField3" DataType="AnsiString">
</Element>
</Elements>
</Struct>
<Struct Name="TFacturaElectronica" UID="{0F543588-D52B-4EB3-B108-FA392B92E27B}" AutoCreateParams="1">
<Elements>
<Element Name="Serie" DataType="AnsiString">
</Element>
<Element Name="Folio" DataType="AnsiString">
</Element>
<Element Name="Fecha" DataType="AnsiString">
</Element>
<Element Name="noAprobacion" DataType="AnsiString">
</Element>
<Element Name="anoAprobacion" DataType="AnsiString">
</Element>
<Element Name="tipoComprobante" DataType="AnsiString">
</Element>
<Element Name="formaDePago" DataType="AnsiString">
</Element>
<Element Name="SubTotal" DataType="AnsiString">
</Element>
<Element Name="MunicipioEmisor" DataType="AnsiString">
</Element>
<Element Name="Total" DataType="AnsiString">
</Element>
<Element Name="RFCEmisor" DataType="AnsiString">
</Element>
<Element Name="NomEmpEmisor" DataType="AnsiString">
</Element>
<Element Name="DireccionEm" DataType="AnsiString">
</Element>
<Element Name="NoExteriorEm" DataType="AnsiString">
</Element>
<Element Name="ColoniaEmisor" DataType="AnsiString">
</Element>
<Element Name="EstadoEmisor" DataType="AnsiString">
</Element>
<Element Name="PaisEmisor" DataType="AnsiString">
</Element>
<Element Name="CodigoPostalEmisor" DataType="AnsiString">
</Element>
<Element Name="RFCReceptor" DataType="AnsiString">
</Element>
<Element Name="NombreReceptor" DataType="AnsiString">
</Element>
<Element Name="DomicilioReceptor" DataType="AnsiString">
</Element>
<Element Name="NoExteriorReceptor" DataType="AnsiString">
</Element>
<Element Name="ColoniaReceptor" DataType="AnsiString">
</Element>
<Element Name="LocalidadReceptor" DataType="AnsiString">
</Element>
<Element Name="MunicipioReceptor" DataType="AnsiString">
</Element>
<Element Name="EstadoReceptor" DataType="AnsiString">
</Element>
<Element Name="PaisReceptor" DataType="AnsiString">
</Element>
<Element Name="CodigoPostalReceptor" DataType="AnsiString">
</Element>
<Element Name="FacturaElectronicaDetalleImportes" DataType="ATFacturaElectronicaDetalleImportes">
</Element>
<Element Name="FacturaElectronicaDetalleImpuestos" DataType="ATFacturaElectronicaDetalleImpuestos">
</Element>
<Element Name="TotalImpuesto" DataType="AnsiString">
</Element>
<Element Name="CalleExpedidoEn" DataType="AnsiString">
</Element>
<Element Name="NoExterioExpedidoEn" DataType="AnsiString">
</Element>
<Element Name="ColoniaExpedidoEn" DataType="AnsiString">
</Element>
<Element Name="CodigoPostalExpedidoEn" DataType="AnsiString">
</Element>
<Element Name="LocalidadExpedidoEn" DataType="AnsiString">
</Element>
<Element Name="MunicipioExpedidoEn" DataType="AnsiString">
</Element>
<Element Name="EstadoExpedidoEn" DataType="AnsiString">
</Element>
<Element Name="PaisExpedidoEn" DataType="AnsiString">
</Element>
<Element Name="Sucursal" DataType="Boolean">
</Element>
<Element Name="email" DataType="AnsiString">
</Element>
</Elements>
</Struct>
<Struct Name="TFacturaElectronicaDetalleImportes" UID="{2CEE1A8A-2F95-4208-AE24-42827E5ED1F2}" AutoCreateParams="1">
<Elements>
<Element Name="CantidadReceptor" DataType="AnsiString">
</Element>
<Element Name="UnidadReceptor" DataType="AnsiString">
</Element>
<Element Name="DescripcionReceptor" DataType="AnsiString">
</Element>
<Element Name="ValorUnitarioReceptor" DataType="AnsiString">
</Element>
<Element Name="ImporteReceptor" DataType="AnsiString">
</Element>
</Elements>
</Struct>
<Struct Name="TFacturaElectronicaDetalleImpuestos" UID="{995C4E5A-EDDC-499C-BD9A-8AA0B638DF4C}" AutoCreateParams="1">
<Elements>
<Element Name="ImpuestoReceptor" DataType="AnsiString">
</Element>
<Element Name="TasaReceptor" DataType="AnsiString">
</Element>
<Element Name="ImporteImpReceptor" DataType="AnsiString">
</Element>
</Elements>
</Struct>
<Struct Name="TDatosFacturaPemex" UID="{D31A2985-5D75-4E8E-A300-B20A02221DE2}" AutoCreateParams="1">
<Elements>
<Element Name="TurnoID" DataType="Integer">
</Element>
<Element Name="EstacionID" DataType="Integer">
</Element>
<Element Name="Fecha" DataType="DateTime">
</Element>
<Element Name="Nombre" DataType="AnsiString">
</Element>
<Element Name="FacturaPemexID" DataType="Integer">
</Element>
<Element Name="Serie" DataType="AnsiString">
</Element>
<Element Name="Folio" DataType="Integer">
</Element>
<Element Name="Total" DataType="Double">
</Element>
<Element Name="DetalleFactura" DataType="ADetalleFacturaPemex">
</Element>
<Element Name="ProductoID" DataType="Integer">
</Element>
</Elements>
</Struct>
<Struct Name="TDetalleFacturaPemex" UID="{B4EF1905-821F-4CED-9FE7-6E8949C91091}" AutoCreateParams="1">
<Elements>
<Element Name="FacturaPemexID" DataType="Integer">
</Element>
<Element Name="TipoValorPemexID" DataType="Integer">
</Element>
<Element Name="Cantidad" DataType="Double">
</Element>
<Element Name="Importe" DataType="Double">
</Element>
<Element Name="Precio" DataType="Double">
</Element>
</Elements>
</Struct>
</Structs>
<Enums>
<Enum Name="ColumnSortDirection" UID="{EAEAD7D2-3A0E-48D6-BE19-A74265D14503}" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<EnumValues>
<EnumValue Name="Ascending">
</EnumValue>
<EnumValue Name="Descending">
</EnumValue>
</EnumValues>
</Enum>
<Enum Name="ScriptExceptionType" UID="{60698D9B-61E3-4BDA-AA4C-58235FE6F4F5}" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<EnumValues>
<EnumValue Name="ParserError">
</EnumValue>
<EnumValue Name="RuntimeError">
</EnumValue>
<EnumValue Name="Fail">
</EnumValue>
<EnumValue Name="UnexpectedException">
</EnumValue>
<EnumValue Name="Abort">
</EnumValue>
</EnumValues>
</Enum>
</Enums>
<Arrays>
<Array Name="DataParameterArray" UID="{3E639D01-FB07-458F-B9C4-C6550F504901}" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<ElementType DataType="DataParameter" />
</Array>
<Array Name="TableRequestInfoArray" UID="{036958C2-1AC8-49B6-8A94-417198CB799F}" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<ElementType DataType="TableRequestInfo" />
</Array>
<Array Name="StringArray" UID="{7E86C9FC-99E7-45F2-8A49-E59A7A017265}" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<ElementType DataType="Utf8String" />
</Array>
<Array Name="VariantArray" UID="{5E7C5D64-FC5D-4B54-AC91-11B27ACA5FF4}" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<ElementType DataType="Variant" />
</Array>
<Array Name="ColumnSortingArray" UID="{53481559-8F14-44C6-83E4-5E9A579AB0EC}" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<ElementType DataType="ColumnSorting" />
</Array>
<Array Name="UserInfoArray" UID="{90816BC2-EC6D-4C03-8C36-B9C50A8F2B8E}" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<ElementType DataType="UserInfo" />
</Array>
<Array Name="ATDetalleCupon" UID="{C8A9345A-6A7D-4FF3-80E2-8297D76CF618}">
<ElementType DataType="TDetalleCupon" />
</Array>
<Array Name="ATDetalleFactura" UID="{1D632C14-E205-4D5A-B299-775209F23C78}">
<ElementType DataType="TDetalleFactura" />
</Array>
<Array Name="ATTicketFactura" UID="{6B4B40D0-770C-4270-BE49-62B5E831F8EF}">
<ElementType DataType="TTicketFactura" />
</Array>
<Array Name="ATDetalleValeCreditoFactura" UID="{7C0B2AAB-E769-4945-834D-757580B93772}">
<ElementType DataType="TDetalleValeCreditoFactura" />
</Array>
<Array Name="ATLiquidacionDetalle" UID="{BE1D5A3F-DDF6-45DA-9E16-F4F46C654A7B}">
<ElementType DataType="TLiquidacionDetalle" />
</Array>
<Array Name="ATLiquidacionProducto" UID="{73E68C58-8AED-4674-9D92-9EA4973E02FB}">
<ElementType DataType="TLiquidacionProducto" />
</Array>
<Array Name="ATDetalleTransaccion" UID="{58FBA26E-7EC8-42FA-B249-6CACEB2D4DF2}">
<ElementType DataType="TDetalleTransaccion" />
</Array>
<Array Name="ATCarteraVale" UID="{6B0D2AB4-2651-46B4-BD6A-DC926FD3C006}">
<ElementType DataType="TCarteraVale" />
</Array>
<Array Name="ATDetalleRecibo" UID="{E29C4BBD-DE2C-4D89-9B4E-FCED9EC127A1}">
<ElementType DataType="TDetalleReciboPago" />
</Array>
<Array Name="ArrayOpcion" UID="{0C5E112A-A28C-43A2-82A5-3FD472F67705}">
<ElementType DataType="TOpcion" />
</Array>
<Array Name="ADetalleExpress" UID="{2B216F5E-40D8-4D51-9E5F-39EF376DBB5D}">
<ElementType DataType="TDetalleExpress" />
</Array>
<Array Name="AAgrupacionBomba" UID="{C75230CF-2548-43B1-AD9D-69342242EA99}">
<ElementType DataType="Integer" />
</Array>
<Array Name="AAgrupacion" UID="{59AE439E-D8C3-4A39-8D06-66DFE6FA103F}">
<ElementType DataType="TAgrupacion" />
</Array>
<Array Name="ADatosCelular" UID="{F37D360C-B63C-44CC-8055-738515D2B864}">
<ElementType DataType="TDatosCelular" />
</Array>
<Array Name="ADespachadorLiquidacion" UID="{39902841-4022-400E-BCB6-B35908F57B2E}">
<ElementType DataType="TDespachadorLiquidacion" />
</Array>
<Array Name="ADetalleLiquidacion" UID="{1DA2863B-C0E8-4037-BB2B-401E9B8BB43A}">
<ElementType DataType="TDetalleLiquidacion" />
</Array>
<Array Name="ATipoValor" UID="{44F21704-87A6-4353-B636-20D0AFFA04B8}">
<ElementType DataType="TTipoValor" />
</Array>
<Array Name="ATFacturaElectronicaDetalleImportes" UID="{AD93F8FC-B0AD-4759-A000-EFDC6E390241}">
<ElementType DataType="TFacturaElectronicaDetalleImportes" />
</Array>
<Array Name="ATFacturaElectronicaDetalleImpuestos" UID="{7D1748BE-0C2D-4147-AA38-DF852C28E68E}">
<ElementType DataType="TFacturaElectronicaDetalleImpuestos" />
</Array>
<Array Name="ADetalleFacturaPemex" UID="{979CDC0E-6374-4928-A9D5-00C4F2CFFBE3}">
<ElementType DataType="TDetalleFacturaPemex" />
</Array>
</Arrays>
<Uses>
<Use Name="DataAbstract" UID="{F2826171-4520-42AC-B22B-DF4593662A6D}" Rodl="$(Data Abstract for Delphi)\Source\DataAbstract4.RODL" AbsoluteRodl="C:\Program Files (x86)\RemObjects Software\Data Abstract for Delphi\Source\DataAbstract4.RODL" UsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}" DontCodeGen="1">
<Includes UID="{ECE5910F-040B-4BDF-9502-EDF7F95642CF}" Delphi="DataAbstract4" DotNet="RemObjects.DataAbstract.Server" ObjC="DataAbstract/DataAbstract4_Intf" Java="com.remobjects.dataabstract" Nougat="DataAbstract"/>
</Use>
</Uses>
<Exceptions>
<Exception Name="ScriptException" UID="{8BF890A1-81CF-4371-93FD-39E44CBD052F}" AutoCreateParams="1" FromUsedRodlUID="{DC8B7BE2-14AF-402D-B1F8-E1008B6FA4F6}">
<Elements>
<Element Name="Line" DataType="Integer">
</Element>
<Element Name="Column" DataType="Integer">
</Element>
<Element Name="Event" DataType="Utf8String">
</Element>
<Element Name="InnerStackTrace" DataType="Utf8String">
</Element>
<Element Name="Type" DataType="ScriptExceptionType">
</Element>
</Elements>
</Exception>
</Exceptions>
</Library>

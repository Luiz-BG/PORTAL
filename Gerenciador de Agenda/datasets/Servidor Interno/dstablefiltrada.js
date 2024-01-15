function createDataset(fields, constraints, sortFields) {
	var ds = DatasetBuilder.newDataset();
	
	ds.addColumn("NOME");
	ds.addColumn("EMAIL");
	ds.addColumn("UNIDADE");
	ds.addColumn("MODALIDADE");
	ds.addColumn("SEGMENTO");
	
	var c1= DatasetFactory.createConstraint("metadata#active", true, true, ConstraintType.MUST)
	var contraints = new Array(c1)
	
	var dsInterno = "dsFormAux";
	
	var datasetformulario = DatasetFactory.getDataset(dsInterno,null, constraints,null);
	var count = datasetformulario.rowsCount;

	for(var i=0; i<count; i++){
		var docID = datasetformulario.getValue(i, "metadata#id");
		var docVersion = datasetformulario.getValue(i, "metadata#version");
		var table = "agoravaimano";
		var const1 = DatasetFactory.createConstraint("tablename", table, table, ConstraintType.MUST);
		var const2 = DatasetFactory.createConstraint("metadata#id", docID, docID, ConstraintType.MUST);
		var const3 = DatasetFactory.createConstraint("metadata#version", docVersion, docVersion, ConstraintType.MUST);
		var constraintstable = new Array(const1, const2, const3);
		
		var datasetable= DatasetFactory.getDataset(dsInterno,null, constraintstable,null);
		var counttable= datasetable.rowsCount;
		for(var j=0; j<counttable;j++){
			ds.addRow(
				new Array(
					datasetable.getValue(j,"nome"),
					datasetable.getValue(j,"email"),
					datasetable.getValue(j,"unidade"),
					datasetable.getValue(j,"mod1"),
					datasetable.getValue(j,"seg")
				)
			)
		}

	}

	return ds;
}
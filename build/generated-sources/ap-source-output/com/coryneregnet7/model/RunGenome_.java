package com.coryneregnet7.model;

import com.coryneregnet7.model.Genome;
import com.coryneregnet7.model.Run;
import com.coryneregnet7.model.RunGenomePK;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-01-08T14:32:28")
@StaticMetamodel(RunGenome.class)
public class RunGenome_ { 

    public static volatile SingularAttribute<RunGenome, RunGenomePK> runGenomePK;
    public static volatile SingularAttribute<RunGenome, Genome> genome;
    public static volatile SingularAttribute<RunGenome, String> role;
    public static volatile SingularAttribute<RunGenome, Run> run;

}
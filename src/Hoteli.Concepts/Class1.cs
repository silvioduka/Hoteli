using Rhetos.Dsl;
using Rhetos.Dsl.DefaultConcepts;
using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;

namespace Hoteli.Concepts
{
    [Export(typeof(IConceptInfo))]
    [ConceptKeyword("Sifarnik")]
    public class SifarnikInfo : IConceptInfo
    {
        [ConceptKey]
        public EntityInfo Entity { get; set; }
    }

    [Export(typeof(IConceptMacro))]
    public class SifarnikMacro : IConceptMacro<SifarnikInfo>
    {
        public IEnumerable<IConceptInfo> CreateNewConcepts(SifarnikInfo conceptInfo, IDslModel existingConcepts)
        {
            var newConcepts = new List<IConceptInfo>();

            var poljeOznaka = new ShortStringPropertyInfo
            {
                Name = "Naziv",
                DataStructure = conceptInfo.Entity
            };

            newConcepts.Add(poljeOznaka);

            newConcepts.Add(new ShortStringPropertyInfo
            {
                Name = "Oznaka",
                DataStructure = conceptInfo.Entity
            });

            newConcepts.Add(new AutoCodePropertyInfo
            {
                Property = poljeOznaka
            });

            newConcepts.Add(new RequiredPropertyInfo
            {
                Property = poljeOznaka
            });

            return newConcepts;
        }
    }
}

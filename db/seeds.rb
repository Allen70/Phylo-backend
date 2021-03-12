
Kingdom.destroy_all
Taxon.destroy_all

bacteria = Taxon.create name: 'Bacteria'
archaea = Taxon.create name: 'Archaea'
eukaryota = Taxon.create name: 'Eukaryota'

Kingdom.create name: 'Archaebacteria', taxon: archaea
Kingdom.create name: 'Eubacteria', taxon: bacteria
Kingdom.create name: 'Protista', taxon: eukaryota
Kingdom.create name: 'Fungi', taxon: eukaryota
Kingdom.create name: 'Plantae', taxon: eukaryota
Kingdom.create name: 'Animalia', taxon: eukaryota
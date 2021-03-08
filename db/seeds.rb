
Kingdom.destroy_all
Taxon.destroy_all

bacteria = Taxon.create name: 'Bacteria'
archaea = Taxon.create name: 'Archaea'
eukaryota = Taxon.create name: 'Eukaryota'

Kingdom.create name: 'Archaebacteria', taxons_id: archaea.id
Kingdom.create name: 'Eubacteria', taxons_id: bacteria.id
Kingdom.create name: 'Protista', taxons_id: eukaryota.id
Kingdom.create name: 'Fungi', taxons_id: eukaryota.id
Kingdom.create name: 'Plantae', taxons_id: eukaryota.id
Kingdom.create name: 'Animalia', taxons_id: eukaryota.id
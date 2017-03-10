namespace Dependencia.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ANEXOS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ANEXOS()
        {
            RADICACIONES = new HashSet<RADICACIONES>();
        }

        [Key]
        public int ID_ANEXO { get; set; }

        [StringLength(50)]
        public string NOMBRE_ANEXO { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RADICACIONES> RADICACIONES { get; set; }
    }
}

namespace Dependencia.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DEPENDENCIA")]
    public partial class DEPENDENCIA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DEPENDENCIA()
        {
            RADICACIONES = new HashSet<RADICACIONES>();
        }

        [Key]
        public int ID_DEPENDENCIA { get; set; }

        [Required]
        [StringLength(50)]
        public string NOMBRE_DEPENDENCIA { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RADICACIONES> RADICACIONES { get; set; }
    }
}

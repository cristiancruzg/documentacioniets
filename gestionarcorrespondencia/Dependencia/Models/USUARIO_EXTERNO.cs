namespace Dependencia.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class USUARIO_EXTERNO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public USUARIO_EXTERNO()
        {
            RADICACIONES = new HashSet<RADICACIONES>();
        }

        [Key]
        public int ID_USUARIO_EXT { get; set; }

        [Required]
        [StringLength(50)]
        public string DOCUMENTO { get; set; }

        [Required]
        [StringLength(50)]
        public string NOMBRE { get; set; }

        [StringLength(50)]
        public string PERSONA_ENCARGADA { get; set; }

        [StringLength(50)]
        public string CARGO { get; set; }

        [Required]
        [StringLength(50)]
        public string DIRECCION { get; set; }

        [Required]
        [StringLength(20)]
        public string TELEFONO { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RADICACIONES> RADICACIONES { get; set; }
    }
}

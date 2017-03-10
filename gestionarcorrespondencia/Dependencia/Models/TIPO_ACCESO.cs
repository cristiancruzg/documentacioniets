namespace Dependencia.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class TIPO_ACCESO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TIPO_ACCESO()
        {
            USUARIOS = new HashSet<USUARIOS>();
        }

        [Key]
        public int ID_TIPO_ACCESO { get; set; }

        [Required]
        [StringLength(50)]
        public string NOMBRE_TIPO_ACCESO { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<USUARIOS> USUARIOS { get; set; }
    }
}

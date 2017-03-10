namespace Dependencia.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class USUARIOS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public USUARIOS()
        {
            RADICACIONES = new HashSet<RADICACIONES>();
        }

        [Key]
        public int ID_USUARIO { get; set; }

        [Required]
        [StringLength(100)]
        public string NOMBRE { get; set; }

        public bool? ESTADO { get; set; }

        public int ID_TIPO_ACCESO_FK { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RADICACIONES> RADICACIONES { get; set; }

        public virtual TIPO_ACCESO TIPO_ACCESO { get; set; }
    }
}

namespace Dependencia.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class TIPO_DOCUMENTOS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TIPO_DOCUMENTOS()
        {
            RADICACIONES = new HashSet<RADICACIONES>();
        }

        [Key]
        public int ID_TIPO_DOC { get; set; }

        [Required]
        public string NOMBRE_TIPO_DOC { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RADICACIONES> RADICACIONES { get; set; }
    }
}

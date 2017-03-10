namespace Dependencia.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class LOGS_RADICACION
    {
        public int ID { get; set; }

        [Required]
        [StringLength(50)]
        public string USUARIO { get; set; }

        [Required]
        [StringLength(100)]
        public string ASUNTO { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FECHA { get; set; }

        public int FOLIOS { get; set; }

        [StringLength(500)]
        public string EVENTO { get; set; }

        public DateTime? FECHA_LOG { get; set; }
    }
}

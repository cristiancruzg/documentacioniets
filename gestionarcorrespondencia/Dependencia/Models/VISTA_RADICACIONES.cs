namespace Dependencia.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class VISTA_RADICACIONES
    {
        [Key]
        [Column(Order = 0, TypeName = "date")]
        public DateTime FECHA_RADICACIÓN { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(100)]
        public string ASUNTO { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CANTIDAD_FOLIOS { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(100)]
        public string FUNCIONARIO { get; set; }

        [Key]
        [Column(Order = 4)]
        [StringLength(50)]
        public string NOMBRE_DEPENDENCIA { get; set; }

        [Key]
        [Column(Order = 5)]
        [StringLength(50)]
        public string NOMBRE_ANEXO { get; set; }

        [Key]
        [Column(Order = 6)]
        public string NOMBRE_TIPO_DOC { get; set; }

        [Key]
        [Column(Order = 7)]
        [StringLength(50)]
        public string DOCUMENTO { get; set; }

        [Key]
        [Column(Order = 8)]
        [StringLength(50)]
        public string USUARIO_EXTERNO { get; set; }

        [StringLength(50)]
        public string PERSONA_ENCARGADA { get; set; }

        [StringLength(50)]
        public string CARGO { get; set; }

        [Key]
        [Column(Order = 9)]
        [StringLength(50)]
        public string DIRECCION { get; set; }

        [Key]
        [Column(Order = 10)]
        [StringLength(20)]
        public string TELEFONO { get; set; }
    }
}

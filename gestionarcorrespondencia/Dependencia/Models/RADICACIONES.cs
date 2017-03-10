namespace Dependencia.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class RADICACIONES
    {
        [Key]
        public int ID_RADICACION { get; set; }

        [Required]
        [StringLength(100)]
        public string ASUNTO { get; set; }

        [Column(TypeName = "date")]
        public DateTime FECHA { get; set; }

        public int FOLIOS { get; set; }

        public int ID_USUARIO_FK { get; set; }

        public int ID_USUARIO_EXT_FK { get; set; }

        public int ID_ANEXO_FK { get; set; }

        public int ID_DEPENDENCIA_FK { get; set; }

        public int ID_TIPO_DOC { get; set; }

        public virtual ANEXOS ANEXOS { get; set; }

        public virtual DEPENDENCIA DEPENDENCIA { get; set; }

        public virtual TIPO_DOCUMENTOS TIPO_DOCUMENTOS { get; set; }

        public virtual USUARIO_EXTERNO USUARIO_EXTERNO { get; set; }

        public virtual USUARIOS USUARIOS { get; set; }
    }
}

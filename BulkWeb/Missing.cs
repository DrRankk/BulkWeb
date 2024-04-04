namespace BulkWeb
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Missing")]
    public partial class Missing
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(10)]
        public string Gender { get; set; }

        public int? Age { get; set; }

        public DateTime? LastSeen { get; set; }

        [StringLength(50)]
        public string Wearing { get; set; }

        [StringLength(50)]
        public string LastLocation { get; set; }

        public int? ContactInfo { get; set; }

        [StringLength(50)]
        public string Image { get; set; }
    }
}

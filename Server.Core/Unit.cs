 
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations; 

namespace Server.Core
{
    [Table("units")]
    public class Unit //шт. л. кг.
    {
        public int Id { get; set; }

        [MaxLength(255)]
        public string Name { get; set; } = String.Empty;
    }
}

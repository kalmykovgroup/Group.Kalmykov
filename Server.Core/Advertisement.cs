
using System.ComponentModel.DataAnnotations.Schema;

namespace Server.Core
{
    public enum TypeAdvertisement { MainPage }

    [Table("advertisements")]
    public class Advertisement
    {
        public int Id { get; set; }
        public int NumberClicks { get; set; }

        [ForeignKey(nameof(Img))]
        public int ImgId { get; set; } 
        public Img Img { get; set; } = null!;

        public TypeAdvertisement TypeAdvertisement { get; set; }
    }
}

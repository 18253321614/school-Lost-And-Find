using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace LostAndFind_of_School.Models
{
    public class LostItems
    {
        public int ID { get; set; }

        public string itemName { get; set; }

        public string itemInfo { get; set; }

        public string itemImg { get; set; }

        public int UserID { get; set; }

        public int check { get; set; }

        public int type { get; set; }

        [DataType(DataType.Time)]
        public DateTime releaseTime { get; set; }
    }
}
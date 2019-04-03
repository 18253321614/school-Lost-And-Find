using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace LostAndFind_of_School.Models
{
    public class User
    {
        public int ID { get; set; }

        [Required]
        [Display(Name = "昵称")]
        public string nickName { get; set; }

        public string headImg { get; set; }

        public string realName { get; set; }

        public int Gender { get; set; }
        [Required]
        [StringLength(20)]
        public string stuNumble { get; set; }

        public string college { get; set; }

        public string password { get; set; }

        public string contact { get; set; }

        public string userInfo { get; set; }

        //public virtual ICollection<LostItems> LostItems { get; set; }
    }
}
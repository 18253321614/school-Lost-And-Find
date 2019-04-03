using LostAndFind_of_School.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LostAndFind_of_School.Repositories
{
    interface ILostItemRepository
    {
        //查询所有物品
        IQueryable<LostItems> SelectAll();
        //通过名查询物品
        LostItems SelectByitemName(string itemName);
        //添加物品发布
        void AddItem(LostItems item);
        //删除用物品
        bool DeleteItem(int id);
    }
}

using LostAndFind_of_School.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LostAndFind_of_School.Repositories
{
    interface IUserRepository
    {
        //查询所有用户
        IQueryable<User> SelectAll();
        //通过用户名查询用户
        User SelectByNickName(string nickName);
        //添加用户
        void AddUser(User user);
        //删除用户
        bool DeleteUser(int id);
    }
}

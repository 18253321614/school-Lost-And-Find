using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LostAndFind_of_School.Models;
using LostAndFind_of_School.DAL;

namespace LostAndFind_of_School.Repositories
{
    
    public class UserRepository : IUserRepository
    {
        UserContext db = new UserContext();
        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="user">用户model对象</param>
        public void AddUser(User user)
        {
            db.Users.Add(user);
            db.SaveChanges();
        }


        /// <summary>
        /// 根据用户ID删除用户
        /// </summary>
        /// <param name="id">用户ID</param>
        /// <returns>删除成功返会true，失败返会false</returns>
        public bool DeleteUser(int id)
        {
            var user = db.Users.FirstOrDefault(u=>u.ID==id);
            if (user == null)
            {
                return false;
            }
            else
            {
                db.Users.Remove(user);
                db.SaveChanges();
                return true;
            }
        }


        /// <summary>
        /// 查询所有用户
        /// </summary>
        /// <returns></returns>
        public IQueryable<User> SelectAll()
        {
            return db.Users;
        }


        /// <summary>
        /// 根据昵称查找用户
        /// </summary>
        /// <param name="nickName"></param>
        /// <returns>用户model对象</returns>
        public User SelectByNickName(string nickName)
        {
            return db.Users.FirstOrDefault(u=>u.nickName== nickName);
        }
    }
}
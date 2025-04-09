using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cs2313huangtao_test1
{
    public class images
    {
        protected string[] image;
        protected List<string> imagename=new List<string>();
        protected List<string> imageurl=new List<string>();
        public images() { 
            string[] image = { ".\\image\\东西.jpg", ".\\image\\干大事.jpg" ,".\\image\\拿捏.jpg",".\\image\\睡觉.jpg",".\\image\\听听.jpg"};
            imageurl=image.ToList();
            foreach (string s in image) { imagename.Add(s.Split('\\')[2].Split('.')[0]); }
        }
        public List<string> getimageurl()
        {
            return imageurl;
        }
        public List<string> getimagename() {  return imagename; }
    }
}
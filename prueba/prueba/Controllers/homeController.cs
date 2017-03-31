using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using prueba.Models;

namespace prueba.Controllers
{
    public class homeController : Controller
    {

        // GET: home
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(USUARIOS v)
        {
            
            if (ModelState.IsValid)
            {
                using (GCEntities bd = new GCEntities())
                {
                    var obj = bd.USUARIOS.Where(a => a.NOMBRE.Equals(v.NOMBRE) && a.PASS.Equals(v.PASS)).FirstOrDefault();
                    if (obj != null)
                    {

                        Session["userid"] = obj.ID_USUARIO.ToString();
                        Session["nombre"] = obj.NOMBRE.ToString();
                        return RedirectToAction("userdash","home");

                    }

                }
            
            }   
            return View(v);
        }
    
        public ActionResult userdash(string NOMBRE)
        {
           
            if (Session["userid"] != null)
            {
                return View();

            }
            else
            {
                return RedirectToAction("Index");
               
            }

        }
        
    }
}
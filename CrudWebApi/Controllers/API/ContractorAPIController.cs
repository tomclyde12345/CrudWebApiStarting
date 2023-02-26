using AutoMapper;
using CrudWebApi.DTO;
using CrudWebApi.Models;
using Scrypt;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CrudWebApi.Controllers.API
{
    public class ContractorAPIController : ApiController
    {
        public WebapidbEntities Db = new WebapidbEntities();

        protected override void Dispose(bool disposing)
        {

            Db.Dispose();
        }


        //SAVING CONTRACTOR
        [HttpPost]
        [Route("api/savecontractor/postcontractor")]
        public IHttpActionResult SavingContractor(ContractorDTO contractorDTO)
        {
            var contractor = Mapper.Map<ContractorDTO, NgpContractor>(contractorDTO);

           
            if (contractorDTO.Id == 0)
            {

                contractor.ContractorName = contractorDTO.ContractorName;
                contractor.SiteCode = contractorDTO.SiteCode;
                contractor.ProjectName = contractorDTO.ProjectName;
                contractor.AreaContracted = contractorDTO.AreaContracted;
                contractor.Penro = contractorDTO.Penro;
                contractor.Region = contractorDTO.Region;
                contractor.Year_Estb = contractorDTO.Year_Estb;
                contractor.LocationBarangay = contractorDTO.LocationBarangay;
                contractor.LocationMunicipality = contractorDTO.LocationMunicipality;
                contractor.LocationSitio = contractorDTO.LocationSitio;
                contractor.AddressBarangay = contractorDTO.AddressBarangay;
                contractor.AddressMunicipality = contractorDTO.AddressMunicipality;
                contractor.CenroId = contractorDTO.CenroId;




                Db.NgpContractors.Add(contractor);
            }


            Db.SaveChanges();

            return Ok();

        }

        //SHOWNG DATATABLES
        [HttpGet]
        [Route("api/contractordatable/getcontractordatable")]
        public IHttpActionResult UserDatatable()
        {
            var datatable = Db.NgpContractors.ToList().Select(Mapper.Map<NgpContractor, ContractorDTO>);
            return Ok(datatable);
        }



        //GET DATA ONLY FOR EDIT CONTRACTOR
        [HttpGet]
        [Route("api/editcontractor/geteditcontractor/{id}")]
        public IHttpActionResult GetEditContractor(int id)
        {
            var editcontractor = Db.NgpContractors.SingleOrDefault(c => c.Id == id);
            return Ok(Mapper.Map<NgpContractor, ContractorDTO>(editcontractor));
        }




        //EDIT METHOD FOR  SAVING  CONTRACTOR
        [HttpPost]
        [Route("api/editsavecontractor/posteditsavecontractor/{id}")]
        public IHttpActionResult EditSaveContractor(ContractorDTO contractorDTO)
        {


            if (ModelState.IsValid)
            {
                var contractor = Db.NgpContractors.Single(c => c.Id == contractorDTO.Id);

                contractor.Id = contractorDTO.Id;
                contractor.Year_Estb = contractorDTO.Year_Estb;
                contractor.Region = contractorDTO.Region;
                contractor.Penro = contractorDTO.Penro;
                contractor.SiteCode = contractorDTO.SiteCode;
                contractor.ContractorName = contractorDTO.ContractorName;
                contractor.ProjectName = contractorDTO.ProjectName;
                contractor.AreaContracted = contractorDTO.AreaContracted;
                contractor.AddressMunicipality = contractorDTO.AddressMunicipality;
                contractor.AddressBarangay = contractorDTO.AddressBarangay;
                contractor.LocationMunicipality = contractorDTO.LocationMunicipality;
                contractor.LocationBarangay = contractorDTO.LocationBarangay;
                contractor.LocationSitio = contractorDTO.LocationSitio;
                contractor.CenroId = contractorDTO.CenroId;
             


            }

            Db.SaveChanges();


            return Ok();

        }


    }
}

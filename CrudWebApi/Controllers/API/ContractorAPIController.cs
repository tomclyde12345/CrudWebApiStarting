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
    }
}

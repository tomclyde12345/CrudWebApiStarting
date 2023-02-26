
using AutoMapper;
using CrudWebApi.DTO;
using CrudWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace CrudWebApi.App_Start
{

    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            Mapper.CreateMap<SampleTribe, TribeDTO>().ReverseMap();
            Mapper.CreateMap<NgpRole, RoleDTO>().ReverseMap();
            Mapper.CreateMap<NgpUser, AccountDTO>().ReverseMap();
            Mapper.CreateMap<NgpUpload, UploadDTO>().ReverseMap();
            Mapper.CreateMap<NgpContractor, ContractorDTO>().ReverseMap();
            Mapper.CreateMap<NgpYear, YearDTO>().ReverseMap();
        }
    }
}
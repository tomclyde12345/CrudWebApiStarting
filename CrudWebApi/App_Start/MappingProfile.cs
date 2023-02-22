
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
            Mapper.CreateMap<SampleRole, RoleDTO>().ReverseMap();
            Mapper.CreateMap<SampleUser, AccountDTO>().ReverseMap();
            Mapper.CreateMap<SampleUpload, UploadDTO>().ReverseMap();
            Mapper.CreateMap<NgpContractor, ContractorDTO>().ReverseMap();
        }
    }
}
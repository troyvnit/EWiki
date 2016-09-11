//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EWiki.UnitTest
{
    using System;
    using System.Collections.Generic;
    
    public partial class Archive
    {
        public int Id { get; set; }
        public string ArchiveComment { get; set; }
        public int ArchiveLength { get; set; }
        public Nullable<int> ArchivePageId { get; set; }
        public Nullable<int> ArchiveParentId { get; set; }
        public string BelongToUserId { get; set; }
        public Nullable<int> ContentId { get; set; }
        public string ContentText { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string CreatedUserId { get; set; }
        public bool IsDeleted { get; set; }
        public int NameSpace { get; set; }
        public Nullable<int> ReversionId { get; set; }
        public string Title { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public string UpdatedUserId { get; set; }
    
        public virtual PageContent PageContent { get; set; }
    }
}

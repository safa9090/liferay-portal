create table FragmentCollection (
	fragmentCollectionId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	name VARCHAR(75) null,
	description STRING null
);

create table FragmentEntry (
	fragmentEntryId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	fragmentCollectionId LONG,
	name VARCHAR(75) null,
	css STRING null,
	html STRING null,
	js STRING null,
	htmlPreviewEntryId LONG,
	status INTEGER,
	statusByUserId LONG,
	statusByUserName VARCHAR(75) null,
	statusDate DATE null
);

create table FragmentEntryLink (
	fragmentEntryLinkId LONG not null primary key,
	groupId LONG,
	fragmentEntryId LONG,
	classNameId LONG,
	classPK LONG,
	css STRING null,
	html STRING null,
	js STRING null,
	editableValues STRING null,
	position INTEGER
);
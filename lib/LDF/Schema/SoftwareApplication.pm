package LDF::Schema::SoftwareApplication;

# ABSTRACT: A software application.

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A software application.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<application_category>

C<applicationCategory>

Type of software application, e.g. 'Game, Multimedia'.


A application_category should be one of the following types:

=over

=item C<Str>

=back

=cut

has application_category => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<application_sub_category>

C<applicationSubCategory>

Subcategory of the application, e.g. 'Arcade Game'.


A application_sub_category should be one of the following types:

=over

=item C<Str>

=back

=cut

has application_sub_category => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<application_suite>

C<applicationSuite>

The name of the application suite to which the application belongs (e.g.
Excel belongs to Office).


A application_suite should be one of the following types:

=over

=item C<Str>

=back

=cut

has application_suite => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<available_on_device>

C<availableOnDevice>

Device required to run the application. Used in cases where a specific
make/model is required to run the application.


A available_on_device should be one of the following types:

=over

=item C<Str>

=back

=cut

has available_on_device => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<countries_not_supported>

C<countriesNotSupported>

Countries for which the application is not supported. You can also provide
the two-letter ISO 3166-1 alpha-2 country code.


A countries_not_supported should be one of the following types:

=over

=item C<Str>

=back

=cut

has countries_not_supported => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<countries_supported>

C<countriesSupported>

Countries for which the application is supported. You can also provide the
two-letter ISO 3166-1 alpha-2 country code.


A countries_supported should be one of the following types:

=over

=item C<Str>

=back

=cut

has countries_supported => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<device>



Device required to run the application. Used in cases where a specific
make/model is required to run the application.


A device should be one of the following types:

=over

=item C<Str>

=back

=cut

has device => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<download_url>

C<downloadUrl>

If the file can be downloaded, URL to download the binary.


A download_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has download_url => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<feature_list>

C<featureList>

Features or modules provided by this application (and possibly required by
other applications).


A feature_list should be one of the following types:

=over

=item C<Str>

=back

=cut

has feature_list => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<file_size>

C<fileSize>

Size of the application / package (e.g. 18MB). In the absence of a unit
(MB, KB etc.), KB will be assumed.


A file_size should be one of the following types:

=over

=item C<Str>

=back

=cut

has file_size => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<install_url>

C<installUrl>

URL at which the app may be installed, if different from the URL of the
item.


A install_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has install_url => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<memory_requirements>

C<memoryRequirements>

Minimum memory requirements.


A memory_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has memory_requirements => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<operating_system>

C<operatingSystem>

Operating systems supported (Windows 7, OSX 10.6, Android 1.6).


A operating_system should be one of the following types:

=over

=item C<Str>

=back

=cut

has operating_system => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<permissions>



Permission(s) required to run the app (for example, a mobile app may
require full internet access or may run only on wifi).


A permissions should be one of the following types:

=over

=item C<Str>

=back

=cut

has permissions => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<processor_requirements>

C<processorRequirements>

Processor architecture required to run the application (e.g. IA64).


A processor_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has processor_requirements => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<release_notes>

C<releaseNotes>

Description of what changed in this version.


A release_notes should be one of the following types:

=over

=item C<Str>

=back

=cut

has release_notes => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<requirements>



Component dependency requirements for application. This includes runtime
environments and shared libraries that are not included in the application
distribution package, but required to run the application (Examples:
DirectX, Java or .NET runtime).


A requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has requirements => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<screenshot>



A link to a screenshot image of the app.


A screenshot should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ImageObject']>

=item C<Str>

=back

=cut

has screenshot => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<software_add_on>

C<softwareAddOn>

Additional content for a software application.


A software_add_on should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::SoftwareApplication']>

=back

=cut

has software_add_on => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<software_help>

C<softwareHelp>

Software application help.


A software_help should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=back

=cut

has software_help => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<software_requirements>

C<softwareRequirements>

Component dependency requirements for application. This includes runtime
environments and shared libraries that are not included in the application
distribution package, but required to run the application (Examples:
DirectX, Java or .NET runtime).


A software_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has software_requirements => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<software_version>

C<softwareVersion>

Version of the software instance.


A software_version should be one of the following types:

=over

=item C<Str>

=back

=cut

has software_version => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<storage_requirements>

C<storageRequirements>

Storage requirements (free space required).


A storage_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has storage_requirements => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<supporting_data>

C<supportingData>

Supporting data for a SoftwareApplication.


A supporting_data should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DataFeed']>

=back

=cut

has supporting_data => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'SoftwareApplication' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { applicationCategory => 'application_category' },
      { applicationSubCategory => 'application_sub_category' },
      { applicationSuite => 'application_suite' },
      { availableOnDevice => 'available_on_device' },
      { countriesNotSupported => 'countries_not_supported' },
      { countriesSupported => 'countries_supported' },
      { device => 'device' },
      { downloadUrl => 'download_url' },
      { featureList => 'feature_list' },
      { fileSize => 'file_size' },
      { installUrl => 'install_url' },
      { memoryRequirements => 'memory_requirements' },
      { operatingSystem => 'operating_system' },
      { permissions => 'permissions' },
      { processorRequirements => 'processor_requirements' },
      { releaseNotes => 'release_notes' },
      { requirements => 'requirements' },
      { screenshot => 'screenshot' },
      { softwareAddOn => 'software_add_on' },
      { softwareHelp => 'software_help' },
      { softwareRequirements => 'software_requirements' },
      { softwareVersion => 'software_version' },
      { storageRequirements => 'storage_requirements' },
      { supportingData => 'supporting_data' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
